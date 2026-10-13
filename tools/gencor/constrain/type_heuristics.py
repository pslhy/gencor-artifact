"""Implementation-specific heuristics for TypeScript semantic checking.

The paper-facing selector is ``TypeSemanticConstrain.symbols_to_check`` and
implements paper section 5.2, Equation (4), directly from the parser attribute
view. This module is intentionally separate: it contains TypeScript- and
benchmark-specific policies layered around analysis, including write diagnostics,
parameter/arrow cover handling, @TBOUND, span suppression, and defer markers.

Keeping these policies here makes it explicit which code is an implementation
refinement rather than part of `SymbolsToCheck` itself.
"""

from dataclasses import dataclass, field, replace as _dc_replace


KIND_EXPR_ACTIVE = "expr_active"
KIND_EXPR_REDUCED = "expr_reduced"
KIND_TBOUND = "tbound"


@dataclass
class TypeSemanticCheckResult:
    """Heuristic-lowered checks consumed by TypeSemanticConstrain.analyze."""

    terminal_seq: list
    check_items: list = field(default_factory=list)
    rejected: bool = False
    source_text: str = ""
    source_closure: str = ""


_FUNCTION_COVERAGE_CODES = {
    2355,
    2366,
    7030,
}

_TYPE_READING_SYMS = frozenset({
    "type_ref", "grouped_type", "primary_type", "union_type",
    "postfix_type", "function_type", "type",
})

# Experimental implementation policy; deliberately outside the paper selector.
FORCE_GENERIC_PARAM_ANNOTATION = True


def _terminal_delimiter_closure(terminals):
    """Close the candidate's unmatched delimiters from parser terminals.

    Literal contents are atomic terminals, so punctuation inside a string,
    template, or regexp cannot be mistaken for source-level delimiters.
    """
    stack = []
    matching_open = {")": "(", "]": "[", "}": "{"}
    matching_close = {"(": ")", "[": "]", "{": "}"}
    for terminal in terminals:
        value = str(terminal.value).strip()
        if value in matching_close:
            stack.append(value)
            continue
        expected_open = matching_open.get(value)
        if expected_open is None:
            continue
        if stack and stack[-1] == expected_open:
            stack.pop()
    return "".join(matching_close[value] for value in reversed(stack))


class TypeHeuristics:
    """Apply refinements and lower raw attribute occurrences into type checks.

    `owner` is the TypeSemanticConstrain instance.  Its oracle and item-builder
    helpers are reused through `__getattr__`; policy remains physically and
    conceptually separate from the paper-level selector without duplicating the
    TypeScript checker implementation.
    """

    def __init__(self, owner):
        self._owner = owner

    def __getattr__(self, name):
        return getattr(self._owner, name)

    # tsc target-semantics codes that depend ONLY on the LHS (dummy RHS is exact):
    # 2364 invalid assignment target, 2357 invalid inc/dec operand, 2540 readonly
    # property, 2542 readonly index signature, 2588 const, 2779 optional chain.
    _WRITE_TARGET_CODES = frozenset({2364, 2357, 2540, 2542, 2588, 2779})

    def _assignment_target_violation(self, items):
        """True iff an ACTIVE Exp item ends in a fresh assignment operator whose
        LHS tsc rejects as a write target (see prepare (0c'))."""
        from constrainers.ts_expr_frontier import extract_frontier_chains
        for it in items:
            if it.kind != KIND_EXPR_ACTIVE or not it.terminals:
                continue
            # Only judge a FRESH operator: one of the item's last two terminals
            # (the forming-`=` two-position discipline), not every RHS step.
            tail_starts = {t.start for t in it.terminals[-2:]}
            probed = set()
            for chain in extract_frontier_chains(it.expr_text, it.terminals):
                for frame in chain.frames:
                    if frame.kind != "assignment_rhs" or frame.start not in tail_starts:
                        continue
                    if frame.lhs_text is None or frame.lhs_start is None:
                        continue
                    key = (frame.lhs_start, frame.end)
                    if key in probed:
                        continue
                    probed.add(key)
                    lhs = frame.lhs_text.strip()
                    base = len(it.code_before_expr)
                    # const rebinding of a bare name: scope-kind ask (cheap,
                    # cached) before the diagnostics probe.
                    if self._is_bare_ident(lhs) and self._binding_kind_is_const(
                            it.code_before_expr + it.expr_text[:frame.lhs_start], lhs):
                        return True
                    probe_code = it.code_before_expr + it.expr_text[:frame.end] + " 0 ;"
                    lo = base + frame.lhs_start
                    hi = base + frame.end
                    for d in self._assignment_target_diags(probe_code):
                        if not isinstance(d, dict):
                            continue
                        if d.get("category") not in (None, "Error"):
                            continue
                        start = d.get("start")
                        if not isinstance(start, int):
                            continue
                        end = start + int(d.get("length") or 0)
                        if end < lo or start > hi:
                            continue
                        code = d.get("code")
                        if not isinstance(code, int):
                            continue
                        if code in self._WRITE_TARGET_CODES or 1000 <= code < 2000:
                            return True
        return False


    def prepare(self, selection):
        view = selection["view"]
        terminal_seq = list(selection["terminal_seq"])
        expressions = selection["expressions"]
        full_tokens = self.terminals + terminal_seq
        full_text, cum, cum_end = self._reconstruct(full_tokens)

        # Additional lineage detail is an implementation policy, not part of
        # the paper's SymbolsToCheck equation. Reuse the unfiltered occurrence
        # snapshot gathered while evaluating that equation instead of walking
        # the same parser attributes again. The fallback keeps direct/unit
        # callers of prepare() compatible without affecting the normal path.
        bnd_occurrences = selection.get("bnd_occurrences")
        if bnd_occurrences is None:
            bnd_occurrences = tuple(
                view.iter_occurrences("bnd", self._bnd_syms)
            )
        bnd_active = {}
        bnd_reduced = {}
        for spos, epos, values in bnd_occurrences:
            target = bnd_active if epos is None else bnd_reduced
            target.setdefault(spos, set()).update(values)
        expr_starts = {spos for spos, _epos, _values in expressions}

        if FORCE_GENERIC_PARAM_ANNOTATION:
            if self._generic_param_annotation_violation(full_tokens, full_text, cum,
                                                        bnd_active, bnd_reduced,
                                                        expressions):
                return TypeSemanticCheckResult(terminal_seq, check_items=[], rejected=True)
        # (0c) INC/DEC WRITE-TARGET probe (user design "reject a readonly LHS
        #      when probing its current type for =/++"): a POSTFIX ++/-- writes the operand on
        #      its left. Probe the write exactly as tsc judges it (a bare `;` seal
        #      after the operator) and reject the operator on 2357 (operand is not a
        #      variable/property), 2540/2542 (readonly), 2588 (const). A PREFIX
        #      `++x` has its operand on the RIGHT: the probe `++ ;` carries no
        #      operand-target error, so the operator itself passes. Same
        #      two-position discipline as the assignment gate below: a forming
        #      operator commits at the next terminal, where it sits at [-2].
        #      (The `=`/compound-assign target check lives in
        #      _assignment_target_violation, driven by the Exp items -- a
        #      declaration initializer's `=` belongs to no Exp item and is never
        #      probed.)
        for wr_i in (len(full_tokens) - 1, len(full_tokens) - 2):
            if wr_i < 1:
                continue
            wr_tok = full_tokens[wr_i]
            if wr_tok.type not in ("INC_OP", "DEC_OP"):
                continue
            probe_code = full_text[:cum_end[wr_i]] + " ;"
            for d in (self._param_gate_diags(probe_code) or ()):
                code = d.get("code") if isinstance(d, dict) else getattr(d, "code", None)
                if code in (2540, 2542, 2588, 2357):
                    return TypeSemanticCheckResult(terminal_seq, check_items=[], rejected=True)
            break
        # (0b) arrow / anonymous-function PARAM gate (spec 7.3/7.4/7.7): reject
        #     while params are being built on excess param COUNT (any step) or a
        #     param TYPE mismatch (','/')' finalizer). A failure kills only the
        #     LAMBDA reading: it rejects the token OUTRIGHT only when no GROUPED
        #     reading of the probed paren is alive (no True bnd lineage inside);
        #     otherwise the kept value-ref items below decide (existential).
        gate_fail, gate_open_i = self._param_gate(full_tokens, full_text, expr_starts)
        if gate_fail:
            # REDUCED-first per position (kind-matched contract): the active
            # entry keeps prediction FOSSILS -- a param-committed ident (reduced
            # {False}) still shows a stale True in active, which wrongly kept
            # "grouped alive" and suppressed the gate's param-close finalize
            # (`map((a: string)` sailed past its ')' to the arrow REDUCE).
            grouped_alive = any(
                True in (bnd_reduced.get(p) if p in bnd_reduced
                         else bnd_active.get(p, ()))
                for p in set(bnd_reduced) | set(bnd_active)
                if gate_open_i is None or p > gate_open_i)
            if not grouped_alive:
                return TypeSemanticCheckResult(terminal_seq, check_items=[], rejected=True)
        # (0d) FUNCTION RETURN-COVERAGE gate. function_decl is accumulated by
        # symbol name; its occurrence supplies the span without a marker attr.
        # A function reduces on the token AFTER its body `}`. Only an occurrence
        # ending immediately before the last token (including $END) belongs to
        # that feed; older accumulated functions must not trigger this gate.
        fd_span = next(
            ((occ.start, occ.end) for occ, _ in view._ps.accumulated_attrs.items()
             if occ.symbol == "function_decl" and occ.end == len(full_tokens) - 2),
            None,
        )
        # At `}` itself the reduction is still pending. Preserve the existing
        # synthetic-`;` lookahead on a copy, so missing returns reject `}` before
        # it commits rather than leaving generation stuck after the function.
        if fd_span is None and terminal_seq and terminal_seq[-1].type == "RBRACE":
            fd_span = self._peek_function_decl_span(
                view._ps, terminal_seq[-1].__class__)
        if fd_span is not None:
            fn_start_char = cum[fd_span[0]]
            diags = self.ts.semantic_diagnostics(full_text)
            for d in diags:
                if d.get("code") in _FUNCTION_COVERAGE_CODES:
                    st = d.get("start")
                    if st is None or st >= fn_start_char:
                        return TypeSemanticCheckResult(
                            terminal_seq, check_items=[], rejected=True)
        items = []
        # (1) every Exp occurrence (xt), outermost-first (accessor sorts by spos).
        expr_occs = [
            (spos, epos, values)
            for spos, epos, values in expressions
        ]
        # A reduced span STRICTLY inside another reduced span is a CONSUMED
        # constituent of an already-completed enclosing expr: the enclosing item
        # carries the slot's expected check (its completed type already reflects
        # the constituent), so re-checking the constituent against a stale
        # (before-text-only) expected ask at LATER steps false-rejects coercions
        # (`( 1 , "x" ) . length`: the last operand `"x"` kept failing `number`
        # at `;` after the WHOLE RHS was already number). Mark it via
        # continued_operand -> well-typedness escape in _interpretations.
        _red_spans = [(s, e) for s, e, _ in expr_occs if e is not None]
        for spos, epos, xt_values in expr_occs:
            # Committed-and-passed reduced spans are final: skip rebuilding the
            # item (and the whole re-analysis). _red_spans above still lists
            # them, so enclosing/contained (continued_operand) classification of
            # OTHER items is unchanged.
            if (epos is not None
                    and self._reduced_span_already_passed((spos, epos))):
                continue
            item = self._build_expr_item(spos, epos, xt_values, full_tokens, full_text,
                                         cum, cum_end, expr_starts,
                                         bnd_active, bnd_reduced, gate_fail)
            if item is not None:
                if (epos is not None and not item.continued_operand
                        and any(s2 <= spos and e2 >= epos and (s2, e2) != (spos, epos)
                                for s2, e2 in _red_spans)):
                    item = _dc_replace(item, continued_operand=True)
                items.append(item)
        # (0c') ASSIGNMENT WRITE-TARGET gate, driven by the CHECK TARGETS (user
        #      design "on =, reject if the LHS is not an assignment target", scoped to the Exp
        #      items SymbolsToCheck exposes): an assignment operator is judged only
        #      where it appears as an `assignment_rhs` frame of an ACTIVE Exp item.
        #      A declaration initializer's `=` (`const m: Map<..> =`, `let u =`,
        #      also inside a callback body) belongs to no Exp item, so it is never
        #      probed -- no declaration/assignment discrimination is needed. tsc
        #      is the oracle: the LHS + operator with a dummy RHS is checked and any
        #      diagnostic INSIDE the LHS..operator range rejects -- syntactic
        #      (1005-family: `a > b =`, `-a =`, `x as any =`, invisible to the
        #      semantic-only reduce check) or target semantics (2364 call /
        #      literal / comma target, 2588 const, 2540/2542 readonly, 2779
        #      optional chain). Destructuring targets and `c ? x : y = v` (tsc
        #      nests the `=` in the branch) pass by construction.
        if self._assignment_target_violation(items):
            return TypeSemanticCheckResult(terminal_seq, check_items=items, rejected=True)
        # Positions where the arrow-param (bnd=False) reading is a PHANTOM (user design:
        # "outside a function argument, if expected is not functional (including
        # absent expected), ignore arrow(False) and treat it as True(value-ref)"): an ACTIVE item none of whose
        # interpretations could accept a function AND that is not in a grouped cover. A
        # trailing bare ident there cannot be an arrow param, so an ambiguous {True,False}
        # lineage is really a value-ref. The TYPE layer enforces it: the value reading
        # (completion-filled reachability) must succeed on its own -- with the arrow
        # route dead there is no param fallback -- so `const flat_list = flat_list`
        # (self-ref candidate dropped) and `= test ` (WS-sealed undefined) reject
        # there. A still-GROWING ident stays prefix-lenient via the completion fill,
        # so `test` on the way to `test_tup` is NOT blocked.
        arrow_dead_spos = {
            it.spos for it in items
            if it.kind == KIND_EXPR_ACTIVE
            and not self._spos_in_potential_arrow(full_tokens, it.spos, expr_starts)
            and not any(e is not None and self._expected_allows_function(e)
                        for e, _ag in self._interpretations(it))
        }
        # COLLAPSE the phantom arrow-param (False) lineage at those positions: with no
        # arrow route the ident IS a value-ref, so set its bnd to {True} (user design
        # "in an expression outside a function argument with nonfunctional expected type, set its ident bnd=true").
        # Downstream consumers of bnd (the generic-annotation forcing's param-lineage
        # test) then see it as a plain value-ref; a genuine callback param (function
        # expected) is NOT arrow-dead, keeps {True,False}, and is left alone.
        for _sp in arrow_dead_spos:
            if bnd_active.get(_sp) and False in bnd_active[_sp]:
                bnd_active[_sp] = {True}
        # An ARROW committing at an arrow-DEAD position: the collapse above said
        # the ident is a value-ref ONLY, so a `=>` right after it tries to USE
        # the dead param reading -- reject the `=>` ITSELF (user design). Left to
        # the arrow's own reduce (2322/2345 at the closer), the model dives into
        # the body and strands there: `every(` (any, ':' forced) pushed the model
        # into `escape(e =>` / `encodeURIComponent(t =>` whose STRING-expected
        # slots accepted the `=>` and junk-grew to timeout (mbpp/222 s3 live).
        # Function-expected and `any` slots are NOT arrow-dead (the ':' forcing
        # owns `any`), and grouped `( x ) =>` covers ride in_potential_arrow.
        if len(full_tokens) >= 2:
            arr_tok = full_tokens[-1]
            if arr_tok.type == "ARROW" or arr_tok.value == "=>":
                p = len(full_tokens) - 2
                prev = full_tokens[p]
                # NOT via arrow_dead_spos: at the ARROW step the active expr item
                # is not built (empty check_items), so evaluate the SAME predicate
                # directly at the param ident -- a bare arrow's param IS its expr
                # start, so the slot's expected type is asked at the ident.
                prev_bnd = (bnd_reduced.get(p) or bnd_active.get(p) or set())
                if (prev.type in self._bnd_syms
                        and self._is_bare_ident(prev.value)
                        # the ident must carry a bnd VALUE lineage -- the RETURN-TYPE
                        # ident of an annotated arrow (`(sum: number): number =>`,
                        # Qwen mbpp/65) is a TYPE-position ident with NO bnd
                        # occurrence and is not a bare param; treating it as one
                        # false-rejected the whole annotated-arrow form.
                        and prev_bnd
                        and not self._spos_in_potential_arrow(full_tokens, p, expr_starts)):
                    expected = self._expected_type_for(full_text[:cum[p]])
                    if not (expected is not None
                            and self._expected_allows_function(expected)):
                        return TypeSemanticCheckResult(terminal_seq, check_items=items, rejected=True)
        # A bnd value-ref FINALIZED by the following terminal (WS/operator/...)
        # at a position with NO live arrow route: it can only be a value
        # reference, so ask its OWN completed type -- do not fill (user design:
        # "when WS follows, query the current type without filling -> undefined error ->
        # reject"). Direct, NOT via the frontier fill: at a bare-WS step no
        # active expr item is built (same as the ARROW step above), so the
        # fill's WS branch never runs and an undefined `t ` committed and
        # whitespace-flooded to timeout (observed live, mbpp/222 s3 inside
        # `encodeURIComponent(t `). Function-expected and `any` slots keep the
        # param future (any is the ':' forcing's domain); member names after
        # `.`/`?.` resolve against the base, not the scope.
        if len(full_tokens) >= 2:
            fin_i = len(full_tokens) - 2
            fin_tok = full_tokens[fin_i]
            fin_vals = bnd_active.get(fin_i) or set()
            if (fin_tok.type in self._bnd_syms
                    and True in fin_vals
                    and fin_i not in bnd_reduced
                    and self._is_bare_ident(fin_tok.value)
                    and not (fin_i > 0
                             and full_tokens[fin_i - 1].type in ("DOT", "OPTIONAL_DOT"))
                    and not self._spos_in_potential_arrow(full_tokens, fin_i, expr_starts)):
                expected = self._expected_type_for(full_text[:cum[fin_i]])
                if not (expected is not None
                        and self._expected_allows_function(expected)):
                    from constrainers.ts_expr_reachability import TypeScriptFrontierTypeOracle
                    oracle = TypeScriptFrontierTypeOracle(self.ts, full_text[:cum[fin_i]])
                    with self.ts.probe_tag("wsfin"):
                        lookup = oracle.completed_type_of_expr(fin_tok.value.strip())
                    for d in (getattr(lookup, "diagnostics", ()) or ()):
                        code = (d.get("code") if isinstance(d, dict)
                                else getattr(d, "code", None))
                        if code in (2304, 2552, 2593, 2448):
                            return TypeSemanticCheckResult(
                                terminal_seq, check_items=items, rejected=True)
        # A member-access DOT on a `never` base (user design "block '.' when
        # the base type is never"): NO member exists on never -- tsc reports 2339 for
        # EVERY name -- so the dot itself is the problem-introducing token.
        # Left accepted, the model strands INSIDE the member position with zero
        # valid continuations (observed mbpp/788: a redundant typeof guard on a
        # plain `string` typed the else-branch ident `never`; `item.` committed
        # and whitespace-flooded to timeout while only `: item` was legal).
        if full_tokens and full_tokens[-1].type in ("DOT", "OPTIONAL_DOT"):
            from constrainers.ts_expr_frontier import extract_frontier_chains
            from constrainers.ts_expr_reachability import TypeScriptFrontierTypeOracle
            for it in items:
                if it.kind != KIND_EXPR_ACTIVE:
                    continue
                txt = it.expr_text or ""
                if not txt.rstrip().endswith((".", "?.")):
                    continue
                for ch in extract_frontier_chains(txt):
                    fr_leaf = ch.frontier
                    if (fr_leaf.kind == "complete_expr"
                            and fr_leaf.base_kind == "member"
                            and fr_leaf.base_text):
                        oracle = TypeScriptFrontierTypeOracle(
                            self.ts, it.code_before_expr + txt[:fr_leaf.start])
                        lk = oracle.actual_type_of_expr(fr_leaf.base_text)
                        if (getattr(lk, "ok", False)
                                and (lk.type_text or "").strip() == "never"):
                            return TypeSemanticCheckResult(
                                terminal_seq, check_items=items, rejected=True)
        # NAME checks are NOT run as a separate pass (user design "handle name checking
        # inside the type layer"): undefined / self-ref value-refs are caught
        # by the type layer itself --
        #   * a FINALIZED ident in the fixed part (binary LHS `isFinit &&`, a
        #     WS-sealed `test `) hard-fails its type lookup on the name codes
        #     2304/2552/2593/2448 (_binary_lhs_type; the ident_prefix WS branch in
        #     candidates_for_frontier), so the finalizing token rejects;
        #   * an undefined CALLEE / member / index BASE fails its base lookup
        #     (zero candidates) at the `(`/`.`/`[`;
        #   * the still-GROWING last ident fills from scope completions -- a junk
        #     prefix has no candidate and rejects, a self-ref candidate is dropped
        #     by the 2448/7022 probe (candidates_for_frontier) -- while a base of
        #     type `any` always accepts (call/member/index any rules).
        # (1d) TRAILING ident RESERVED-WORD gate. This is the ONE name-shaped
        #      check that cannot live in the type layer: a reserved keyword
        #      (`switch`/`case`/...) lexed as a bare ident parses as VALID tsc
        #      code, so no diagnostic and no completion mismatch ever fires
        #      (HumanEval/105). Everything else about the trailing ident
        #      (junk prefix, undefined name, self-ref) is handled by the
        #      completion-filled reachability check -- see the note above.
        if full_tokens:
            fin_i = len(full_tokens) - 1
            fin_tok = full_tokens[fin_i]
            vals = bnd_active.get(fin_i)
            if (fin_tok.type in self._bnd_syms
                    # VALUE-ref / param lineage only -- a TYPE-position ident
                    # (`arr: number`, `: string`) carries no True/False bnd (it is
                    # @TBOUND's domain), and `number`/`string`/... are keyword-kind
                    # completions there, so without this guard the reserved-word
                    # block below false-rejected valid type annotations.
                    and vals and (True in vals or False in vals)
                    and self._is_bare_ident(fin_tok.value)
                    and not (fin_i > 0
                             and full_tokens[fin_i - 1].type in ("DOT", "OPTIONAL_DOT"))
                    # TYPE-POSITION two-path (user design, mirrors bnd value-vs-param):
                    # inside a `( ` in a TYPE position both grouped_type (`( type )`,
                    # ident = type NAME) and function_type (`( param )`, ident = param)
                    # are predicted, but only the param reading's bnd=False surfaces
                    # immediately (type_ref's tbnd lags to its reduce). So a valid
                    # primitive type (`( number )`, `( string )`) was hit by the
                    # reserved-word block as a bogus param name. When a type reading
                    # is still live here, SKIP the value/param name checks -- the
                    # @TBOUND (tbound) item judges the name as a TYPE (`number` valid;
                    # `( Foo )` still 2304 there). `(number | number[])[]` etc. now
                    # generate.
                    and not view.has_active_symbol(_TYPE_READING_SYMS, fin_i)):
                spos_char = cum[fin_i]
                ident = fin_tok.value.strip()
                # A hard-reserved keyword (`switch`/`case`/... not covered by the
                # grammar) may still be lexed as IDENT, but can be neither a value
                # reference nor a parameter name. The scanner's fixed reserved set
                # catches it without a TypeScript completion request.
                if self._ident_is_reserved_word(full_text[:spos_char], ident):
                    return TypeSemanticCheckResult(terminal_seq, check_items=items, rejected=True)
        # (2) @TBOUND type-name refs (tbnd). value/member name errors are NOT
        #     separately name-checked -- handled implicitly by reachability
        #     completion (spec lines 15-16); bnd is consumed inside the frontier.
        items.extend(self._build_tbound_items(view, terminal_seq, full_text, cum, full_tokens, cum_end))
        # (2b) spec 7.4 grouped-vs-arrow, bnd-based (user design): a bare-identifier
        #      expr item in a cover paren is judged by its GRAMMAR lineages --
        #      grouped-committed idents are value-refs and ARE checked (prefix
        #      while active, exact once reduced), param-committed idents are
        #      bindings (gate's domain), and a still-ambiguous ident passes if
        #      EITHER reading does. See _cover_value_ref_drop. (The old token-shape
        #      rule deferred every open cover paren wholesale; the annotation-forced
        #      grammar made bnd authoritative -- the bare arrow production that
        #      poisoned it with spurious False lineages is gone.)
        items = [
            it for it in items
            if not (it.kind in (KIND_EXPR_ACTIVE, KIND_EXPR_REDUCED)
                    # the deferral question ("value-ref or a future param?") only
                    # exists for a TERMINAL that can be a binding name -- judge by
                    # the token TYPE (user design "inspect the terminal type"), not the text
                    # shape: the NULL literal's text matches the ident regex and
                    # slipped in here (mbpp/440 `return null;`).
                    and full_tokens[it.spos].type in self._bnd_syms
                    and self._is_bare_ident(it.expr_text)
                    and self._cover_value_ref_drop(it.kind, it.spos, full_tokens,
                                                   bnd_active, bnd_reduced, gate_fail,
                                                   expr_starts))
        ]
        # (2c) ARROW-STARTABLE marking (user design, expr-position bnd=false = param):
        #      the TRAILING token of the active frontier carries a bnd=False lineage
        #      => it MAY be a bare arrow's param (`... map(x` -> `map(x => ...)`). Mark
        #      ACTIVE items so _analyze_active can, when the value-ref reading fails,
        #      validate the ARROW reading via the param gate (a fresh single/multi
        #      bare param yields a clean callback). Only the trailing (candidate) token
        #      matters -- an inner already-committed ident is decided by its own reduce.
        trail_i = len(full_tokens) - 1
        trail_arrow = (trail_i >= 0
                       and full_tokens[trail_i].type in self._bnd_syms
                       and False in bnd_active.get(trail_i, set()))
        # in_potential_arrow is INDEPENDENT of trail_arrow: an active span sits in
        # a live arrow-capable cover regardless of whether the trailing token is a
        # bnd ident. In particular a JUST-CLOSED single-param cover `( a )` (trailing
        # is `)`, not an ident) is still a potential arrow param list -- without
        # this it false-rejected the `)` of `let y: any = (a) => a` once `any`
        # stopped carrying the accepts_any escape (ag) [any removed from
        # _NO_EXPECTED]. The bare-ident case is unaffected: a bare `badVar` has no
        # enclosing cover, so _spos_in_potential_arrow is False and the value-ref
        # name check still rejects it AT the ident (HumanEval/106).
        for it in items:
            if it.kind == KIND_EXPR_ACTIVE:
                it.in_potential_arrow = self._spos_in_potential_arrow(
                    full_tokens, it.spos, expr_starts)
        if trail_arrow:
            arrow_probe = self._arrow_reading_probe(full_tokens, full_text)
            for it in items:
                if it.kind == KIND_EXPR_ACTIVE:
                    it.arrow_startable = True
                    it.arrow_probe = arrow_probe
        # (2d) SPAN-level PARAM fallback (user design: two-path existential for
        #      COMPOUND spans, not only bare idents): an ACTIVE span whose param
        #      lineage is still alive (ambiguous -- e.g. `([a,b]:` while the
        #      cover paren is open) passes if EITHER reading does. The PARAM
        #      reading is exactly what _param_gate probed THIS step (close the
        #      mismatched pairs + `=> undefined as any`): gate passed => the
        #      param reading is viable, so a VALUE-reading failure of the span
        #      (e.g. the frontier misreading `[a,b] :` as a conditional) must
        #      not reject the token. Robust to prediction fossils: even if a
        #      param-committed span is misread as ambiguous, value-fail ->
        #      param-fallback -> accept. Sound: undefined VALUE-refs are still
        #      rejected by the (1b) True-only reduced name check / their own
        #      reduced items, which the fallback does not touch.
        if not gate_fail:
            for it in items:
                if it.kind != KIND_EXPR_ACTIVE or it.arrow_startable:
                    continue
                # ONLY spans inside a live potential-arrow COVER get the param
                # fallback: the {True,False} ambiguity is a genuine param future
                # only there. A bare span at the top of an expression (`s % ...`,
                # `s < ...`) reads {True,False} too -- from the STALE bare-single-
                # arrow fossil left when its lead ident was first shifted (`s`
                # could have been `s => ...`) -- but a binary operator has since
                # KILLED that arrow reading. Left ungated, param_fallback let such
                # a span pass even when reachability rejected it (type-s0
                # HumanEval/113: `char % 2` where char is string -> string is an
                # invalid `%` LHS, reachability said unreachable, but the fossil
                # param_fallback accepted it, so the model built `char % 2 ===
                # 1.0015...` and looped on digits to timeout).
                if not self._spos_in_potential_arrow(full_tokens, it.spos, expr_starts):
                    continue
                vals = self._span_bnd_vals(it.kind, it.spos, full_tokens,
                                           bnd_active, bnd_reduced, expr_starts)
                if vals and False in vals and True in vals:
                    it.param_fallback = True
        # (3) honor defer (empty in first cut): drop ACTIVE items at a deferred
        #     spos; reduced items always kept.
        if self.deferred_spos:
            items = [it for it in items
                     if not (it.kind == KIND_EXPR_ACTIVE and it.spos in self.deferred_spos)]
        return TypeSemanticCheckResult(
            terminal_seq,
            check_items=items,
            source_text=full_text,
            source_closure=_terminal_delimiter_closure(full_tokens),
        )
