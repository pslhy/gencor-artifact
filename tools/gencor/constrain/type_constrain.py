"""TypeScript sem-lark analyzer for attribute-guided type filtering.

The implementation is intentionally split along the paper's boundary:

* ``symbols_to_check()`` is the paper-facing *what/when* selector. It implements
  section 5.2, Equation (4), directly from the sem-lark attribute view: every
  ``bnd=True`` identifier and every expression occurrence are returned. ``xt``
  controls expected-type semantics, not selection.
* :mod:`constrain.type_heuristics` contains implementation refinements
  that are not part of ``SymbolsToCheck``: assignment/write diagnostics,
  parameter and arrow-cover handling, @TBOUND, span suppression, and defer
  policy.  It lowers the immutable selection snapshot into ``TypeCheckItem``s.
* This module owns the *how*: reduced expressions use assignability, active
  expressions use frontier reachability, and type-name items use completion.

Expression spans are parser terminal-index spans.  A defined ``epos`` means the
occurrence reduced; ``epos=None`` means it remains active.  Concrete type facts
are delegated to the TypeScript compiler API and ``ts_expr_*`` helpers.

See ``docs/sem_type_symbol_selection_ko.md`` for the paper-to-code map and the
explicit list of post-selection policies.
"""

import os
import re
import time
from dataclasses import dataclass
from typing import Optional

from constrain.type_heuristics import (
    KIND_EXPR_ACTIVE,
    KIND_EXPR_REDUCED,
    KIND_TBOUND,
    TypeHeuristics,
    TypeSemanticCheckResult,
)

_BARE_IDENT_RE = re.compile(r"[A-Za-z_$][A-Za-z0-9_$]*")

# Keywords that directly precede an expression. If one ends up as the LAST token of
# a reconstructed code_before (e.g. `return"x"` joins with no space), TS
# getContextualType cannot distinguish the bare keyword from an identifier at EOF
# and returns NO contextual type -- silently dropping the expected-type check
# (return-type / typeof / etc.). _reconstruct always separates them from the next
# token. (audit finding: function return-type mismatches were accepted.)
_EXPR_PREFIX_KEYWORDS = frozenset({
    "return", "typeof", "await", "void", "delete", "new",
    "throw", "yield", "case", "in", "of", "instanceof",
})

# STATEMENT keywords that can never begin an expression value. An Exp occurrence
# whose span STARTS at one is spurious (the statement's real expr is surfaced as a
# separate occurrence one terminal later, with the proper expected type). Such an
# item also probes a malformed `((return <expr>) as any)` fragment that makes TS
# error-recover very slowly -- the single biggest probe cost in a return body.
# Statement / control-flow keywords that can NEVER begin an expression value. An
# Exp occurrence whose span starts at one of these is a span-extraction artifact
# (the statement's real sub-expressions -- condition, iterable, body -- surface as
# separate occurrences with correct spans + expected types), so the item is dropped.
# NOTE: deliberately excludes NEW/FUNCTION (start expressions) and LET/CONST/AS/OF
# (decl/operator keywords the oracle already handles correctly as bindings).
_STMT_KEYWORD_TYPES = frozenset({
    "RETURN", "THROW",
    "IF", "ELSE", "FOR", "WHILE", "DO", "TRY", "CATCH", "BREAK", "CONTINUE",
    # Declaration keywords: `const result: string` inside a block surfaces a
    # spurious active Exp spanning from the keyword whose reachability probe (of a
    # declaration fragment, not an expression) is context-dependent and wrongly
    # False -> rejects the type name and derails the model off `const x: T = ...`.
    # A declaration can't begin an expression; its VALUE (`= expr`) is surfaced as
    # its own occurrence with the correct expected type, so nothing is lost.
    "LET", "CONST",
    # Line comments are statements here (line_comment_stmt); an Exp span starting at
    # one can't be an expression -> drop it (defensive; the primary line-comment fix
    # is the newline in _reconstruct). NOTE: `/* */` block comments are mis-lexed as
    # REGEX_LITERAL by the legacy lexer, so they are NOT caught here (a real regex
    # literal IS an expression, so it cannot be skipped) -- that is a separate
    # lexer-priority grammar issue.
    "LINE_COMMENT",
})

# A `{` begins the only expression that can start with a brace: an object literal
# (`{ key : expr , ... }`). Everywhere else a `{` opens a STATEMENT BLOCK. JS/TS
# disambiguates purely by the preceding token: after any of these, a `{` is a
# block (loop/if/function/arrow body, nested block, ...), never an object literal.
# An active Exp occurrence tagged at such a block-opening `{` is a dead
# object-literal prediction lingering on the parse stack; its (unstable)
# reachability verdict would wrongly reject the block open and every token inside
# it. Dropping it loses NO check -- the block's real sub-expressions reduce and are
# checked individually. A genuine object literal is only ever preceded by an
# expression-context token (= ( [ , : return operator ...), none of which appear
# here, so no real object-literal check is ever dropped (no false-accept).
_BLOCK_BRACE_PRECEDERS = frozenset({
    "RPAR", "RBRACE", "LBRACE", "SEMICOLON", "ARROW", "ELSE", "DO", "TRY",
})

# Built-in primitive type names that are UNCONDITIONALLY valid at any type position
# (spec 7.6 @TBOUND). Typing one of these -- or a prefix of one -- is always a
# viable type name, so we accept it WITHOUT an inspect() round-trip (the single
# biggest per-token cost on typed code: `: number` cost ~150ms of pure oracle IPC).
# SOUND: these types always exist, so skipping the completion check can only avoid
# a true-accept, never create a false-accept. A non-builtin prefix (user type / typo)
# still falls through to the real inspect check.
_BUILTIN_TYPE_NAMES = (
    "number", "string", "boolean", "void", "null", "undefined", "never",
    "unknown", "any", "object", "bigint", "symbol", "true", "false",
)

# TS "Expected N arguments, but got M." (code 2554). We reject an in-progress call
# ONLY when it is OVER-full (M > N) -- that is unfixable by adding more args, so the
# arg that pushes the count past the arity must be blocked NOW, while `)` (a valid
# shorter call, aided by the argument_list trailing-comma escape) is still open. An
# UNDER-full call (M < N) is NOT rejected: more args can still come. The excess of a
# COMPLETE call is still caught at reduce; this only moves the OVER-full verdict
# earlier, off the active arg, so the model is steered to close instead of derailing.
_ARG_COUNT_RE = re.compile(r"Expected (\d+)(?: or more)? arguments?, but got (\d+)")


def _diag_is_excess_arg(diagnostics):
    """True iff some diagnostic is a 2554 arg-count error with got > expected
    (too MANY). Distinguishes from too-few (got < expected) via the message."""
    for d in diagnostics or ():
        if not isinstance(d, dict) or d.get("code") != 2554:
            continue
        m = _ARG_COUNT_RE.search(d.get("message") or d.get("messageText") or "")
        if m and int(m.group(2)) > int(m.group(1)):
            return True
    return False


def _diag_is_param_excess(diagnostics):
    """True iff some diagnostic says a callback/arrow/function has MORE parameters
    than its contextual signature provides (excess PARAMS). TS phrases this as a
    2345 with "Target signature provides too few arguments." -- distinct from a
    param-TYPE mismatch ("...parameters ... are incompatible")."""
    for d in diagnostics or ():
        if not isinstance(d, dict) or d.get("code") != 2345:
            continue
        if "provides too few arguments" in (d.get("message") or d.get("messageText") or ""):
            return True
    return False


# TS "Expected N type arguments, but got M." (2558) / ranged "Expected N-K ...".
# Mirrors the CALL argument-count gate (_ARG_COUNT_RE/2554): an OVER-full type
# argument list can never be fixed by typing more, so the finalizer that commits the
# excess is rejected; an UNDER-full list is only wrong once the `>` closes it (a `,`
# can still add arguments).
_TYPE_ARG_COUNT_RE = re.compile(r"Expected (\d+)(?:-(\d+))? type arguments?, but got (\d+)")


def _diag_type_arg_count(diagnostics):
    """(got, max_expected) from a 2558 type-argument-count diagnostic, or None.
    2743 ("No overload expects N type arguments") is reported as (got, None) --
    a count problem whose direction is unknown (treated as under-full: more
    arguments may fix it)."""
    for d in diagnostics or ():
        if not isinstance(d, dict):
            continue
        if d.get("code") == 2558:
            m = _TYPE_ARG_COUNT_RE.search(d.get("message") or d.get("messageText") or "")
            if m:
                lo = int(m.group(1))
                hi = int(m.group(2)) if m.group(2) else lo
                return int(m.group(3)), hi
        if d.get("code") == 2743:
            return (None, None)
    return None


def _diag_type_arg_type_error(diagnostics):
    """True iff a diagnostic reports a TYPE error on a type argument -- 2344
    ("Type 'X' does not satisfy the constraint 'Y'"). The generic gate checks this
    ONLY at a finalizer (',' / '>'), mirroring the lambda/function param-TYPE gate:
    a still-being-typed name (`num`) may extend to a valid one (`number`)."""
    for d in diagnostics or ():
        if isinstance(d, dict) and d.get("code") == 2344:
            return True
    return False


def _diag_is_param_type_mismatch(diagnostics):
    """True iff a 2345 reports a param TYPE incompatibility between the arrow/function
    param and the contextual signature ("Types of parameters ... are incompatible").
    Distinct from param-count excess ("provides too few arguments")."""
    for d in diagnostics or ():
        if not isinstance(d, dict) or d.get("code") != 2345:
            continue
        msg = d.get("message") or d.get("messageText") or ""
        if "provides too few arguments" in msg:
            continue
        if "are incompatible" in msg or "Types of parameters" in msg:
            return True
    return False


from constrain.semantic_constrain import SemanticConstrain


# expectedType strings meaning "no real contextual type" (spec 5 / ts_expr_context).
# `any` and `unknown` are NOT lumped in here: such a slot DOES carry a (trivially
# accept-all) expected type, and keeping it as `'any'`/`'unknown'` -- rather than
# collapsing to None/accepts_any -- lets the arrow-route guard see a concrete
# non-function expected and drop the phantom arrow reading, so an undefined bare
# ident (`result[i] = factorialXyz...`, HumanEval/106 for any; a filter/map
# callback body whose predicate return is `unknown`, HumanEval/108 for unknown)
# is rejected AT the ident by the value-ref name check instead of leaking to the
# reduce. `assignable(x, 'any'|'unknown')` is always True, so no value is
# false-rejected; only a BARE arrow to such a slot (`let x: any = a => a`) is
# lost, which is the accepted trade (grouped `(a) => a` still works).
_NO_EXPECTED = {None, ""}

# NAME-resolution diagnostics (2304/2552 unknown name, 2593 test-runner variant,
# 2448 TDZ self-reference) are enforced by the TYPE layer, not a name pass here:
# see ts_expr_reachability._binary_lhs_type (fixed-operand hard-fail), the
# ident_prefix whitespace-finalized lookup, and the self-ref completion probe in
# candidates_for_frontier.

# TS completion `kind`s that denote a TYPE at a type position (spec 7.6 @TBOUND).
# Primitives (string/number/boolean/void/never/unknown/object/...) are kind
# "keyword"; named types are type/interface/class/enum; namespaces are "module".
# "var"/value kinds are EXCLUDED so a value name is never accepted as a type.
_TYPE_COMPLETION_KINDS = {"type", "interface", "class", "enum", "keyword", "module"}

# Built-in globals declared `declare var X: XConstructor` whose SAME-NAME interface
# makes them valid TYPE names (declaration merging). Their completions surface as
# kind='var' (with no type text in the raw entries), so the @TBOUND type-name check
# recognizes this fixed lib set explicitly.
_BUILTIN_CTOR_TYPE_NAMES = frozenset({
    "Array", "Map", "Set", "WeakMap", "WeakSet", "Promise", "Date", "RegExp",
    "Error", "Object", "Number", "String", "Boolean", "Function", "Symbol",
    "BigInt", "Math", "JSON",
})

# Completion kinds that name a VALUE binding a bare identifier reference can
# resolve to (probed live: params surface as 'parameter', locals as
# 'const'/'let'/'local var', lib globals as 'var'/'function', namespaces with a
# value side as 'module' (e.g. Intl), classes/enums are value refs too).
# 'keyword' is EXCLUDED on purpose: an IDENT-typed candidate can never become a
# keyword -- keyword readings ride their own transducer candidates.
_VALUE_COMPLETION_KINDS = {
    "var", "let", "const", "function", "local var", "local function",
    "parameter", "alias", "class", "enum", "module",
}

# Mirrors TypeScript's scanner range FirstReservedWord..LastReservedWord.
# Grammar-covered keywords normally arrive through dedicated terminals; this set
# catches hard-reserved words that the subset grammar can still lex as IDENT.
# Contextual/type keywords such as ``async``, ``type``, ``from``, and ``number``
# are deliberately absent because they may be legal identifiers here.
_TS_HARD_RESERVED_WORDS = frozenset({
    "break", "case", "catch", "class", "const", "continue", "debugger",
    "default", "delete", "do", "else", "enum", "export", "extends",
    "false", "finally", "for", "function", "if", "import", "in",
    "instanceof", "new", "null", "return", "super", "switch", "this",
    "throw", "true", "try", "typeof", "var", "void", "while", "with",
})

@dataclass
class TypeCheckItem:
    kind: str
    spos: int                            # terminal index (Exp start / TBOUND index)
    epos: Optional[int]                  # terminal index (Exp end), None for active
    code_before_expr: str                # full source char-sliced [:spos_char]
    expr_text: str                       # active: [spos_char:]; reduced: [spos_char:epos_char]
    terminals: tuple                     # frontier-LOCAL ExprTerminals (rebased to spos_char)
    xt_values: frozenset                 # the read xt lineage(s): {True}/{False}/{True,False}
    expected_type: Optional[str] = None  # contextual type when an xt=True lineage exists
    expected_types: Optional[tuple] = None  # overload-candidate expected types at a DIRECT
                                         # call-argument position (contextual excluded;
                                         # _interpretations APPENDS them to the single
                                         # contextual pair -- the arg passes if it fits
                                         # ANY member). None = no candidate info (not a
                                         # call arg / no overload set) -> single path
    target_prefix: Optional[str] = None  # TBOUND: the partial type-name being typed
    arrow_startable: bool = False        # the active expr's trailing ident carries a
                                         # bnd=False (arrow-param) lineage -> it MAY be a
                                         # bare arrow's param (`x => ...`); if the value-
                                         # ref reading fails, _analyze_active validates
                                         # the arrow reading via the param gate (user
                                         # design: expr-position bnd=false = param)
    arrow_probe: Optional[str] = None    # the PAIR-AWARE synthetic completion for that
                                         # param reading (built at item time from the
                                         # token stream -- `( [ a` probes
                                         # `( [ a ] ) => undefined as any`; bare `map(x`
                                         # probes `map(x => undefined as any)`)
    param_fallback: bool = False         # SPAN-level two-path (user design): this ACTIVE
                                         # span's param lineage is still alive AND the
                                         # param gate passed this step -- a VALUE-reading
                                         # failure must not reject (the param reading,
                                         # probed by the gate's close-pairs+arrow
                                         # completion, is viable)
    in_potential_arrow: bool = False     # spos sits in a GROUPED cover paren (defers to
                                         # accepts_any) -> the arrow route is kept even
                                         # against a concrete non-function expected
                                         # (user design: "keep grouped expressions when they are outermost")
    in_call_arg: bool = False            # spos sits inside an (unclosed) call argument
                                         # list -> an active arg is eligible for the
                                         # excess-argument (2554 "got > expected") gate
    call_structure_changed: bool = False # the current candidate terminals started a
                                         # top-level call argument or added a top-level
                                         # comma. Only those events can introduce a
                                         # newly excessive argument count.
    tbound_exact: bool = False           # TBOUND: the type name is COMPLETE (a token
                                         # already follows it) -> require an EXACT type
                                         # match, not just a prefix (`numb` -> reject)
    wrapped_operand: bool = False        # REDUCED: this span is redundantly wrapped by
                                         # a grouping `( ... )` -> its expected-type is
                                         # deferred to the enclosing group / expression
                                         # (well-typedness only here); see
                                         # _reduced_is_grouped_operand
    objlit_dead: bool = False            # ACTIVE `{`: object-literal open against a
                                         # concrete non-object expected type -> no
                                         # object literal can be assignable, reject the
                                         # open (see _expected_admits_object)
    spread_operand: bool = False         # the Exp is a SPREAD operand (`...expr`): its
                                         # expected-type from the position is the ELEMENT
                                         # type, but the operand is the ARRAY -> defer to
                                         # well-typedness; the enclosing call/array reduce
                                         # enforces the real spread assignability
    spread_lit_elem: bool = False        # the Exp is an ELEMENT of an array literal
                                         # that is itself a spread operand (`[...[HERE`):
                                         # the TS hole leaks the ARRAY type there, so
                                         # checks also try the unwrapped element type
    open_arr_elem: bool = False          # the Exp sits inside a STILL-OPEN array
                                         # literal: the hole leaks the OUTER contextual
                                         # type onto the element -> its expected check
                                         # is deferred to the array's own REDUCE
    grouped_operand: bool = False        # REDUCED: the span is a DIRECT operand slot of
                                         # a grouping-paren comma list (right after a
                                         # grouping `(` or a `,` inside one). While its
                                         # sole/last-vs-non-last reading is undecided the
                                         # grammar surfaces xt={T,F}; with False a live
                                         # future (non-last operand = NO expected type,
                                         # grouped_expr_list xt{false,0}) a well-typedness
                                         # escape is added -- the enclosing group's own
                                         # REDUCE re-enforces the expected type if the
                                         # sole/last reading wins (deciding-token rule).
                                         # Call `(` excluded: args keep their own check.
    continued_operand: bool = False      # REDUCED: the NEXT terminal extends the
                                         # expression (`.` `(` `[` binary op `as` `?`
                                         # ...) -> the span is a consumed constituent,
                                         # not the slot's final value; its expected
                                         # check defers to the enclosing expr's own
                                         # finalizer (well-typedness escape added).
    generic_probe: Optional[str] = None  # generic construct type-args gate (the call-
                                         # argument gate's analogue): the UNCLIPPED
                                         # active text `new X<T, ...` when the newest
                                         # token FINALIZES a type argument (',' / '>')
    generic_fin: Optional[str] = None    # 'comma' (list still open: under-full is
                                         # pending) or 'gt' (list closed: under-full is
                                         # final too)


class TypeSemanticConstrain(SemanticConstrain):
    def __init__(self, incremental_parser, ts_api_factory=None):
        self.statics = {}
        self.incremental_parser = incremental_parser
        # per-attribute carrier symbol sets:
        # bnd={value_ident,IDENT}, tbnd={IDENT}, xt={expr,condition_expr}
        self._xt_syms = incremental_parser.symbols_for_attr("xt")
        self._bnd_syms = incremental_parser.symbols_for_attr("bnd")
        self._tbnd_syms = incremental_parser.symbols_for_attr("tbnd")
        if ts_api_factory is None:
            from lsp.TypeScriptCompilerAPI import TypeScriptCompilerAPI
            root = os.path.dirname(os.path.dirname(__file__))
            ts_api_factory = lambda: TypeScriptCompilerAPI(root=root)
        self.ts_api_factory = ts_api_factory
        self.ts = ts_api_factory()
        # Pay the TS/Node cold start here (constrainer built before model load),
        # off the generation clock. No warmup()/reset_document() exists -> warm
        # with a throwaway inspect.
        if hasattr(self.ts, "warmup"):
            self.ts.warmup()
        else:
            try:
                self.ts.inspect("", include_completions=False,
                                include_symbols=False, include_diagnostics=False)
            except Exception:
                pass
        self._reset_state()
        self._heuristics = TypeHeuristics(self)

    def close(self):
        try:
            self.ts.close()
        except Exception:
            pass

    def reset(self):
        # Reuse the warm TS process; clear per-document caches (do NOT respawn).
        for name in (
            "_inspect_cache", "_completion_cache", "_typed_suggestion_cache",
            "_type_reachable_cache", "_frontier_current_type_cache",
            "_frontier_probe_suffix_cache", "_frontier_probe_inspect_cache",
            "_frontier_probe_closure_cache", "_span_types_cache",
        ):
            cache = getattr(self.ts, name, None)
            if cache is not None:
                try:
                    cache.clear()
                except Exception:
                    pass
        # zero the shared-API enforcement-timing accumulators at the per-task
        # boundary (they are mirrored into statics during analyze()).
        if hasattr(self.ts, "reset_timing"):
            self.ts.reset_timing()
        # drop the worker's accumulated incremental session at the task boundary
        # so its NodeNext setExternalModuleIndicator wrapper chain never grows
        # across tasks into a stack overflow (off the per-token clock).
        if hasattr(self.ts, "reset_session"):
            self.ts.reset_session()
        self._reset_state()

    def _reset_state(self):
        self.transduced_len = 0     # count of all committed terminals so far
        self.terminals = []         # committed parser Tokens (authoritative text source)
        # spec 7.7 defer set (active-expr spos suspended until reduce). EMPTY in
        # this first cut -- see module docstring.
        self.deferred_spos = set()
        # REDUCED-span pass memo (user-approved): a reduced Exp span that lies
        # ENTIRELY in the committed prefix and passed _analyze_reduced once is
        # never re-checked -- its judgment inputs (code before spos, span text,
        # in-span diagnostics, before-text expected ask) are all immutable after
        # commit, so the answer cannot change. Keyed (spos, epos) in terminal
        # indices (stable: the committed list only appends). Trial passes remain
        # candidate-local and are promoted at acceptance handoff, after any
        # on_accept update; rejected candidates and realizable branches are
        # discarded, so they cannot pollute this memo.
        self._reduced_span_passed = set()
        # Passed reduced spans discovered while trying the current model-token
        # candidate. They are visible within that trial, but are promoted to the
        # committed memo only when the candidate itself is accepted. A rejected
        # realizable branch rolls back to a savepoint before another branch is
        # tried.
        self._trial_reduced_memo_enabled = (
            os.environ.get("GENCOR_TRIAL_REDUCED_MEMO", "1") != "0"
        )
        self._trial_reduced_span_passed = None
        self._trial_prefix_reduced_span_passed = None
        # The contextual type at an expression start depends only on the source
        # preceding that start.  An ACTIVE occurrence can survive many candidate
        # terminals, but its code_before_expr is immutable; avoid descending into
        # TypeScriptCompilerAPI.inspect() again for every such candidate.  Keep
        # signature-help asks separate because they request a larger result.
        self._expected_context_cache = {}

    # ---- commit-time state (confirmed tokens only) ----
    def on_accept(self, view, terminals):
        self.terminals.extend(terminals)
        self._update_defer_markers(view)
        self.transduced_len += len(terminals)   # bump LAST

    def hand_off_analysis(self, remainder=""):
        # Called after every accepted candidate, including one that completes
        # no terminal. Match the original commit_candidate_trial boundary:
        # publish only spans inside the committed terminals, never the suffix.
        pending = self._trial_reduced_span_passed
        if pending is None:
            return
        committed = {
            span for span in pending
            if span[1] < len(self.terminals)
        }
        self._reduced_span_passed.update(committed)
        self._trial_reduced_span_passed = None
        self._trial_prefix_reduced_span_passed = None

    def adopt_analysis(self, result, remainder=""):
        # The driver calls this at every candidate/probe entry. Committed
        # passes already live on this constrain; discard the previous trial.
        # Intermediate checks share this set. Each final interpretation below
        # starts from a copy, so a rejected interpretation cannot alter it.
        self._trial_prefix_reduced_span_passed = (
            set() if self._trial_reduced_memo_enabled else None
        )
        self._trial_reduced_span_passed = self._trial_prefix_reduced_span_passed

    def _reduced_span_already_passed(self, span):
        if span in self._reduced_span_passed:
            return True
        pending = self._trial_reduced_span_passed
        return pending is not None and span in pending

    def _record_reduced_span_pass(self, span):
        pending = self._trial_reduced_span_passed
        if pending is not None:
            pending.add(span)
            return
        if span[1] < len(self.terminals):
            self._reduced_span_passed.add(span)

    # ---- WHEN/WHAT ----
    @staticmethod
    def _peek_function_decl_span(ps, token_cls):
        # function_decl's reduce is LALR-deferred one lookahead PAST the body `}`
        # (block, then function_decl, reduce only when the token AFTER `}` is fed).
        # A plain `}` candidate is checked having fed only RBRACE, so the reduce has
        # not fired and no completed occurrence exists yet. Force the pending reduce
        # on a COPY by feeding one synthetic `;`: a statement TERMINATOR unambiguously
        # ends the block, so it drives the pending block->function_decl reduce chain,
        # which accumulates the occurrence BEFORE `;` is shifted. `;` is deliberate
        # and FIXED -- an operator (`>>`, `as`) could continue an expression and never
        # reduce, and picking "any valid terminal" is non-deterministic (the LALR state
        # ids, hence the action-dict order, vary per parser instance). We read the span
        # even if feed_token raises afterwards (the reduce already ran), then discard
        # the copy. Non-None IFF this `}` closes a function body; a for/if/while block
        # `}` reduces its own construct, never function_decl. Only the occurrence
        # ending at this `}` is relevant; older functions stay accumulated too.
        cp = ps.copy()
        try:
            cp.feed_token(token_cls("SEMICOLON", ";"), update_attrs=True)
        except Exception:
            pass
        return next(
            ((occ.start, occ.end) for occ, _ in cp.accumulated_attrs.items()
             if occ.symbol == "function_decl" and occ.end == ps.terminal_index - 1),
            None,
        )

    def symbols_to_check(self, view, terminal_seq, last_forming=True):
        """Paper section 5.2, Eq. (4): select by attributes only.

        The selector returns every expression occurrence and every identifier
        occurrence with a live bnd=True lineage.  It performs no TypeScript API
        query or token-shape/diagnostic heuristic. Implementation refinements
        are applied later by TypeHeuristics inside analyze().
        """
        # Eq. (4), first set:
        #   {(X, nu) in sigma | X in Ident and nu(X.bnd) = True}
        bnd_occurrences = tuple(
            view.iter_occurrences("bnd", self._bnd_syms)
        )
        identifier_references = tuple(
            occurrence
            for occurrence in bnd_occurrences
            if True in occurrence[2]
        )

        # Eq. (4), second set:
        #   {(X, nu) in sigma | X in Exp}
        # xt is retained for ExpectedTypeAt; it does NOT filter this set.
        expressions = tuple(view.iter_expr_occurrences("xt", self._xt_syms))

        # SymbolsToCheck = identifier_references union expressions.
        return {
            "view": view,
            "terminal_seq": tuple(terminal_seq),
            "last_forming": bool(last_forming),
            # Candidate-local attribute snapshot. TypeHeuristics needs both
            # bnd=True references and bnd=False parameter lineages, so retain
            # the unfiltered occurrences already visited by the paper selector.
            "bnd_occurrences": bnd_occurrences,
            "identifier_references": identifier_references,
            "expressions": expressions,
        }

    # ---- HOW ----
    def analyze(self, selected_symbols):
        try:
            # TypeScript has no postlex: False denotes a completed-prefix
            # check, True a final realizable interpretation (including EOS).
            if (self._trial_prefix_reduced_span_passed is not None
                    and selected_symbols.get("last_forming", True)):
                self._trial_reduced_span_passed = (
                    self._trial_prefix_reduced_span_passed.copy()
                )
            checks = self._heuristics.prepare(selected_symbols)
            if checks.rejected:
                return False
            span_snapshot = self._span_type_snapshot(checks)
            # outermost-first; first failure rejects (spec 6/H).
            for item in checks.check_items:
                if item.kind == KIND_EXPR_REDUCED:
                    ok = self._analyze_reduced(item, span_snapshot)
                    if ok and item.epos is not None:
                        self._record_reduced_span_pass((item.spos, item.epos))
                elif item.kind == KIND_EXPR_ACTIVE:
                    ok = self._analyze_active(item, span_snapshot)
                else:
                    ok = self._analyze_tbound(item)
                if not ok:
                    return False
            return True
        finally:
            # mirror the shared-API running totals into statics on EVERY analyze
            # path (incl. early reject) -- captures this candidate's probes too,
            # since they ran in the try body above. finally so telemetry never
            # changes the accept/reject outcome.
            self._mirror_timing_stats()

    def _mirror_timing_stats(self):
        """Copy the shared TS-API enforcement-timing accumulators into statics so
        they ride out in the per-task json alongside the by-check-kind
        type_*_time stats. OVERWRITE (not +=): the accumulators are per-task
        running totals (zeroed in reset()). Best-effort -- must never raise.

        NOTE type_api_time is the AUTHORITATIVE total Node round-trip time (all
        callers); the older type_inspect_time is a per-caller subset (just the
        expected-type hole-ask) and overlaps it -- keep both, they answer
        different questions."""
        stats = getattr(self, "statics", None)
        ts = getattr(self, "ts", None)
        if stats is None or ts is None:
            return
        stats["type_api_time"] = getattr(ts, "api_call_time", 0.0)
        stats["type_api_count"] = getattr(ts, "api_call_count", 0)
        stats["type_api_cache_hits"] = getattr(ts, "api_cache_hits", 0)
        stats["type_frontier_time"] = getattr(ts, "frontier_time", 0.0)
        stats["type_frontier_count"] = getattr(ts, "frontier_count", 0)
        stats["type_reachability_time"] = getattr(ts, "reachability_time", 0.0)
        stats["type_reachability_count"] = getattr(ts, "reachability_count", 0)

    def _span_type_snapshot(self, checks):
        """Preload current types for source-backed expression spans once.

        This is deliberately downstream of SymbolsToCheck: the paper selector
        remains attribute-only, while this optimization merely batches oracle
        facts needed by the selected checks. Synthetic candidate/mask probes do
        not match the source and continue through the established fallback.
        """
        # Experimental and opt-in while its cost/benefit is measured. Keep the
        # proven fragment path as the default.
        if os.environ.get("GENCOR_BATCH_SPAN_TYPES", "0") != "1":
            return None
        source = checks.source_text
        if not source:
            return None

        from constrainers.ts_expr_frontier import _REGEX_LITERAL_TERMINALS
        from constrainers.ts_expr_reachability import (
            _wrap_leading_regex,
            source_backed_frontier_type_spans,
        )

        planned = set()
        opportunistic = set()

        def add_span(bucket, item, local_start, local_end):
            if local_start is None or local_end is None or local_end <= local_start:
                return None
            if not (0 <= local_start < local_end <= len(item.expr_text)):
                return None
            absolute_start = len(item.code_before_expr) + local_start
            absolute_end = len(item.code_before_expr) + local_end
            if not (0 <= absolute_start < absolute_end <= len(source)):
                return None
            local_text = item.expr_text[local_start:local_end]
            if source[absolute_start:absolute_end] != local_text:
                return None
            span = (absolute_start, absolute_end)
            bucket.add(span)
            return span

        for item in checks.check_items:
            if item.kind == KIND_EXPR_REDUCED:
                # A lone regex literal is typed locally as RegExp in
                # _analyze_reduced and never reaches the TypeScript oracle.
                if (
                    len(item.terminals) == 1
                    and item.terminals[0].kind in _REGEX_LITERAL_TERMINALS
                ):
                    continue
                add_span(planned, item, 0, len(item.expr_text))
                continue

            if item.kind != KIND_EXPR_ACTIVE or item.objlit_dead:
                continue

            # This gate asks for the whole active call expression before normal
            # reachability whenever a new argument/comma was introduced.
            if item.in_call_arg and item.call_structure_changed:
                add_span(planned, item, 0, len(item.expr_text))

            # A whole spread span returns before frontier reachability. Its
            # nested operand expressions are separate check items.
            if item.spread_operand and item.expr_text.strip().startswith("..."):
                continue
            if not self._interpretations(item):
                continue

            for local_start, local_end in source_backed_frontier_type_spans(
                item.expr_text,
                item.terminals,
            ):
                add_span(planned, item, local_start, local_end)

            # If frontier candidate generation fails, _analyze_active asks for
            # the whole completed expression. Do not let this conditional
            # fallback trigger batching, but include it for free once two real
            # planned requests already justify a shared Program.
            add_span(opportunistic, item, 0, len(item.expr_text))

        def legacy_probe_cached(span):
            checker = getattr(self.ts, "has_frontier_probe_result", None)
            if checker is None:
                return False
            start, end = span
            return checker(
                source[:start],
                _wrap_leading_regex(source[start:end]),
                prefer_syntactic_clean=False,
            )

        uncached = {span for span in planned if not legacy_probe_cached(span)}

        # One source-backed lookup is no cheaper than the established fragment
        # probe. Pre-plan before the first oracle call and batch exactly when at
        # least two uncached requests can share one Program/checker.
        if len(uncached) < 2:
            return None

        spans = set(uncached)
        for span in opportunistic:
            if span not in planned and not legacy_probe_cached(span):
                spans.add(span)

        with self.ts.probe_tag("spanbatch"):
            loaded = self.ts.inspect_span_types(
                source,
                spans,
                closure=checks.source_closure,
            )
        if loaded is None:
            return None

        snapshot = {
            "source": source,
            "closure": checks.source_closure,
            "spans": tuple(sorted(spans)),
            "types": loaded.get("types", {}),
            "diagnostics": loaded.get("diagnostics", {}),
        }
        return snapshot

    def _analyze_active(self, item, span_snapshot=None):
        """ACTIVE Exp -> reachability (spec 2-6.2). check() internally does
        frontier extraction, base typing, expected-type back-computation /
        accept_any, and the TCG leaf reachability. Accept iff ANY surviving
        lineage interpretation is reachable (LR ambiguity; spec 7.4)."""
        # object-literal `{` open against a concrete non-object expected: dead end.
        if getattr(item, "objlit_dead", False):
            return False
        from constrainers.ts_expr_reachability import (
            TypeScriptFrontierTypeOracle, PartialExprTypeReachability)
        oracle = TypeScriptFrontierTypeOracle(
            self.ts,
            item.code_before_expr,
            check_call_excess=item.call_structure_changed,
            span_snapshot=span_snapshot,
        )
        checker = PartialExprTypeReachability(oracle)
        # GENERIC TYPE-ARGUMENT GATE (the lambda/function _param_gate's analogue,
        # user design): the `<` right after `new IDENT` is treated like a call's
        # `(` -- synthetically close the construct and read the oracle diagnostics:
        #  - count EXCESS (2558 got > expected): unfixable by typing more -> reject
        #    on ANY step (mirrors the 2554/param-count-excess gates; '>' at the
        #    previous step is the escape).
        #  - type-argument TYPE error (2344 constraint violation): reject ONLY at a
        #    finalizer (','/'>'), because a still-being-typed name may extend to a
        #    valid one (mirrors the param-TYPE finalizer rule).
        #  - when '>' CLOSES the list, BOTH must be clean: any count problem
        #    (incl. under-full) or type error rejects the '>' (escape: ',').
        if item.generic_probe:
            probe = item.generic_probe.rstrip()
            if item.generic_fin == "comma":
                probe = probe[:-1].rstrip() + ">()"
            elif item.generic_fin == "gt":
                probe = probe + "()"
            else:
                probe = probe + ">()"      # mid-argument synthetic close
            with self.ts.probe_tag("genclose"):
                glk = oracle.completed_type_of_expr(probe)
            gdiags = getattr(glk, "diagnostics", ())
            count = _diag_type_arg_count(gdiags)
            if count is not None:
                got, hi = count
                if got is not None and hi is not None and got > hi:
                    return False           # excess type arguments: any step
                if item.generic_fin == "gt":
                    return False           # '>' closed with too few / no arity match
            elif item.generic_fin == "comma":
                # The ',' PROMISES one more argument: if the list is already at max
                # arity, that next argument is guaranteed excess -> reject the ','
                # now (escape: '>' closes at the valid arity).
                probe2 = item.generic_probe.rstrip()[:-1].rstrip() + ", any>()"
                with self.ts.probe_tag("genclose"):
                    glk2 = oracle.completed_type_of_expr(probe2)
                count2 = _diag_type_arg_count(getattr(glk2, "diagnostics", ()))
                if count2 is not None:
                    got2, hi2 = count2
                    if got2 is not None and hi2 is not None and got2 > hi2:
                        return False
            if item.generic_fin in ("comma", "gt") and _diag_type_arg_type_error(gdiags):
                return False               # finalized type argument violates a constraint
        lookup = None   # lazily-computed completed type (the "already complete" fallback)
        # EXCESS-ARGUMENT gate (spec 7.3/7.7): an active arg inside a call arg list
        # that already pushes the call OVER its arity (2554 "got > expected") is
        # unfixable -- reject it NOW so the model closes the call (the argument_list
        # trailing-comma escape keeps `)` open) instead of committing an over-full
        # call and derailing when every close is later rejected. Reachability is NOT
        # authoritative here (the arg value itself is reachable); the call-arity
        # diagnostic is. Too-few is NOT rejected (no 2554 on an under-full open call).
        if item.in_call_arg and item.call_structure_changed:
            with self.ts.probe_tag("excessarg"):
                lookup = oracle.completed_type_of_expr(item.expr_text)
            if _diag_is_excess_arg(getattr(lookup, "diagnostics", ())):
                return False
        interps = list(self._interpretations(item))
        if item.spread_operand:
            # ACTIVE spread operand (`[... [1,` / `f(... [`): the position's
            # contextual type is the ELEMENT type, but the operand being built is
            # the ARRAY -- also try reaching `(element)[]` so an array literal
            # being spread is not rejected at its opening `[` (the ARG-position
            # check itself; the reduce-side 122dfda array-wrap does the final
            # assignability, so an ill-typed spread still rejects there).
            interps += [("(%s)[]" % e, False) for e, ag in interps if e and not ag]
            # A WHOLE-SPREAD span (starts at the `...` marker itself): the frontier
            # scanner does not know the `...` operator, so its verdict on this span
            # is unreliable -- and redundant: the operand/elements inside surface as
            # their OWN items (checked, incl. the soundness rejects), and the REDUCE
            # array-wrap assignability is the final check. Admit the span.
            if item.expr_text.strip().startswith("..."):
                return True
        if item.spread_lit_elem:
            # Element of a spread ARRAY LITERAL: the TS hole leaks the spread
            # target's ARRAY type as this element's contextual type -- also try
            # the unwrapped element type (`number[]` -> `number`).
            interps += [(e[:-2].strip(), False) for e, ag in interps
                        if e and not ag and e.endswith("[]")]
        for expected, any_goal in interps:
            t0 = time.time()
            result = checker.check(
                item.expr_text,
                expected_type=expected,
                accepts_any_goal=any_goal,
                terminals=item.terminals,     # ALWAYS pass -> no char-scan fallback
            )
            self._add_stat("type_active_time", time.time() - t0)
            self._add_stat("type_active_count")
            if bool(getattr(result, "reachable", False)):
                return True
            # An ACTIVE expr may already BE a complete, valid expression that the
            # reachability frontier cannot produce a candidate for -- e.g. a
            # complete arrow `(a)=>a` yields 'no-frontier-candidates'. Per spec 4
            # (complete_expr -> current type), fall back to its completed type.
            # completed_type_of_expr tolerates an implicit-any param (returns
            # `(a:any)=>any`, ok=True), so this ALSO realises the user's policy of
            # ALLOWING untyped parameters. Genuinely incomplete exprs (e.g. `1 +`)
            # give ok=False here, so the fallback only helps real complete exprs.
            if lookup is None:
                with self.ts.probe_tag("fcfallback"):
                    lookup = oracle.completed_type_of_expr(item.expr_text)
            if getattr(lookup, "ok", False):
                if any_goal or expected is None:
                    return True
                if oracle.assignable(lookup.type_text, expected):
                    return True
        # ARROW-ROUTE GUARD (user design): the bnd=False param/arrow reading is
        # only worth trying when the expected type could ACCEPT a function --
        # accepts_any (a grouped cover defers to it; `let a: string = ( x`) or a
        # genuinely function-typed / any / union-with-function expected. Against a
        # concrete NON-function expected (`let a: string = x`) an arrow can never
        # satisfy the position, so the param reading is a phantom: skip it so an
        # undefined bare ident is rejected HERE as a value-ref (its reachability
        # already failed above) instead of being rescued as an imaginary param.
        # ...UNLESS the ident sits in a GROUPED cover paren (`let a: string = ( x`):
        # the grouped frontier defers to accepts_any (it cannot yet tell a value
        # `( x )` from an arrow `( x , y ) => ...`), so the arrow route stays open
        # there (user: "keep grouped expressions when they are outermost"). Only a BARE non-grouped
        # position (`let a: string = x`) with a concrete non-function expected
        # blocks it. The value-ref reading above already keeps the ternary escape,
        # so a DEFINED wrong-typed ident is still rescued (`x ? "a" : "b"`); only
        # an UNDEFINED bare ident is rejected here.
        # The bare-ident arrow reading is kept ONLY when a function is genuinely
        # expected (`filter(x => ...)`, `map(x => ...)`) or the ident sits in a
        # GROUPED cover (in_potential_arrow, below). It is NOT kept for an
        # accepts_any / untyped position (`const f = x`): that was gencor's gap vs
        # TCG -- TCG treats an untyped `= <ident>` as an unambiguous value-ref and
        # rejects an undefined name AT the ident, while gencor's `ag` term rescued
        # it as a phantom bare-arrow param and let the junk name grow to timeout
        # (HumanEval/94/158). Dropping the `ag` term matches TCG: a bare undefined
        # ident in an untyped slot rejects here (a bare arrow the model still wants
        # is redirected to the grouped `(x) => ...`, which in_potential_arrow keeps
        # -- TCG requires that form too). Function-expected callbacks survive via
        # _expected_allows_function; grouped covers via in_potential_arrow.
        arrow_allowed = any(
            e is not None and self._expected_allows_function(e)
            for e, _ag in interps
        )
        if not arrow_allowed and not item.in_potential_arrow:
            return False
        # ARROW-PARAM reading (user design "expr-position bnd=false = param",
        # validated by the param gate): the value-ref reading above failed, but the
        # frontier's trailing ident carries a bnd=False lineage (item.arrow_startable)
        # -- it MAY be a bare arrow's param (`map(x` -> `map(x => ...)`). Validate
        # that reading by synthetically completing the arrow (`=> undefined as any`,
        # closing open parens) and asking TS for a param-count/type diagnostic: a
        # fresh single/multi bare param is a clean callback, so no 2554/2345 -> the
        # arrow reading is viable -> ACCEPT (the completed arrow's body/type is
        # checked at the call's REDUCE; an undefined VALUE-ref that turns out NOT to
        # be a param is caught at its own reduce by (1b)/(1c)). Grammar-driven: works
        # for any restore scope because bnd=False is the grammar's param signal.
        if item.arrow_startable and self._arrow_param_reading_ok(item):
            return True
        # SPAN-level param fallback (user design): the span's param lineage is
        # alive and the param gate already validated the param reading THIS step
        # (its probe = close mismatched pairs + `=> undefined as any`), so a
        # value-reading failure of the span does not reject the token.
        if item.param_fallback:
            return True
        return False

    @staticmethod
    def _arrow_reading_probe(full_tokens, full_text):
        """Synthetic completion that reads the current prefix as an ARROW whose
        param list ends at the trailing ident, PAIR-AWARE (user design: "close matching
        parentheses before appending => undefined as any"):

        - trailing ident inside an arrow-capable '(' (cover paren -- possibly with
          an open '[' tuple pattern inside): close the inner pairs, close that
          ')' FIRST, then ` => undefined as any` -- `( [ a` probes
          `( [ a ] ) => undefined as any` (a valid destructuring-param callback
          for tsc; the naive bare form `( [ a => ...` was garbage and killed the
          param reading for tuple patterns).
        - bare trailing ident (innermost pairs are calls/brackets, no cover
          paren): ` => undefined as any` right after the ident -- `map(x` probes
          `map(x => undefined as any)`.
        Enclosing pairs OUTSIDE the arrow close AFTER the arrow text."""
        stack = []   # (char, token_index) of unclosed ( / [
        for i, t in enumerate(full_tokens):
            v = t.value
            if v == "(" or t.type == "CALL_OPEN":
                stack.append(("(", i))
            elif v == "[":
                stack.append(("[", i))
            elif v == ")" or t.type == "RPAR":
                if stack and stack[-1][0] == "(":
                    stack.pop()
            elif v == "]":
                if stack and stack[-1][0] == "[":
                    stack.pop()
        # innermost arrow-capable '(' on the open stack
        arrow_at = None
        for k in range(len(stack) - 1, -1, -1):
            ch, idx = stack[k]
            if ch == "(" and TypeSemanticConstrain._paren_opens_arrow_region(full_tokens, idx):
                arrow_at = k
                break
        closer = {"(": " )", "[": " ]"}
        code = full_text
        if arrow_at is not None:
            # close pairs INSIDE the param paren, then the param ')' itself
            for ch, _idx in reversed(stack[arrow_at + 1:]):
                code += closer[ch]
            code += " ) => undefined as any"
            outer = stack[:arrow_at]
        else:
            code += " => undefined as any"
            outer = stack
        for ch, _idx in reversed(outer):
            code += closer[ch]
        return code

    def _expected_allows_function(self, expected):
        """True if ``expected`` could ACCEPT a function value (so the arrow/param
        reading is worth keeping). Function types, unions containing one, empty/
        unparseable, and a CONCRETE `any` keep the route; a parseable clearly
        non-callable type (primitive / array / tuple / plain object / `unknown`)
        blocks it, so the arrow-dead collapse turns the ident into a value-ref.

        User design -- EXPLICIT `any` vs UNTYPED are distinguished (told apart by
        expectedType "any" vs None): `const a: any = <hole>` ALLOWS the arrow (both
        bnd); `const a = <hole>` (expected=None) never reaches here and collapses to
        bnd=True. (`unknown` still blocks; only concrete `any` was moved to keep.)"""
        from constrainers.ts_expr_reachability import _ptype
        from lsp.ts_reachability import FunctionPType, UnionPType
        from lsp.ts_types_base import AnyPType
        txt = (expected or "").strip()
        if not txt:
            return True
        # cheap function-ish net before parsing (arrow types, the Function
        # global): keep the route. (`unknown` is deliberately NOT here anymore --
        # it blocks the route like a concrete non-function type; see docstring.)
        if "=>" in txt or "Function" in txt:
            return True
        pt = _ptype(expected)
        if pt is None:
            return True
        if isinstance(pt, FunctionPType):
            return True
        if isinstance(pt, UnionPType):
            return any(self._expected_allows_function(str(m)) for m in pt.types)
        # A CONCRETE `any` type (`const a: any = ...`) ACCEPTS a function value, so
        # KEEP the arrow route (both bnd). User design -- distinguish the EXPLICIT
        # `any` slot from the UNTYPED / no-expected position:
        #   `const a: any = <hole>` -> expected="any" -> reaches here -> arrow ALLOWED
        #   `const a = <hole>`      -> expected=None  -> never reaches here (e=None);
        #                              arrow-dead collapses it to bnd=True (value-ref),
        #                              so the name check fires (mbpp/278 self-ref
        #                              `const flat_list = flat_list`).
        # The two are told apart by expectedType alone ("any" vs None; _expected_type_for).
        # (Previously `any` also fell through to False/collapse; this EXCLUDES it now --
        # `unknown` still blocks, only concrete `any` moved to keep.)
        if isinstance(pt, AnyPType):
            # `unknown` is ALSO an AnyPType in the ptype model but must still BLOCK
            # (user asked to move ONLY concrete `any`) -- distinguish by the type text.
            return txt == "any"
        return False

    def _arrow_param_reading_ok(self, item):
        """True iff the active expr, read as an arrow whose param list ends at the
        trailing ident, has a VALID param list (no excess-count 2554 / type-mismatch
        2345). Probes the pair-aware synthetic completion built at item time
        (_arrow_reading_probe), same diagnostics as _param_gate."""
        code = getattr(item, "arrow_probe", None)
        if code is None:
            return False
        diags = self._param_gate_diags(code)
        return not (_diag_is_param_excess(diags) or _diag_is_param_type_mismatch(diags))

    @staticmethod
    def _is_function_expected(expected):
        """A TypeScript function (arrow) expected type, e.g. `(x: number) => number`
        -- the only concrete type an in-progress arrow can be assignable to."""
        return bool(expected) and "=>" in expected

    def _analyze_reduced(self, item, span_snapshot=None):
        """REDUCED Exp -> assignability, NOT reachability (spec 6). xt=True:
        current type must be assignable to the (re-queried) expected type;
        xt=False: well-typedness only."""
        from constrainers.ts_expr_reachability import TypeScriptFrontierTypeOracle
        oracle = TypeScriptFrontierTypeOracle(
            self.ts,
            item.code_before_expr,
            span_snapshot=span_snapshot,
        )
        # A LONE REGEX-LITERAL reduced expr: the oracle cannot complete a bare
        # `/re/g` fragment (ok=False with NO diagnostics -- the probe re-lexes the
        # leading '/' as division), so `const re = /[aeiou]/g;` false-rejected at
        # the ';' (observed live, mbpp/725/440/563). Its type is trivially RegExp:
        # accept under well-typedness, or check RegExp against the expected type.
        from constrainers.ts_expr_frontier import _REGEX_LITERAL_TERMINALS
        if (len(item.terminals) == 1
                and item.terminals[0].kind in _REGEX_LITERAL_TERMINALS):
            for expected, any_goal in self._interpretations(item):
                if any_goal or expected is None:
                    return True
                if oracle.assignable("RegExp", expected):
                    return True
            return False
        t0 = time.time()
        with self.ts.probe_tag("reduced"):
            lookup = oracle.completed_type_of_expr(item.expr_text)
        self._add_stat("type_reduced_time", time.time() - t0)
        self._add_stat("type_reduced_count")
        if not getattr(lookup, "ok", False):
            return False
        for expected, any_goal in self._interpretations(item):
            if any_goal or expected is None:
                # (user policy) an empty-array `[]` (never[]) or empty-object `{}`
                # at an UNTYPED (expected is None) position carries no usable
                # element/member typing: `never[]` admits no element; `{}` has no
                # index signature, so every later `m[key]` is a 7053 we
                # policy-allow (mbpp/777) and `m.member` is a dead end (mbpp/769
                # `map.`, 757 `freq.`). Reject the reduce so the model commits a
                # type instead: `[] as T[]` / `{} as Record<K, V>` (which also
                # turns junk like `repeats = "s"` into a rejectable 2322). FIRES
                # ONLY when expected is None: a concrete/any expected slot keeps
                # the assignable path (`const a: any = {}`, `let m: Record<...> =
                # {}` pass), and a literal WITH members (`{a: 1}`) types as
                # `{a: number}`, not `{}`. Existing `as`-mismatch (2352) and
                # xt=True assignable are untouched.
                if expected is None and lookup.type_text in ("never[]", "{}"):
                    return False
                return True   # well-typedness: a valid current type is enough
            if oracle.assignable(lookup.type_text, expected):
                return True
            # SPREAD operand (`...expr`): the contextual `expected` is the ELEMENT type
            # (rest-param element / array element), but the operand IS the array being
            # spread. So it is well-typed iff its type is assignable to `expected[]`
            # (an array of the element). SOUND: `...numbers`(number[]) vs number[] ok;
            # `...strs`(string[]) vs number[] rejects (the call reduce's own 2345 is
            # span-filtered to the arg, so it does NOT catch this -> we must check here).
            if item.spread_operand and oracle.assignable(lookup.type_text, "(%s)[]" % expected):
                return True
            # Element of a spread ARRAY LITERAL (`[...[1,`): the TS hole leaks the
            # spread target's ARRAY type as this element's contextual type -- the
            # element `1` (number) was checked against `number[]`. Also try the
            # unwrapped element type.
            if (item.spread_lit_elem and expected.endswith("[]")
                    and oracle.assignable(lookup.type_text, expected[:-2].strip())):
                return True
            # OBJECT LITERAL against an OBJECT / index-signature target: the
            # in-context completed_type probe already validated the values (a mismatch
            # like `{zero:0}` vs `{[k:string]:string}` puts a 2322 in the literal's own
            # span -> ok=False, rejected above), and the structural PType assignable()
            # cannot model index signatures (`{zero:number} <: {[k:string]:number}`
            # -> wrongly False). So for an object-literal value assigned to an
            # object-typed expected, trust the in-context ok. (A NON-object target
            # like `number` keeps the assignable() check above -- `{a:1}` vs number
            # still rejects -- because its 2322 is NOT in the literal span.)
            # Record<K, V> is the NAMED alias of an index-signature object type, so
            # the same in-context trust applies (verified: a value mismatch like
            # `Record<string, number> = {a: "x"}` reports its 2322 INSIDE the
            # literal's span -> ok=False -> rejected before this point). NOT
            # extended to other named types: `Set<number> = {}` keeps ok=True
            # in-context though it IS a TS error, so trusting those would
            # false-accept -- they stay on the ptype assignable path.
            if (item.expr_text.lstrip().startswith("{")
                    and ((expected or "").lstrip().startswith("{")
                         or (expected or "").strip().startswith("Record<"))):
                return True
        return False

    def _interpretations(self, item):
        """(expected_type, accepts_any_goal) for the Exp. xt=True imposes the
        contextual expected type (spec 5); xt=False / untagged is well-typedness
        only ((None, True)).

        xt=True is DOMINANT: when a True lineage exists we use ONLY the
        expected-type interpretation -- we do NOT also offer a well-typedness escape
        via a co-occurring False. A False that co-occurs with True is an LR
        attribute-merge artifact (e.g. a typed array/tuple element `const a:
        number[] = ["x"` surfaces xt={False,True}); honoring it would let an
        ill-typed element pass via well-typedness -- exactly the un-instructed
        leniency the do-not-carry rule forbids (audit finding). This is SOUND in the
        other direction too: a *spurious* True is harmless because _expected_type_for
        resolves a position with no real contextual type to None -> (None, None) ->
        well-typedness, so no false-reject. (When expected is None the True lineage
        already degrades to accepts_any.)

        A REDUCED span that is redundantly grouping-wrapped (`( inner )`) defers its
        expected-type to the enclosing group / expression (see
        _reduced_is_grouped_operand): well-typedness only here, so the coerced-operand
        pattern `(1 ^ 2) + ""` is not false-rejected while the container still enforces
        the real expected type."""
        if getattr(item, "wrapped_operand", False):
            return [(None, True)]
        base = ([(item.expected_type, item.expected_type is None)]
                if True in item.xt_values else [(None, True)])
        if True in item.xt_values and item.expected_types is not None:
            # Overload candidate set at a call-argument position (user design):
            # the arg passes if it fits ANY surviving candidate.
            if not item.expected_types:
                # overloads exist but the committed prefix args killed EVERY
                # candidate -> no completion of this argument can make the call
                # well-typed; the position is dead (see _overload_expected_set:
                # the FA `new Date("x", 3)` this closes).
                return []
            # survivors APPENDED to the single-contextual pair (dedup): keeps
            # today's accept surface and widens by the surviving candidates.
            base = base + [(t, False) for t in item.expected_types
                           if t != item.expected_type]
        if getattr(item, "open_arr_elem", False) and any(e and not ag for e, ag in base):
            # Element inside a STILL-OPEN array literal: the hole leaks the OUTER
            # contextual type onto the element (`return [1,` -> element expected
            # `boolean`), so the expected check here is unreliable -- add the
            # well-typedness escape and defer the real check to the array's own
            # REDUCE (its completed type carries the elements; `let a: number[] =
            # ["x"]` still rejects there).
            base = base + [(None, True)]
        if (getattr(item, "grouped_operand", False)
                and True in item.xt_values and False in item.xt_values):
            # Grouping-paren comma-list operand whose sole/last-vs-non-last reading
            # is STILL UNDECIDED (xt={T,F} is a GENUINE fork here: grouped_expr_list
            # tags non-last operands xt{false,0}, sole/last relays the outer
            # expected). True-dominance alone would charge the sole-reading
            # obligation to a span whose real future may be a non-last operand
            # (`(  ( 1 , "x" ) , 2 )` -- the inner `)` false-rejected). Add the
            # non-last reading's well-typedness escape; the SOLE/LAST obligation is
            # re-enforced at the deciding token: if `)` follows, the enclosing
            # group reduces and its completed type meets the real expected there.
            base = base + [(None, True)]
        if (getattr(item, "continued_operand", False)
                and any(e and not ag for e, ag in base)):
            # The next terminal EXTENDS the expression: this reduced span is a
            # consumed constituent (member/call base, binary operand, ternary
            # condition ...), so holding it to the slot's expected type here
            # false-rejects coercing continuations (`( 1 , "x" ) . length` is a
            # valid number). Well-typedness still applies; the slot's expected is
            # enforced on the ENCLOSING span at its own finalizer (rule: mismatch
            # rejected only at finalizers).
            base = base + [(None, True)]
        return base

    def _analyze_tbound(self, item):
        """@TBOUND type-name reference (spec 7.6): the partial/complete type name
        must be a prefix of some TYPE-position completion, filtering 'any'.
        TODO(open_questions #6): confirm the exact TS type-completion entry point."""
        return self._type_keyword_completion_ok(item)

    # ---- builders / internals ----
    @staticmethod
    def _is_ident_char(c):
        return c.isalnum() or c in "_$"

    @staticmethod
    def _is_bare_ident(text):
        t = (text or "").strip()
        return bool(t) and _BARE_IDENT_RE.fullmatch(t) is not None

    @staticmethod
    def _in_call_arg_region(full_tokens, spos):
        """True if ``spos`` sits inside an (innermost) UNCLOSED call argument list:
        a '(' that IS a call open (preceded by ident / ')' / ']'). Used to gate the
        excess-argument check to real call-arg positions only (so non-call active
        exprs pay no extra probe)."""
        depth = 0
        for i in range(spos - 1, -1, -1):
            t = full_tokens[i]
            if t.type == "RPAR" or t.value == ")":
                depth += 1
            elif t.type == "CALL_OPEN" or t.value == "(":
                if depth == 0:
                    if i > 0:
                        pv = full_tokens[i - 1]
                        return pv.type in ("IDENT", "RPAR", "RSQB") or pv.value in (")", "]")
                    return False
                depth -= 1
        return False

    def _top_level_list_state(self, full_tokens, open_i, end_i):
        """Structural state of an open parenthesized list before ``end_i``.

        The state changes only when a top-level item starts or a top-level comma
        is added. Nested calls, tuple/object patterns, and function bodies do not
        change the containing parameter/call argument count. This is deliberately
        terminal-based: punctuation inside strings/numeric literals is never seen
        as list structure.
        """
        ignored = self.incremental_parser.base_parser.lexer_conf.ignore
        pairs = {"(": ")", "[": "]", "{": "}"}
        stack = []
        comma_count = 0
        item_started = False
        stop = min(max(end_i, 0), len(full_tokens))
        for i in range(open_i + 1, stop):
            tok = full_tokens[i]
            if tok.type in ignored:
                continue
            value = tok.value
            if stack:
                if value in pairs:
                    stack.append(pairs[value])
                elif value == stack[-1]:
                    stack.pop()
                continue
            if value == ")":
                break
            if value == ",":
                comma_count += 1
                item_started = False
                continue
            item_started = True
            if value in pairs:
                stack.append(pairs[value])
        return comma_count, item_started

    def _list_structure_changed(self, full_tokens, open_i, end_i):
        """Whether this candidate changed a top-level list's item structure."""
        candidate_start = min(len(self.terminals), end_i)
        before = self._top_level_list_state(
            full_tokens, open_i, candidate_start)
        after = self._top_level_list_state(full_tokens, open_i, end_i)
        return before != after

    @staticmethod
    def _is_call_open(full_tokens, open_i):
        if open_i <= 0:
            return False
        tok = full_tokens[open_i]
        if tok.type != "CALL_OPEN" and tok.value != "(":
            return False
        prev = full_tokens[open_i - 1]
        return (
            prev.type in ("IDENT", "RPAR", "RSQB", "GT", "OPTIONAL_DOT")
            or prev.value in (")", "]", ">", "?.")
        )

    def _call_argument_structure_changed(self, full_tokens, end_i):
        """Whether the candidate changed any still-open call's argument list.

        The paren stack comes from parser terminals. A growing callback body may
        add hundreds of terminals while the enclosing call still has exactly the
        same arguments; those candidates return False and do not need another
        whole-call excess-arity diagnostic.
        """
        paren_stack = []
        stop = min(end_i + 1, len(full_tokens))
        for i in range(stop):
            tok = full_tokens[i]
            if tok.type == "CALL_OPEN" or tok.value == "(":
                paren_stack.append(i)
            elif tok.type == "RPAR" or tok.value == ")":
                if paren_stack:
                    paren_stack.pop()
        return any(
            self._is_call_open(full_tokens, open_i)
            and self._list_structure_changed(full_tokens, open_i, stop)
            for open_i in paren_stack
        )

    _PRIMITIVE_NONOBJECT = frozenset({
        "number", "string", "boolean", "bigint", "symbol",
        "void", "null", "undefined", "never",
    })

    @staticmethod
    def _split_top_level_union(s):
        """Split a type text on top-level `|` (union), respecting (){}[]<> nesting."""
        parts, depth, buf = [], 0, []
        for ch in s:
            if ch in "([{<":
                depth += 1
            elif ch in ")]}>":
                if depth > 0:
                    depth -= 1
            if ch == "|" and depth == 0:
                parts.append("".join(buf)); buf = []
            else:
                buf.append(ch)
        parts.append("".join(buf))
        return [p.strip() for p in parts if p.strip()]

    @classmethod
    def _expected_admits_object(cls, expected):
        """True if an OBJECT LITERAL could be assignable to ``expected`` (spec 7.5 +
        user refinement: a `{` open is viable ONLY when the expected type is a
        record/object type or absent). Errs toward True (admit) so named types /
        Record / any / unknown / object never false-reject; returns False ONLY for
        a type that DEFINITELY cannot take an object literal -- a primitive, a
        literal, an array/tuple, a function type, or a union built only from those.
        For those, no object literal is ever assignable, so the `{` is a dead end."""
        s = (expected or "").strip()
        if not s:
            return True
        parts = cls._split_top_level_union(s)
        if len(parts) > 1:
            return any(cls._expected_admits_object(p) for p in parts)
        if s.startswith("{"):
            return True            # object / index-signature type literal
        if s.endswith("]"):
            return False           # array `T[]` / tuple `[...]`
        if "=>" in s:
            return False           # function type
        if s in cls._PRIMITIVE_NONOBJECT:
            return False
        if s[:1].isdigit() or s[:1] in "'\"`" or s in ("true", "false"):
            return False           # literal type
        return True                # named type / Record / object / any / unknown

    _OBJLIT_OPERAND_PRECEDERS = frozenset({
        "=", "+=", "-=", "*=", "/=", "%=", "**=", "&&=", "||=", "??=",
        "&=", "|=", "^=", "<<=", ">>=", ">>>=",
        "<", ">", "<=", ">=", "==", "===", "!=", "!==",
        "+", "-", "*", "/", "%", "**", "&", "|", "^", "<<", ">>", ">>>",
        "&&", "||", "??", "?",
    })

    @classmethod
    def _objlit_operand_lbrace_index(cls, full_tokens, spos, end_idx):
        """Index of the first UNCLOSED bracket-depth-0 `{` in the active span that
        opens an OBJECT LITERAL as the operand of a still-open enclosing
        expression (previous token is a binary / assignment / ternary operator),
        or None. The caller CLIPS the active span to just before that `{` (the
        same design as the `new IDENT<` type-argument clip): the literal's
        INTERIOR is not the enclosing item's business -- keys are the grammar's,
        property values are their own Exp items, and the completed literal is
        re-checked by the frontier when it closes and by REDUCE. Without the clip
        the frontier read the key as an expression fragment and rejected it via
        the completed-probe's 18004 (`o < { a` / `o = { a`, rel mini-suite).

        A ternary-ELSE `:` counts as a preceder only when a depth-0 `?` was seen
        earlier in the span (a depth-0 `:` after `)` is a return-type annotation,
        not an operand position). A CLOSED literal is skipped: the normal
        machinery types it. Function/arrow BLOCK bodies never match: their `{`
        follows `)` / `=>` (and top-level-arrow spans are dropped before this)."""
        depth = 0
        saw_top_question = False
        i = spos
        while i <= end_idx:
            tok = full_tokens[i]
            v = tok.value
            if depth == 0 and v == "?":
                saw_top_question = True
            if v in "([{":
                if (v == "{" and depth == 0 and i > spos):
                    prev = full_tokens[i - 1].value
                    if prev in cls._OBJLIT_OPERAND_PRECEDERS or (
                            prev == ":" and saw_top_question):
                        # scan for the matching close within the span
                        bdepth = 0
                        j = i
                        while j <= end_idx:
                            if full_tokens[j].value == "{":
                                bdepth += 1
                            elif full_tokens[j].value == "}":
                                bdepth -= 1
                                if bdepth == 0:
                                    break
                            j += 1
                        if j > end_idx:
                            return i          # unclosed operand literal
                        i = j                 # closed: skip it entirely
                        continue
                depth += 1
            elif v in ")]}":
                if depth > 0:
                    depth -= 1
            i += 1
        return None

    @staticmethod
    def _generic_new_lt_index(full_tokens, spos):
        """Index of the `<` opening a generic construct's type_args
        (`new IDENT <`) inside the span starting at ``spos``, or None. The grammar
        can only parse `new IDENT <` as constructor_call type_args (never a
        comparison), but the frontier scanner reads the `<`/`>` as relational
        operators -- so the caller CLIPS the active span to just before the `<`
        (user design): the reachability check "can the CLASS's construct instance
        still reach the expected type" keeps running THROUGHOUT the type-argument
        region exactly as it did at `new Set`, the type names themselves are
        checked by the @TBOUND items, call arguments by their own Exp items, and
        the completed construct at REDUCE."""
        n = len(full_tokens)
        for i in range(spos, n - 2):
            if (full_tokens[i].type == "NEW"
                    and full_tokens[i + 1].type == "IDENT"
                    and (full_tokens[i + 2].type == "LT" or full_tokens[i + 2].value == "<")):
                return i + 2
        return None

    @staticmethod
    def _is_spread_operand(full_tokens, spos):
        """True if the Exp at ``spos`` is the operand of a SPREAD (`...expr`). The
        contextual type queried at that position is the ELEMENT type (the call's
        rest-param element / the array's element), but the operand IS the array being
        spread, so an assignability check against the element type wrongly rejects it
        (`Math.min(...numbers)`: `numbers` is number[], checked vs number -> reject).
        Defer to well-typedness; the enclosing call / array literal reduces and its
        completed_type carries the real spread assignability (a genuine mismatch like
        spreading a string[] into a number rest still fails there).

        Covers BOTH span shapes the parser surfaces: the operand span (spos right
        AFTER the SPREAD) and the whole-spread span (spos ON the SPREAD itself --
        the active `'...['` span was rejected at the inner `[` because only the
        former was marked)."""
        if spos > 0 and full_tokens[spos - 1].type == "SPREAD":
            return True
        return full_tokens[spos].type == "SPREAD"

    @staticmethod
    def _arrow_block_index(full_tokens, spos, end_idx):
        """Index of the first ARROW whose next token is LBRACE (`=> {`) inside
        [spos, end_idx], or None. An active span that CONTAINS a block-bodied
        arrow mixes STATEMENTS (declarations etc.) into the expression text, which
        the frontier scanner cannot type (`item=>{const cleaned` rejected the
        declaration's identifier -- observed live, mbpp/640; the paren-less
        bare-ident arrow is not covered by _spos_in_potential_arrow). The caller
        CLIPS the span to just before the arrow: the callee/args before it keep
        their checks, the body statements surface as their own items, and the
        completed arrow is checked at REDUCE."""
        for i in range(spos, min(end_idx, len(full_tokens) - 1)):
            if (full_tokens[i].type == "ARROW"
                    and full_tokens[i + 1].type == "LBRACE"):
                return i
        return None

    @staticmethod
    def _top_level_arrow_index(full_tokens, spos, end_idx):
        """Index of the first ARROW at bracket depth 0 within [spos, end_idx],
        or None. A top-level `=>` makes the span an ARROW FUNCTION expression
        (an arrow nested in parens/brackets belongs to an inner expr and does
        not count)."""
        depth = 0
        for i in range(spos, min(end_idx + 1, len(full_tokens))):
            v = full_tokens[i].value
            if v in ("(", "[", "{"):
                depth += 1
            elif v in (")", "]", "}"):
                depth -= 1
            elif depth == 0 and full_tokens[i].type == "ARROW":
                return i
        return None

    @staticmethod
    def _in_open_array_literal(full_tokens, spos):
        """True if ``spos`` sits inside a STILL-OPEN array LITERAL (`[1, HERE` --
        the innermost unclosed `[` is a literal open, i.e. NOT an index access:
        an index `[` is preceded by IDENT / `)` / `]`). The TS hole leaks the
        OUTER contextual type onto such an element (`return [1,` in a
        boolean-returning fn gave the element `1` expected `boolean` -> rejected,
        though `[1,3,5].includes(m)` is boolean-reachable). The element's
        expected-type check is deferred to the array's own REDUCE, whose completed
        type carries the elements (`let a: number[] = ["x"]` still rejects there)."""
        depth = 0
        for i in range(spos - 1, -1, -1):
            t = full_tokens[i]
            if t.value == "]":
                depth += 1
            elif t.value == "[":
                if depth == 0:
                    if i == 0:
                        return True
                    pv = full_tokens[i - 1]
                    return not (pv.type in ("IDENT", "RPAR", "RSQB")
                                or pv.value in (")", "]"))
                depth -= 1
        return False

    @staticmethod
    def _in_spread_array_literal(full_tokens, spos):
        """True if ``spos`` sits inside an ARRAY LITERAL that is itself a SPREAD
        operand (`[... [ HERE`). The TS hole query at such an ELEMENT position
        leaks the spread target's ARRAY type as the contextual type (observed:
        the element `1` of `[...[1, 2]]` got expected `number[]`), so the checks
        also try the UNWRAPPED element type."""
        depth = 0
        for i in range(spos - 1, -1, -1):
            t = full_tokens[i]
            if t.value == "]":
                depth += 1
            elif t.value == "[":
                if depth == 0:
                    return i > 0 and full_tokens[i - 1].type == "SPREAD"
                depth -= 1
        return False

    @staticmethod
    def _reduced_is_grouped_operand(full_tokens, spos, epos):
        """True if the reduced span [spos, epos] is redundantly wrapped by a
        GROUPING `( ... )` -- i.e. the terminal right before spos is a grouping `(`
        and the terminal right after epos is its matching `)`.

        Such a span is a sub-expression of the group `( ... )`, which is the real
        semantic unit. Enforcing the span's contextual expected-type HERE is both
        redundant and WRONG on an incomplete prefix: while generating
        `let s: string = ( 1 ^ 2` TS assumes the paren content is the RHS and reports
        its contextual type as `string`, so the inner `1 ^ 2` (number) false-rejects
        at the `)` -- but a trailing binary operator may still follow (`( 1 ^ 2 ) + ""`)
        making the group an OPERAND (number + "" = string, valid). The correct
        expected-type check happens when the ENCLOSING span reduces: the group `(1^2)`
        itself when it is final (`= (1^2)` -> reject number vs string), or the whole
        `(1^2)+""` when the group is an operand (-> accept). Neither of those is
        grouping-wrapped, so both still carry the real check. So here we defer to
        well-typedness only -- SOUND (a real inner error still fails well-typedness;
        the expected-type is re-enforced by the container), no false-reject on the
        coerced-operand pattern.

        Only GROUPING parens count -- a call `(` (preceded by ident / `)` / `]`) is
        excluded: a call-arg keeps its own arg check, and arg-type mismatches are
        caught at the call reduce regardless."""
        if epos is None or spos <= 0:
            return False
        n = len(full_tokens)
        if epos + 1 >= n:
            return False
        before = full_tokens[spos - 1]
        after = full_tokens[epos + 1]
        if before.value != "(" or after.value != ")":
            return False
        # grouping paren, not a call open (call = preceded by ident / ')' / ']')
        if spos - 2 >= 0:
            pv = full_tokens[spos - 2]
            if pv.type in ("IDENT", "RPAR", "RSQB") or pv.value in (")", "]"):
                return False
        return True

    # Tokens that EXTEND an expression when they follow a reduced span: the span
    # is then a CONSUMED constituent (member/call/index base, binary operand,
    # ternary condition, as-cast source ...), NOT the final value of its slot --
    # its exact expected-type comparison belongs to the ENCLOSING expr at ITS
    # finalizer (rule: mismatch rejected only at finalizers; `( 1 , "x" ) .
    # length` is a valid number, so the group must not be held to `number` at
    # its own reduce). Finalizers (`;` `,` `)` `]` `}` `:`) and assignment ops
    # (destructuring corner) are deliberately NOT here.
    _EXPR_EXTENDING_NEXT = frozenset({
        ".", "?.", "(", "[", "!", "`", "as", "?",
        "+", "-", "*", "/", "%", "**", "<<", ">>", ">>>",
        "<", ">", "<=", ">=", "==", "!=", "===", "!==",
        "&", "^", "|", "&&", "||", "??",
    })

    @classmethod
    def _next_token_extends_expr(cls, full_tokens, epos):
        if epos is None or epos + 1 >= len(full_tokens):
            return False
        return full_tokens[epos + 1].value in cls._EXPR_EXTENDING_NEXT

    @staticmethod
    def _grouping_open(full_tokens, i):
        """full_tokens[i] is a GROUPING `(` (an expr's own paren): not a call open
        (preceded by ident / `)` / `]`)."""
        if i < 0 or full_tokens[i].value != "(":
            return False
        # NOTE: do NOT test token.type against CALL_OPEN -- the context-free lexer
        # types EVERY '(' as CALL_OPEN (grouping-vs-call is the parser's call, not
        # the lexer's); like _reduced_is_grouped_operand, classify by the SHAPE of
        # the preceding terminal only.
        if i - 1 >= 0:
            pv = full_tokens[i - 1]
            if pv.type in ("IDENT", "RPAR", "RSQB") or pv.value in (")", "]"):
                return False
        return True

    @classmethod
    def _is_grouped_list_operand(cls, full_tokens, spos):
        """True if the span starting at ``spos`` sits in a DIRECT operand slot of a
        grouping-paren comma list: the previous terminal is a grouping `(` itself,
        or a `,` whose innermost unclosed opener is a grouping `(`. Array `[`,
        call `(` and param covers are excluded (their operand semantics differ:
        call args / array elements each keep their own expected check)."""
        if spos <= 0:
            return False
        prev = full_tokens[spos - 1]
        if prev.value == "(":
            return cls._grouping_open(full_tokens, spos - 1)
        if prev.value != ",":
            return False
        # innermost unclosed opener before the comma
        depth = 0
        for j in range(spos - 2, -1, -1):
            v = full_tokens[j].value
            if v in (")", "]", "}"):
                depth += 1
            elif v in ("(", "[", "{"):
                if depth == 0:
                    return v == "(" and cls._grouping_open(full_tokens, j)
                depth -= 1
        return False

    @staticmethod
    def _arg_start_call_open_index(full_tokens, spos):
        """Index of the call '(' whose argument list has an argument STARTING at
        token ``spos``, else None. Only DIRECT argument starts qualify (the token
        before spos is that call's '(' or one of its depth-0 ',' separators):
        an Exp nested inside a composite argument (array/object literal element,
        grouped operand) is NOT an argument start -- applying the enclosing
        call's per-argument candidate set there would compare the INNER value
        against the WHOLE-argument parameter types (observed design risk: an
        array element passing via a sibling overload's scalar param, delaying
        the reject past the introducing token)."""
        j = spos - 1
        if j < 0:
            return None
        t = full_tokens[j]
        if t.value == ",":
            # find the ',' separator's container going left
            depth = 0
            j -= 1
            while j >= 0:
                v = full_tokens[j]
                if v.type == "RPAR" or v.value in (")", "]", "}"):
                    depth += 1
                elif v.type == "CALL_OPEN" or v.value in ("(", "[", "{"):
                    if depth == 0:
                        break
                    depth -= 1
                j -= 1
            if j < 0:
                return None
            t = full_tokens[j]
        if t.type != "CALL_OPEN" and t.value != "(":
            return None
        if j == 0:
            return None
        pv = full_tokens[j - 1]
        # call-'(' iff preceded by a callee (mirrors _paren_opens_arrow_region's
        # complement); a NEW constructor's CALL_OPEN follows the class ident too.
        if pv.type in ("IDENT", "RPAR", "RSQB") or pv.value in (")", "]"):
            return j
        return None

    def _overload_expected_set(self, sig, code_before_expr, contextual):
        """Overload candidate expected types at an argument position (user design,
        overload_design_ko section 4): from the worker signatureHelp block, keep the
        candidates whose already-committed prefix args (0..argIndex-1) are
        assignable to their corresponding params -- a candidate the prefix already
        kills must NOT contribute its param type (soundness: `g(1, 5)` with
        (string,number)/(string,string)/(number,string) must not accept 5 via the
        dead first overload). Survivors' argIndex-th param types form the SET
        (existential: the arg passes if it fits ANY member -- see
        _interpretations). Returns None when there is no candidate info at all
        (not a call arg / no overloads) -> the single-contextual path. An EMPTY
        tuple means overloads exist but the committed prefix args killed EVERY
        one -> NO completion of this argument can make the call well-typed, so
        the position is dead and the item REJECTS (user rule "accept iff it fits
        any"; observed FA otherwise: `new Date("x", 3)` -- arg0 "x" fit the
        1-arg overload when written, arg1 retroactively kills every overload,
        and the call-REDUCE 2345 lies inside the arg spans that per-arg items
        filter away, so nothing else catches it). The contextual type is NOT
        excluded from the set (an empty set must mean "no survivors", not
        "survivors deduped into the contextual"); _interpretations dedups. The
        resolved candidate is ordered first (short-circuit only; no semantic
        effect)."""
        if not sig:
            return None
        cands = sig.get("candidates") or []
        if not cands:
            return None
        arg_index = sig.get("argumentIndex") or 0
        committed = sig.get("committedArgTypes") or []
        if len(committed) < arg_index:
            return None   # worker could not type the prefix args -> no set info
        order = list(range(len(cands)))
        ri = sig.get("resolvedIndex")
        if isinstance(ri, int) and 0 <= ri < len(cands):
            order.remove(ri)
            order.insert(0, ri)
        from constrainers.ts_expr_reachability import TypeScriptFrontierTypeOracle
        oracle = TypeScriptFrontierTypeOracle(self.ts, code_before_expr)
        out = []
        for i in order:
            cand = cands[i]
            expected = cand.get("expectedAtArg")
            if not expected:
                continue   # position beyond this overload's arity -> dead here
            if arg_index:
                prefix_params = cand.get("prefixParams") or []
                if len(prefix_params) < arg_index:
                    continue
                dead = False
                for j in range(arg_index):
                    src, tgt = committed[j], prefix_params[j]
                    # an untypeable pair cannot prove the candidate alive; treat
                    # as dead (FR direction, never FA)
                    if src is None or tgt is None or not oracle.assignable(src, tgt):
                        dead = True
                        break
                if dead:
                    continue
            if expected not in out:
                out.append(expected)
        return tuple(out)

    @staticmethod
    def _gate_paren_kind(full_tokens, open_i, expr_starts):
        """'function' / 'arrow' / None for the '(' at ``open_i``, decided by the
        GRAMMAR (user design), not token shape: a paren that STARTS an expr span
        (xt occurrence) is the expr's own leading paren -- the only paren whose
        contents can be arrow params. A CALL '(' (after xs.map) or a control
        header '(' never starts an expr (the call expr starts at its callee, the
        condition inside the parens), so they are excluded naturally. The one
        keyword case: '(' right after FUNCTION is that function's param paren
        (the anonymous-function expr starts at `function`, not '(')."""
        if open_i > 0 and full_tokens[open_i - 1].type == "FUNCTION":
            return "function"
        if open_i in expr_starts:
            return "arrow"
        return None

    @staticmethod
    def _param_paren_kind(full_tokens, open_i):
        """'function' / 'arrow' / None for the '(' at ``open_i`` opening a param
        list (anonymous-function params / arrow params / neither=call)."""
        if open_i > 0 and full_tokens[open_i - 1].type == "FUNCTION":
            return "function"
        if TypeSemanticConstrain._paren_opens_arrow_region(full_tokens, open_i):
            return "arrow"
        return None

    def _param_gate(self, full_tokens, full_text, expr_starts=frozenset()):
        """spec 7.3/7.4/7.7 param-diagnostic gate for arrow / anonymous-function
        parameter lists. Synthetically CLOSE + complete the params (`... => undefined
        as any` for an arrow, `...{}` for a `function`) and ask TS:

        - COUNT excess (2345 "provides too few arguments"): reject on ANY step -- an
          over-full callback is unfixable by adding more params, so the excess param
          must be blocked now (arrow params allow a trailing comma, so `)` stays open
          as the escape).
        - param TYPE mismatch (2345 "Types of parameters ... incompatible"): reject
          ONLY when the current token FINALIZES a param type -- a ',' (next param) or
          the ')' that closes the list. A still-building type (`string`, `string |`,
          `string [`) may yet extend to an assignable one (`string | number`), so it
          is deferred; the finalizer is the point after which no extension is possible
          (the model could still have chosen '|' / '[' instead, so this is an escape,
          not a trap).

        Params are BINDINGS (not Exprs), so this diagnostic gate -- not the per-arg
        Expr check -- is how their count/type is enforced. Returns (reject, open_i):
        ``open_i`` is the index of the '(' the gate probed (None when no gate paren
        applies) -- the caller uses it to see whether a GROUPED reading of that
        same paren is still alive (two-path existential: a gate failure only kills
        the LAMBDA reading)."""
        n = len(full_tokens)
        if n == 0:
            return False, None
        cand = full_tokens[-1]
        cand_close = cand.type == "RPAR" or cand.value == ")"
        cand_comma = cand.value == ","
        # (B) the candidate ')' SEALS the expr's leading param paren -> FINAL
        #     check (excess + type mismatch), NESTING-INDEPENDENT (user design:
        #     "param completion = the expr's FIRST paren pair closing"; the ')'
        #     seals the LAST param exactly as a ',' seals the earlier ones).
        #     Anchored on THIS ')''s own matching opener -- the old order ran
        #     the innermost-unclosed scan first, saw the enclosing CALL '(' in
        #     nested cases (`xs.map((a: string)`) and returned early, skipping
        #     the finalize (the mismatch then surfaced only at the arrow's
        #     REDUCE, tokens later).
        if cand_close:
            depth = 0
            mopen = None
            for i in range(n - 1, -1, -1):
                t = full_tokens[i]
                if t.type == "RPAR" or t.value == ")":
                    depth += 1
                elif t.type == "CALL_OPEN" or t.value == "(":
                    depth -= 1
                    if depth == 0:
                        mopen = i
                        break
            if mopen is not None:
                kind = self._gate_paren_kind(full_tokens, mopen, expr_starts)
                if kind is not None:
                    completion = full_text + ("{}" if kind == "function" else " => undefined as any")
                    diags = self._param_gate_diags(completion)
                    if _diag_is_param_excess(diags) or _diag_is_param_type_mismatch(diags):
                        return True, mopen
                    return False, mopen
            # a call ')' (or unmatched) -- fall through to (A)
        # (A) params still open: innermost unclosed '('.
        depth = 0
        open_i = None
        for i in range(n - 1, -1, -1):
            t = full_tokens[i]
            if t.type == "RPAR" or t.value == ")":
                depth += 1
            elif t.type == "CALL_OPEN" or t.value == "(":
                if depth == 0:
                    open_i = i
                    break
                depth -= 1
        if open_i is not None:
            kind = self._gate_paren_kind(full_tokens, open_i, expr_starts)
            if kind is None:
                return False, None   # a call/header '(' -- not an expr start; excess ARGS handled by _diag_is_excess_arg
            # A parameter diagnostic can change only when a top-level parameter
            # starts or a top-level comma is added. While the current parameter's
            # name/type grows, count is unchanged and type mismatch is intentionally
            # deferred to ',' / ')' below. Exact-code API caching cannot remove
            # those growing-prefix misses, so avoid issuing them in the first place.
            if not self._list_structure_changed(full_tokens, open_i, n):
                return False, open_i
            completion = full_text + ("){}" if kind == "function" else ") => undefined as any")
            diags = self._param_gate_diags(completion)
            if _diag_is_param_excess(diags):
                return True, open_i
            # A ',' finalizes a param TYPE only at the PARAM-LIST level -- a ',' inside
            # a bracketed type (`[a, b]` tuple, `{...}` object type, nested `(...)`) of a
            # param's annotation is NOT a separator. Treating it as one synthesizes a
            # BROKEN completion (`(subArr: [number,) => ...`) whose unclosed bracket
            # spuriously reports a param-type mismatch (mbpp/272 `forEach((subArr:
            # [number, string, number]) => ...)` false-reject). Only fire when the
            # candidate ',' sits at bracket-depth 0 within the param paren.
            comma_sep = cand_comma
            if cand_comma:
                d = 0
                for t in full_tokens[open_i + 1:n - 1]:
                    v = t.value
                    if v in ("[", "{", "("):
                        d += 1
                    elif v in ("]", "}", ")"):
                        d -= 1
                comma_sep = d == 0
            if comma_sep and _diag_is_param_type_mismatch(diags):
                return True, open_i
            return False, open_i
        return False, None

    def _generic_param_annotation_violation(self, full_tokens, full_text, cum,
                                            bnd_active, bnd_reduced, expressions):
        """Require annotations only in the parameter region of an ACTIVE Exp.

        For each FREE (param, bnd=False) ident inside the active function/arrow
        occurrence being built, ask the enclosing call's overload-candidate set (the R50
        signatureHelp machinery, anchored at the ARGUMENT start with the STABLE
        code-before-arg -- candidates arrive UNinstantiated there, which is
        exactly what we want to see). If ANY candidate types THIS param position
        (the ident's index within the callback's param list) as an uninstantiated
        TYPE PARAMETER (U/T -- its meaning depends on LATER arguments, e.g.
        reduce's accumulator), the param must be annotated:
          - the ident is the LAST token -> accept (the ':' may still come);
          - otherwise the NEXT terminal must be ':' -> anything else REJECTS;
          - once ':' follows the parameter in the current terminal stream, that
            parameter is complete for this gate and needs no further query.

        Candidate state is never written to a persistent memo. A trial branch
        containing ':' passes locally; only if that branch is selected does ':'
        become part of ``self.terminals`` and keep proving completion later.
        Likewise, a committed ')' / '=>' ends the parameter region, so function
        body generation never revisits its parameters. This keeps the check
        occurrence-local instead of rescanning every historical parameter in
        the file on every candidate.
        A U only in the callback's RETURN type (e.g. map's `=> U`) does NOT
        force -- it does not affect the param's own typing. Plain `any` does not
        force either (implicit-any is policy-allowed). Returns True to REJECT."""
        from constrainers.ts_expr_reachability import _ptype, FunctionPType
        n = len(full_tokens)
        committed_n = len(self.terminals)
        active_expr_starts = {
            spos for spos, epos, _values in expressions if epos is None
        }
        if not active_expr_starts:
            return False

        # Attribute occurrences give us the only positions that can be
        # parameters. Build parameter ranges from ACTIVE expression owners,
        # then visit only occurrences in those ranges (plus a bare active ident).
        # This avoids even iterating historical bnd occurrences from completed
        # functions on every candidate.
        from bisect import bisect_left, bisect_right
        bnd_positions = sorted(set(bnd_active) | set(bnd_reduced))
        bnd_position_set = set(bnd_positions)
        param_owner = {}
        for spos in active_expr_starts:
            if spos >= n:
                continue
            tok = full_tokens[spos]
            param_open_i = None
            if tok.type == "CALL_OPEN" or tok.value == "(":
                param_open_i = spos
            elif tok.type == "FUNCTION":
                for i in range(spos + 1, n):
                    t = full_tokens[i]
                    if t.type == "CALL_OPEN" or t.value == "(":
                        param_open_i = i
                        break
                    if t.value in ("{", "=>"):
                        break
            if param_open_i is None:
                continue
            close_i = self._matching_close(full_tokens, param_open_i)
            if close_i is not None and close_i < committed_n:
                continue
            end_i = close_i if close_i is not None else n
            lo = bisect_right(bnd_positions, param_open_i)
            hi = bisect_left(bnd_positions, end_i)
            for p in bnd_positions[lo:hi]:
                param_owner[p] = param_open_i

        positions_to_check = sorted(
            p for p in (set(param_owner) | (active_expr_starts & bnd_position_set))
            # ':' completes this gate. A trial ':' excludes the position only
            # in that branch; once committed it stays out on every later step.
            if p + 1 >= n or full_tokens[p + 1].value != ":"
        )
        for p in positions_to_check:
            if p >= n:
                continue
            tok = full_tokens[p]
            if tok.type not in self._bnd_syms or not self._is_bare_ident(tok.value):
                continue
            # REDUCED value wins (kind-matched; the active entry keeps prediction
            # FOSSILS -- a body value-ref `a` in `(a: T) => a + ...` still shows a
            # stale False in active and was wrongly treated as a param here).
            # v2 (annotation-optional) grammar: a bare cover param rides the
            # `expr` item, so it carries NO False lineage at all -- the param
            # future is visible only token-shape-wise (same fold-in as (2b)):
            pv = bnd_reduced.get(p) if p in bnd_reduced else bnd_active.get(p, ())
            if (False not in pv
                    and not self._spos_in_potential_arrow(
                        full_tokens, p, active_expr_starts)):
                continue   # not a param lineage
            param_open_i = param_owner.get(p)

            if param_open_i is not None:
                # inside an ANNOTATION (`a : number` -- the type name is a bare
                # IDENT in the arrow window too): a ':' between the last ','/'('
                # and p means p sits in a type position, not a param slot.
                in_annotation = False
                for j in range(p - 1, param_open_i, -1):
                    v = full_tokens[j].value
                    if v == ",":
                        break
                    if v == ":":
                        in_annotation = True
                        break
                if in_annotation:
                    continue
                arg_start = param_open_i
                param_index = sum(
                    1 for j in range(param_open_i + 1, p)
                    if full_tokens[j].value == ","
                )
            else:
                # A bare arrow parameter is its own active expression. An ident
                # elsewhere in the prefix is not owned by the current check.
                if p not in active_expr_starts:
                    continue
                arg_start = p
                param_index = 0
            # A committed bare arrow has left its parameter region. Parenthesized
            # forms are handled by the committed-close check above.
            if (p + 1 < committed_n
                    and (full_tokens[p + 1].type == "ARROW"
                         or full_tokens[p + 1].value == "=>")):
                continue
            # A bare potential arrow parameter that is not a DIRECT call
            # argument cannot have call-site signature help. Asking anyway was
            # rebuilding the growing TypeScript program at nearly every plain
            # active identifier, only to receive an empty result. Parenthesized
            # and `function (...)` parameter regions keep the old probe because
            # their owner/context can sit outside the parameter opener.
            direct_call_i = self._arg_start_call_open_index(full_tokens, arg_start)
            skip_signature = param_open_i is None and direct_call_i is None
            if skip_signature:
                sig = None
            else:
                sig = self._signature_help_for_reduced(
                    full_text[:cum[arg_start]], cum[arg_start])
            forced = False
            if sig:
                for cand in (sig.get("candidates") or ()):
                    cb = _ptype(cand.get("expectedAtArg"))
                    if not isinstance(cb, FunctionPType):
                        continue
                    params = cb.call_signature
                    if param_index >= len(params):
                        continue
                    if params[param_index].type_params():
                        forced = True
                        break
            else:
                # NO signature at the argument position: an `any` CALLEE has no
                # resolvable signature (`test_tuple.every(`), and a plain
                # `const a: any = <hole>` is not a call at all. An ANY-expected
                # slot cannot type an arrow param from context either, so force
                # the annotation exactly like an uninstantiated generic (user
                # design: "when expected is any, require ':' on arrow parameters; a bare
                # parameter cannot be annotated without '(', so reject it to
                # require the (x: T) => form"). A signature whose param is CONCRETE `any` (`(x: any)
                # => void` in lib) still contextually types the param and does
                # NOT force (the sig branch above).
                expected_at_arg = self._expected_type_for(
                    full_text[:cum[arg_start]])
                forced = (expected_at_arg or "").strip() == "any"
            if not forced:
                continue
            bare = param_open_i is None
            if p == n - 1:
                # A PARENTHESIZED param can still be annotated (the ':' may come);
                # a BARE param (no cover '(') CANNOT -- annotating needs '('. So a
                # bare generic param is only viable as a value/function REFERENCE
                # (`Number`); if it cannot even grow into one, it is a doomed bare
                # arrow param -> reject NOW to force the `(x: T) => ...` form,
                # instead of only catching it at the '=>' (user design: reject at
                # the problem-introducing token; a generic param needs '(').
                if bare and not self._bnd_value_ref_prefix_viable(
                        full_text[:cum[p]], full_tokens[p].value.strip()):
                    return True
                continue   # still typing: the ':' may come next (parenthesized)
            return True
        return False

    def _ident_is_reserved_word(self, _code_before_expr, ident):
        """Return whether an IDENT reading is a TypeScript hard-reserved word.

        This is lexical and context-independent, so a compiler completion request
        per identifier would only repeat the same answer. Contextual/type keywords
        are intentionally left to the parser and ordinary identifier checks.
        """
        return bool(ident) and ident in _TS_HARD_RESERVED_WORDS

    def _bnd_value_ref_prefix_viable(self, code_before_expr, prefix, strict=False):
        """True iff ``prefix`` can still GROW INTO a visible VALUE binding: some
        in-scope completion of a value kind (_VALUE_COMPLETION_KINDS) starts with
        it. Asked at the ident's START position, so the ask (and the ts layer's
        cache key) is stable while the ident grows -- one round-trip per
        occurrence, not per extension. NO soft-accept: an empty/failed
        completion answer means no such binding -> not viable.

        strict=True requires a STRICTLY LONGER completion (name != prefix): the ident
        as-is does NOT resolve, so it is only viable if it can grow into a longer real
        binding (`test` -> `test_tup`). Used for an arrow-DEAD value-ref where the ident
        can no longer be a param -- a complete-but-invalid name (`flat_list` self-ref,
        whose only completion is itself) then has no strict-longer growth and rejects."""
        if not prefix:
            return True   # nothing typed yet -> not a violation
        from lsp.TypeScriptCompilerAPI import _is_suppressed_ambient_global_value
        line, col = self._line_col(code_before_expr, len(code_before_expr))
        t0 = time.time()
        completions = self.ts.get_raw_completions(
            code_before_expr, line=line, col=col)
        self._add_stat("type_value_prefix_time", time.time() - t0)
        self._add_stat("type_value_prefix_count")
        for c in completions:
            name = str(c.get("name", "")) if isinstance(c, dict) else ""
            if (name.startswith(prefix)
                    and (not strict or len(name) > len(prefix))
                    and c.get("kind") in _VALUE_COMPLETION_KINDS
                    # SUPPRESSED ambient globals (not in the allowlist -- `eval`,
                    # `setTimeout`, ...) are hidden from the suggestion fill, so
                    # they must not make a prefix viable here either (user rule:
                    # "reject global candidates" -- suppression is a BAN, not just hiding).
                    # Observed live: `every(e =>` rejected by the ':' forcing grew
                    # e->ev->eval instead, riding this raw-completion check into
                    # a junk `every(eval(...))` escape (mbpp/222 s3).
                    and not _is_suppressed_ambient_global_value(c)):
                return True
        return False

    def _binding_kind_is_const(self, code_before_ident, ident):
        """True iff ``ident`` resolves (exact name) to a `const` binding at this
        position. Read from inspect() completions' kind -- scope-aware (an inner
        `let` shadowing an outer `const` reports 'let'). NO soft answer: unknown
        name / failed ask -> False (not our call here; the name checks own that)."""
        if not ident:
            return False
        line, col = self._line_col(code_before_ident, len(code_before_ident))
        t0 = time.time()
        completions = self.ts.get_raw_completions(
            code_before_ident, line=line, col=col)
        self._add_stat("type_const_gate_time", time.time() - t0)
        self._add_stat("type_const_gate_count")
        for c in completions:
            if isinstance(c, dict) and c.get("name") == ident:
                return c.get("kind") == "const"
        return False

    def _param_gate_diags(self, completion):
        t0 = time.time()
        diags = self.ts.semantic_diagnostics(completion)
        self._add_stat("type_param_gate_time", time.time() - t0)
        self._add_stat("type_param_gate_count")
        return diags

    def _assignment_target_diags(self, probe_code):
        """Syntactic AND semantic diagnostics of a write-target probe (a
        non-target LHS is a PARSE error in tsc, which semantic_diagnostics
        cannot see). Offsets are relative to ``probe_code``."""
        data = self.ts.inspect(
            probe_code, include_completions=False, include_symbols=False)
        diags = data.get("diagnostics", {}) if isinstance(data, dict) else {}
        return list(diags.get("syntactic", []) or []) + list(diags.get("semantic", []) or [])

    @staticmethod
    def _paren_opens_arrow_region(full_tokens, open_i):
        """True if the '(' at ``open_i`` MAY open arrow parameters: not a call '('
        (preceded by ident / ')' / ']') and not a control-flow header '('
        (if/while/for/switch/catch)."""
        t = full_tokens[open_i]
        if t.type != "CALL_OPEN" and t.value != "(":
            return False
        if open_i > 0:
            pv = full_tokens[open_i - 1]
            if pv.type in ("IDENT", "RPAR", "RSQB") or pv.value in (")", "]"):
                return False
            if pv.type in ("IF", "WHILE", "FOR", "SWITCH", "CATCH"):
                return False
        return True

    def _span_bnd_vals(self, kind, spos, full_tokens, bnd_active, bnd_reduced, expr_starts):
        """The GRAMMAR lineage of the position/span at ``spos`` as a bnd value
        set (None = no signal). KIND-MATCHED (a reduced ident reads its reduced
        occurrence -- the active entry keeps prediction FOSSILS of dead
        lineages). A span led by an opening '(' / '[' carries only fossil bnd at
        its own position (observed {True} at a '(', {False,True} at the '[' of a
        tuple pattern) -- scan inward, skipping opener positions, to the first
        IDENT, whose REDUCED value is the truth. A live False in the ACTIVE
        lineage (or an enclosing still-potential arrow paren) folds a False back
        in: the arrow-param reading is still open (two-path)."""
        if spos < len(full_tokens) and (
                full_tokens[spos].type == "CALL_OPEN"
                or full_tokens[spos].value in ("(", "[")):
            vals = None
            j = spos + 1
            while j < len(full_tokens):
                tj = full_tokens[j]
                if tj.type == "RPAR" or tj.value == ")":
                    break
                if tj.value in ("(", "[") or tj.type == "CALL_OPEN":
                    j += 1
                    continue
                inner = bnd_reduced.get(j) or bnd_active.get(j)
                if inner:
                    vals = set(inner)
                    if False in bnd_active.get(j, ()):
                        vals = vals | {False}
                    break
                j += 1
            return vals
        vals = set(bnd_reduced.get(spos, ()) if kind == KIND_EXPR_REDUCED
                   else bnd_active.get(spos, ()))
        # The False fold-in keeps a live param future open for a REAL bnd ident
        # whose kind-matched value is neutral ({True}). It must NOT manufacture a
        # signal when the kind-matched base is EMPTY: a keyword LITERAL's position
        # (`return null`) carries only prediction-FOSSIL bnd in the ACTIVE entry,
        # and folding {False} in made _cover_value_ref_drop treat the reduced
        # literal as a param binding and drop its item -- `return null;` skipped
        # its Expr-reduce assignability at the `;` (mbpp/440 timeout flood).
        if vals and (False in bnd_active.get(spos, ())
                     or self._spos_in_potential_arrow(full_tokens, spos, expr_starts)):
            vals = vals | {False}
        return vals or None

    def _cover_value_ref_drop(self, kind, spos, full_tokens, bnd_active, bnd_reduced,
                              gate_fail, expr_starts):
        """Grouped-vs-params judgment for a bare ident (or ident-led active span)
        in a cover paren -- user design (two-path existential), decided by the
        GRAMMAR's bnd lineages at the position instead of token shape (possible
        since the annotation-forced grammar removed `arrow_function: value_ident
        ARROW ...`, which used to give every expr-position ident a spurious
        bnd=False lineage -- the reason bnd could not gate this before):

        - bnd has no False (grouped-committed, e.g. the ident was followed by ','
          or ')'): the ident IS a value-ref -> KEEP the item; ACTIVE checks it as
          a prefix of some visible binding, REDUCED as an exact match. This is
          where `( zzz ,` now rejects AT the ',' instead of the group's REDUCE.
        - bnd has no True (param-committed, e.g. after `ident :`): a BINDING ->
          DROP; the param gate is the check.
        - both (still ambiguous, `( a` before ':'/','): existential over the two
          readings -- the LAMBDA reading covers the token iff the paren can still
          be arrow params AND the gate passed this step (then defer the value-ref
          check; the grouped reading is re-judged exactly when it commits). When
          the gate FAILED the lambda reading is dead, so the grouped value-ref
          check decides (keep). Accept iff either path passes.

        Values are read KIND-MATCHED (reduced item -> reduced occurrence): a
        reduced ident's stale ACTIVE prediction entry may still carry the dead
        param lineage. A '('-led ACTIVE span carries no bnd at its own position --
        its grouped-vs-params ambiguity lives on the idents INSIDE, so read the
        first bnd-carrying position after the '(' (reduced-first for the same
        staleness reason; observed: `( x : number` had the whole `( x` span
        checked as a grouped expr -> param ident rejected as undefined).
        Returns True to DROP the item."""
        # explicit two-path (user design): if the GROUPED path of the enclosing
        # cover is DEAD (a typed param committed / '=>' arrived), the contents
        # are parameters -- value-ref items do not apply at all (gate + FORCE
        # own them). Checked FIRST: bnd cannot see this (the typed item's
        # sibling idents keep their neutral True reduce).
        if self._cover_grouped_dead(full_tokens, spos, expr_starts):
            return True
        vals = self._span_bnd_vals(kind, spos, full_tokens, bnd_active, bnd_reduced, expr_starts)
        if not vals:
            return False
        if False not in vals:
            # v2 (annotation-optional) grammar: a bare cover param rides the
            # `expr` item (cover trick), so its bnd carries NO False lineage and
            # even its REDUCE is NEUTRAL (both futures share the parse; the
            # arrow tail decides later). A True-only ident inside a paren that
            # can still become arrow params is therefore AMBIGUOUS-by-shape:
            # defer like the two-path window (unless the param gate already
            # killed the arrow reading). The value-ref check re-engages the
            # moment the arrow window closes -- (1b)/(1c)/(1d) all guard on
            # _spos_in_potential_arrow, so `( zzz , 1 )` still rejects at the
            # first post-`)` non-arrow token.
            if (not gate_fail
                    and self._spos_in_potential_arrow(full_tokens, spos, expr_starts)):
                return True
            return False
        if True not in vals:
            return True
        if gate_fail:
            return False
        # Ambiguous (both readings live): an ACTIVE item is KEPT -- the two-path
        # runs uniformly in the analysis (user design): the value-ref reading
        # first (prefix while active, exact at reduce), and on failure the PARAM
        # reading via the PAIR-AWARE probe (_arrow_reading_probe closes open
        # pairs before the arrow, so `( [ a` probes `( [ a ] ) => undefined as
        # any`). Accept iff either reading passes.
        # A REDUCED bare ident in the ambiguous window is DEFERRED instead --
        # but ONLY when it sits in a potential-arrow COVER (`( a ,` may still be
        # params; the cover reduce is NEUTRAL and reduced items have no
        # param-path plumbing). A bare ambiguous ident that is NOT in a cover
        # (e.g. `return cp` / `const f = cp` -- ambiguous only because a bare
        # single arrow `cp => ...` is possible) must NOT be dropped: its REDUCE
        # is the finalizer's own commit (the `;` that killed the arrow), so the
        # value-ref + expected-type (assignability) check has to run there. Left
        # ungated this skipped return-type mismatches until the enclosing `}`
        # (type-s0 HumanEval/20: `return closestPairs;` where closestPairs is
        # number[] vs a [number, number] return type -> caught a token late at
        # `}`, and the model looped on whitespace to timeout).
        if kind == KIND_EXPR_REDUCED and self._spos_in_potential_arrow(
                full_tokens, spos, expr_starts):
            return True
        return False

    @staticmethod
    def _cover_item_paths(full_tokens, open_i, end_i):
        """Classify the COMMITTED items of the cover paren ``open_i`` (contents
        up to ``end_i`` exclusive) for the explicit two-path design (user):
        returns (has_param_only, has_value_only).

        - bare ident / bare tuple pattern (incl. prefixes)      -> BOTH paths
        - `ident :`-led / tuple-pattern + ':' (typed param)     -> PARAM-only
          (a typed param is not an expression: the GROUPED path DIES)
        - anything else (literal, operator expr, call, ...)     -> VALUE-only
          (cannot be a binding: the PARAM path DIES)
        Trailing incomplete items classify by prefix-compatibility."""
        _TUPLE_PAT = ("[", "IDENT", ",", "IDENT", "]")
        has_param_only = False
        has_value_only = False
        item = []
        depth = 0
        def classify(toks):
            nonlocal has_param_only, has_value_only
            if not toks:
                return
            if toks[0].type == "IDENT":
                if len(toks) == 1:
                    return              # bare ident -> both
                if toks[1].value == ":":
                    has_param_only = True   # typed param -> grouped dead
                    return
                has_value_only = True       # ident + operator/call/... -> param dead
                return
            if toks[0].value == "[":
                for k, t in enumerate(toks[:5]):
                    want = _TUPLE_PAT[k]
                    okk = (t.value == want) if want in ("[", ",", "]") else (t.type == "IDENT")
                    if not okk:
                        has_value_only = True
                        return
                if len(toks) <= 5:
                    return              # tuple pattern (or prefix) -> both
                if toks[5].value == ":":
                    has_param_only = True
                    return
                has_value_only = True
                return
            has_value_only = True           # literal / '(' / '{' / ... -> param dead
        for j in range(open_i + 1, end_i):
            t = full_tokens[j]
            if t.value in ("(", "[", "{") or t.type == "CALL_OPEN":
                depth += 1
            elif t.value in (")", "]", "}"):
                depth -= 1
            if depth == 0 and t.value == ",":
                classify(item)
                item = []
                continue
            item.append(t)
        classify(item)
        return has_param_only, has_value_only

    def _cover_grouped_dead(self, full_tokens, spos, expr_starts):
        """True iff ``spos`` sits in a cover paren whose GROUPED path is DEAD
        (a typed param committed, or '=>' arrived): the contents are params,
        so value-ref items/checks do not apply (gate + FORCE take over)."""
        open_i = self._enclosing_cover_open(full_tokens, spos, expr_starts)
        if open_i is None:
            return False
        n = len(full_tokens)
        close_i = self._matching_close(full_tokens, open_i)
        end_i = close_i if close_i is not None else n
        has_param_only, _ = self._cover_item_paths(full_tokens, open_i, end_i)
        if has_param_only:
            return True
        if close_i is not None and close_i + 1 < n:
            nx = full_tokens[close_i + 1]
            if nx.type == "ARROW" or nx.value == "=>":
                return True
        return False

    @staticmethod
    def _matching_close(full_tokens, open_i):
        d = 0
        for j in range(open_i, len(full_tokens)):
            t = full_tokens[j]
            if t.type == "CALL_OPEN" or t.value == "(":
                d += 1
            elif t.type == "RPAR" or t.value == ")":
                d -= 1
                if d == 0:
                    return j
        return None

    @staticmethod
    def _enclosing_cover_open(full_tokens, spos, expr_starts):
        """Innermost '(' containing ``spos`` (spos itself if it IS one) that
        STARTS an expr span -- the cover anchor shared with the param gate."""
        n = len(full_tokens)
        if spos >= n:
            return None
        if full_tokens[spos].type == "CALL_OPEN" or full_tokens[spos].value == "(":
            open_i = spos
        else:
            depth = 0
            open_i = None
            for i in range(spos - 1, -1, -1):
                t = full_tokens[i]
                if t.type == "RPAR" or t.value == ")":
                    depth += 1
                elif t.type == "CALL_OPEN" or t.value == "(":
                    if depth == 0:
                        open_i = i
                        break
                    depth -= 1
            if open_i is None:
                return None
        if open_i not in expr_starts:
            return None
        return open_i

    def _spos_in_potential_arrow(self, full_tokens, spos, expr_starts):
        """True iff the PARAM path of the cover paren containing ``spos`` is
        still ALIVE (user's explicit two-path design): the paren starts an expr
        span (same anchor as the gate), every committed item is still
        param-COMPATIBLE (bare ident / tuple pattern / typed param -- a literal
        or operator expr KILLS the param path permanently), and the tail has
        not committed grouped (')' followed by a non-'=>' / non-return-type
        token). While True, value-ref checks defer (the param reading may carry
        the token); the moment it turns False the deferred checks execute --
        including EARLY death: `( a , 1` kills params at the '1', so an
        undefined `a` is rejected right there, not at the ')'."""
        n = len(full_tokens)
        open_i = self._enclosing_cover_open(full_tokens, spos, expr_starts)
        if open_i is None:
            return False
        close_i = self._matching_close(full_tokens, open_i)
        end_i = close_i if close_i is not None else n
        _, has_value_only = self._cover_item_paths(full_tokens, open_i, end_i)
        if has_value_only:
            return False   # a non-binding item committed -> params impossible
        if close_i is None:
            return True  # still open -> arrow still possible
        nx = full_tokens[close_i + 1] if close_i + 1 < n else None
        # closed but not yet committed to grouped: nothing after ')' (boundary /
        # EOS finalizes) or '=>' next (arrow). A non-'=>' token commits grouped --
        # EXCEPT ':' which opens an arrow RETURN-TYPE annotation
        # (`(num: number): boolean => ...`): the paren stays potential-arrow while
        # the tokens after ':' are still a viable type (idents / '[' ']' / '|') and
        # either run to the boundary (type still being typed) or reach '=>'. Any
        # other token after the type commits the grouped reading as before. Without
        # this, the return-type annotation "committed grouped" and the whole arrow
        # body was value-ref-checked -> `(n: number): boolean => { if` rejected
        # `if` (observed live: HumanEval/96/82/72 derailed).
        if nx is None or nx.type == "ARROW" or nx.value == "=>":
            return True
        if nx.value == ":":
            for j in range(close_i + 2, n):
                t = full_tokens[j]
                if t.type == "ARROW" or t.value == "=>":
                    return True
                if t.type == "IDENT" or t.value in ("[", "]", "|"):
                    continue
                return False   # a non-type token: grouped reading committed
            return True        # boundary inside the type annotation: still viable
        return False

    @classmethod
    def _needs_separator(cls, prev_type, prev_value, nxt_value):
        """True if joining ``prev_value`` and ``nxt_value`` with NO space would
        re-lex into different tokens than the two originals. Cases:
          (1) two identifier chars merge   (`let`+`x` -> `letx`);
          (2) a numeric literal followed by `.`/`e`/`E` lexes as a float
              (`1`+`.toFixed()` -> `1.toFixed()`, where `1.` is a float -- a parse
              error that false-rejected a valid `1 .toFixed()`);
          (3) adjacent operator/punctuation chars merge into a longer operator
              (`+`+`+` -> `++`, `<`+`<` -> `<<`, `=`+`>` -> `=>`).
        Over-separating is always safe (a space is a valid token separator that
        never merges or splits a lexed token); only UNDER-separating corrupts the
        text and yields a wrong type / false verdict. (audit finding)"""
        if not prev_value or not nxt_value:
            return False
        a, b = prev_value[-1], nxt_value[0]
        if cls._is_ident_char(a) and cls._is_ident_char(b):
            return True
        # an expression-prefix keyword must be separated from a following
        # non-identifier token (`return"x"` / `typeof(` / `return[`), so the bare
        # keyword is never the trailing text of code_before (see _EXPR_PREFIX_KEYWORDS).
        if prev_value in _EXPR_PREFIX_KEYWORDS:
            return True
        if prev_type in ("NUMBER", "BIGINT") and (b == "." or b in "eE"):
            return True
        _OP = "+-*/%<>=!&|^~?."
        if a in _OP and b in _OP:
            return True
        return False

    def _reconstruct(self, full_tokens):
        """Rebuild source, preserving line terminators from terminal trivia.

        The transducer attaches preceding whitespace to each terminal's value.
        Keep its line terminators BETWEEN tokens: they affect ASI and restricted
        productions such as ``return`` and postfix ``++``. Horizontal whitespace
        is normalized with _needs_separator; literal contents stay unchanged.

        Returns ``(text, starts, ends)`` on the reconstructed text. Token spans
        exclude leading trivia, so TS query offsets and frontier coordinates
        still address the token itself, even after a preserved newline.
        """
        parts, starts, ends = [], [], []
        pos = 0
        prev_value = ""
        prev_type = None
        for t in full_tokens:
            raw_value = str(t.value)
            value = raw_value.lstrip()
            leading = raw_value[:len(raw_value) - len(value)]
            line_breaks = "".join(c for c in leading if c in "\r\n\u2028\u2029")
            # Comments and fences have no expression text, but any preceding
            # source line terminators still belong in the reconstructed code.
            if value.startswith("```") or t.type == "LINE_COMMENT":
                value = ""
            if line_breaks:
                parts.append(line_breaks)
                pos += len(line_breaks)
            elif value and prev_value and self._needs_separator(prev_type, prev_value, value):
                parts.append(" ")
                pos += 1
            starts.append(pos)
            parts.append(value)
            pos += len(value)
            ends.append(pos)
            if value:
                prev_value = value
                prev_type = t.type
        return "".join(parts), starts, ends

    def _build_expr_item(self, spos, epos, xt_values, full_tokens, full_text, cum, cum_end,
                         expr_starts,
                         bnd_active=None, bnd_reduced=None, gate_fail=False):
        n = len(full_tokens)
        if spos < 0 or spos >= n:
            return None
        # An Exp occurrence whose span starts at a STATEMENT keyword (return/throw)
        # is spurious -- an expression value cannot begin with one. The statement's
        # real expr is surfaced as a separate occurrence one terminal later with the
        # proper expected type, so this redundant item is dropped; it would also
        # probe a malformed `((return <expr>) as any)` fragment (the single biggest
        # probe cost in a return body).
        if full_tokens[spos].type in _STMT_KEYWORD_TYPES:
            return None
        # A `function <name> (...)` is a function DECLARATION (statement), never an
        # expression -- but FUNCTION is NOT in _STMT_KEYWORD_TYPES because an ANONYMOUS
        # function EXPRESSION (`function (...)`) IS a value. The real (transducer)
        # pipeline surfaces a spurious program-ROOT active Exp spanning the whole
        # `function name(...) {...}` declaration: the root expr_stmt prediction gets a
        # concrete span [_, 0] -> spos=1 (it consumed the ```typescript fence at
        # terminal 0), so the None-span program-root skip in iter_active_occurrences
        # misses it. Its reachability probe on a whole declaration fails -> it
        # false-rejects the next token (observed on the real sem_type run: every
        # `... i < numbers` etc. rejected -> derailment; offline fresh-lex replay does
        # NOT surface this item, which is why it slipped past the regression). Drop it.
        # Only a NAMED declaration (FUNCTION + IDENT) is dropped; an anonymous function
        # expression (FUNCTION + `(`) is kept and checked normally.
        if (full_tokens[spos].type == "FUNCTION"
                and spos + 1 < n and full_tokens[spos + 1].type == "IDENT"):
            return None
        spos_char = cum[spos]
        if epos is None:
            end_idx = n - 1
            end_char = len(full_text)
            kind = KIND_EXPR_ACTIVE
        else:
            if epos >= n:
                return None
            end_idx = epos
            end_char = cum_end[epos]
            kind = KIND_EXPR_REDUCED
        expr_text = full_text[spos_char:end_char]
        if not expr_text.strip():
            return None
        generic_probe = None
        generic_fin = None
        # A `{` at a BLOCK position (statement start, or after a block-preceder) opens a
        # statement BLOCK, not an object literal. But the grammar has no empty-block
        # production (it collides with empty object_literal), so an EMPTY block `{}`
        # parses as an empty object literal and surfaces -- ACTIVE and REDUCED -- as an
        # object-literal Exp. Probing that `{}` in its enclosing statement context
        # (`for(...) {}`) makes completed_type ok=False, which then false-rejects the
        # NEXT statement (`for(...){} return ...` -> reject at `return`). Drop every
        # block-position `{`-led item (either kind): a genuine object literal is only
        # ever preceded by an expression-context token (= ( [ , : return operator),
        # never a block-preceder, so no real object-literal check is ever dropped.
        if (full_tokens[spos].type == "LBRACE"
                and (spos == 0 or full_tokens[spos - 1].type in _BLOCK_BRACE_PRECEDERS)):
            return None
        if kind == KIND_EXPR_ACTIVE:
            # An ACTIVE Exp starting at `{` never gets an outer-frontier reachability
            # check: a STATEMENT block (see _BLOCK_BRACE_PRECEDERS) is not an
            # expression at all, and an OBJECT LITERAL (spec 7.5) is checked by its
            # value sub-exprs + its own REDUCE assignability, NOT by probing the
            # incomplete `{ key...` (whose reachability treats the property KEY as an
            # undefined value-ref -> false-reject `{ zero: 0 }` etc.). So we never
            # probe an active `{`-led occurrence.
            #
            # But the OPEN itself is gated (spec 7.5 + refinement): an object literal
            # `{` is viable ONLY when the expected type ADMITS an object (a record /
            # object type) or there is NO expected type. Against a concrete non-object
            # expected (number, string[], (x)=>y, ...) no object literal can ever be
            # assignable, so the `{` is a dead end -> reject it now (avoid derailing
            # the model into an unclosable literal). Otherwise drop the item (accept
            # the open; the completed literal is type-checked at REDUCE -- e.g.
            # `let o: {a: number} = {a: "x"}` still rejects there).
            if full_tokens[spos].type == "LBRACE":
                expected = (self._expected_type_for(full_text[:spos_char])
                            if (True in xt_values) else None)
                if expected is None or self._expected_admits_object(expected):
                    return None
                return TypeCheckItem(
                    kind=KIND_EXPR_ACTIVE, spos=spos, epos=epos,
                    code_before_expr=full_text[:spos_char], expr_text=expr_text,
                    terminals=(), xt_values=frozenset(xt_values),
                    expected_type=expected, objlit_dead=True,
                )
            # An active span led by an ident that may still be a PARAM (bnd has a
            # live False lineage) is judged by the two-path rule -- dropped only
            # while the lambda reading covers it (see _cover_value_ref_drop);
            # grouped-committed content is checked normally.
            if self._cover_value_ref_drop(KIND_EXPR_ACTIVE, spos, full_tokens,
                                          bnd_active or {}, bnd_reduced or {},
                                          gate_fail, expr_starts):
                return None
            # A GENERIC construct in progress (`new Map<number, string>(...`): the
            # frontier scanner would misread the type args as comparisons
            # (`Map < number`) and false-reject every type-argument token (observed
            # live; TCG supports this form and so does our grammar's type_args).
            # Do NOT defer -- CLIP the active span to just before the `<` so the
            # reachability check "can this class's construct instance reach the
            # expected type" keeps running exactly as it did at `new Set` (an
            # undefined class still rejects here); the type names are checked by
            # @TBOUND, call args by their own Exp items, the whole construct at
            # REDUCE.
            lt_i = self._generic_new_lt_index(full_tokens, spos)
            generic_probe = None
            generic_fin = None
            if lt_i is not None:
                # TYPE-ARGUMENT GATE (the lambda/function _param_gate's analogue,
                # user design "as with function-call/lambda argument checks"): while the type-argument
                # list of `new IDENT<` is being built, synthetically complete the
                # construct EVERY step and check the diagnostics in _analyze_active:
                # count EXCESS rejects on any step; a type-argument TYPE error (2344)
                # rejects only at a finalizer (','/'>'); when '>' closes the list
                # BOTH must be clean. Assignability of the whole construct
                # (Set<string> into Set<number>) stays at REDUCE.
                last = full_tokens[n - 1]
                gt_closed = any(
                    (full_tokens[j].type == "GT" or full_tokens[j].value == ">")
                    for j in range(lt_i + 1, n - 1))
                if not gt_closed:
                    if last.type == "GT" or last.value == ">":
                        generic_fin = "gt"
                    elif last.type == "COMMA" or last.value == ",":
                        generic_fin = "comma"
                    else:
                        generic_fin = "open"   # mid-argument: count-excess only
                    generic_probe = full_text[spos_char:]
                end_idx = lt_i - 1
                end_char = cum_end[end_idx]
                expr_text = full_text[spos_char:end_char]
            # A TOP-LEVEL `=>` (expr OR block body) makes the whole span an ARROW
            # FUNCTION -> defer to its REDUCE: drop the active item (params are
            # checked by _param_gate/@TBOUND, the body is its OWN expr occurrence).
            # This MUST run BEFORE the _arrow_block_index clip below: a block body
            # (`str => {`) would otherwise be clipped to just the header `str`,
            # hiding the `=>` from _top_level_arrow_index, so the clipped header
            # got analyzed against the slot's function type and the `{` was
            # false-rejected (HumanEval/113 -- `str => { return ... }` is valid TS;
            # only the EXPR-body arrow was correctly deferred before).
            if self._top_level_arrow_index(full_tokens, spos, end_idx) is not None:
                return None
            # A BLOCK-BODIED ARROW inside the span (`item => { const ...`): the
            # body is STATEMENTS, which the frontier cannot type -- clip the span
            # to just before the arrow (see _arrow_block_index). Only reached for a
            # NESTED block arrow (its `=>` is at depth > 0, so the top-level check
            # above did not fire); the clipped-away parts are checked elsewhere
            # (body items + the arrow's REDUCE).
            ab_i = self._arrow_block_index(full_tokens, spos, end_idx)
            if ab_i is not None:
                if ab_i <= spos:
                    return None
                end_idx = ab_i - 1
                end_char = cum_end[end_idx]
                expr_text = full_text[spos_char:end_char]
                if not expr_text.strip():
                    return None
            # (top-level `=>` already handled above -- both expr and block bodies
            # defer to REDUCE; mbpp/615 `subarray=>...reduce(...)/subarray` and
            # mbpp/804 `*` in the body were the expr-body cases this covers.)
            # An UNCLOSED object literal as the operand of a still-open binary /
            # assignment / ternary (`o < { a`, `o = { a`): clip the span to just
            # before the `{` -- see _objlit_operand_lbrace_index. The `{` open
            # itself (span ENDING at the `{`) is NOT clipped: the frontier judges
            # the open against the inverted goal (an object-admitting goal
            # accepts it, a concrete non-object goal rejects at the `{`).
            ob_i = self._objlit_operand_lbrace_index(full_tokens, spos, end_idx)
            if ob_i is not None and ob_i < end_idx:
                end_idx = ob_i - 1
                end_char = cum_end[end_idx]
                expr_text = full_text[spos_char:end_char]
                if not expr_text.strip():
                    return None
            # Drop spurious active occurrences that are not a live expression
            # prefix -- e.g. an inner paren_cover lineage surfaces `x)=>x` (an
            # unmatched `)` / completed tail) which is not a real active expr and
            # would wrongly fail check(). Reuse the existing viability helper
            # (handles unmatched-close / separator / completed-tail) instead of an
            # ad-hoc rule.
            from constrainers.ts_expr_context import is_viable_active_expr_prefix
            if not is_viable_active_expr_prefix(expr_text):
                return None
        terminals = self._frontier_terminals(full_tokens, spos, end_idx, spos_char, end_char, cum, cum_end, full_text)
        expected = None
        expected_set = None
        if True in xt_values:
            # Overload candidate set (user design): only at a DIRECT argument
            # start of a call -- there the per-argument candidate params ARE this
            # Exp's expected types. ACTIVE: bundled into the same contextual
            # inspect (hole == end of code_before_expr). REDUCED: separate ask
            # WITH the item's own text (instantiates generic candidates).
            call_i = self._arg_start_call_open_index(full_tokens, spos)
            if call_i is not None and kind == KIND_EXPR_ACTIVE:
                expected, sig = self._expected_type_for(
                    full_text[:spos_char], want_signature_help=True)
                expected_set = self._overload_expected_set(
                    sig, full_text[:spos_char], expected)
            else:
                expected = self._expected_type_for(full_text[:spos_char])
                if call_i is not None and kind == KIND_EXPR_REDUCED:
                    sig = self._signature_help_for_reduced(
                        full_text[:end_char], spos_char)
                    expected_set = self._overload_expected_set(
                        sig, full_text[:spos_char], expected)
        return TypeCheckItem(
            kind=kind, spos=spos, epos=epos,
            code_before_expr=full_text[:spos_char], expr_text=expr_text,
            terminals=terminals, xt_values=frozenset(xt_values), expected_type=expected,
            expected_types=expected_set,
            in_call_arg=(kind == KIND_EXPR_ACTIVE and self._in_call_arg_region(full_tokens, spos)),
            call_structure_changed=(
                kind == KIND_EXPR_ACTIVE
                and self._call_argument_structure_changed(full_tokens, end_idx)
            ),
            wrapped_operand=(kind == KIND_EXPR_REDUCED
                             and self._reduced_is_grouped_operand(full_tokens, spos, epos)),
            grouped_operand=(kind == KIND_EXPR_REDUCED
                             and self._is_grouped_list_operand(full_tokens, spos)),
            continued_operand=(kind == KIND_EXPR_REDUCED
                               and self._next_token_extends_expr(full_tokens, epos)),
            spread_operand=self._is_spread_operand(full_tokens, spos),
            spread_lit_elem=self._in_spread_array_literal(full_tokens, spos),
            open_arr_elem=self._in_open_array_literal(full_tokens, spos),
            generic_probe=(generic_probe if kind == KIND_EXPR_ACTIVE else None),
            generic_fin=(generic_fin if kind == KIND_EXPR_ACTIVE else None),
        )

    def _frontier_terminals(self, full_tokens, spos, end_idx, spos_char, end_char, cum, cum_end, full_text):
        """frontier-LOCAL ExprTerminals: each token char span clipped to
        [spos_char,end_char] then rebased by -spos_char, so terminal.start/.end
        are 0-based into expr_text and value == expr_text[start:end] (the contract
        ts_expr_frontier._terminals_in_span relies on)."""
        from constrainers.ts_expr_frontier import expr_terminal_from_parser_terminal
        out = []
        for i in range(spos, end_idx + 1):
            cs = max(cum[i], spos_char)
            ce = min(cum_end[i], end_char)
            if ce <= cs:
                continue
            out.append(expr_terminal_from_parser_terminal(
                full_tokens[i].type, full_text[cs:ce], cs - spos_char, ce - spos_char))
        return tuple(out)

    def _build_tbound_items(self, view, terminal_seq, full_text, cum, full_tokens, cum_end):
        """TBOUND items (spec 7.6). TWO cases:

        (a) ACTIVE -- the LAST terminal is a type-position IDENT (tbnd=True): the type
            name is still being GENERATED, so a PREFIX of a valid type is enough
            (`numb` on the way to `number` must be accepted).
        (b) EXACT -- the SECOND-to-last terminal is a type-position IDENT and the
            candidate now FOLLOWS it: the type name is COMPLETE (a type name is a
            single IDENT, so any following token finalises it), so it must be an
            EXACT valid type, not merely a prefix. This catches `let x: numb = 1`
            (`numb` is a prefix of `number` but not itself a type -> TS 2304). The
            escape stays open: while the name is active the model can still extend it
            (`numb` -> `number`); only finalising a non-type name is rejected."""
        items = []
        ignore = self.incremental_parser.base_parser.lexer_conf.ignore
        last = None
        for off in range(len(terminal_seq) - 1, -1, -1):
            if terminal_seq[off].type not in ignore:
                last = off
                break
        if last is not None:
            term = terminal_seq[last]
            idx = len(self.terminals) + last
            if term.type in self._tbnd_syms and True in view.nth_last(0, "tbnd") and idx < len(cum):
                spos_char = cum[idx]
                items.append(TypeCheckItem(
                    kind=KIND_TBOUND, spos=idx, epos=idx,
                    code_before_expr=full_text[:spos_char], expr_text=term.value,
                    terminals=(), xt_values=frozenset(), target_prefix=term.value.strip(),
                ))
        # (b) EXACT: type name completed by the just-added following token.
        n = len(full_tokens)
        if n >= 2 and True in view.nth_last(1, "tbnd"):
            p = n - 2
            prev = full_tokens[p]
            if prev.type in self._tbnd_syms and p < len(cum):
                pchar = cum[p]
                items.append(TypeCheckItem(
                    kind=KIND_TBOUND, spos=p, epos=p,
                    code_before_expr=full_text[:pchar], expr_text=prev.value,
                    terminals=(), xt_values=frozenset(), target_prefix=prev.value.strip(),
                    tbound_exact=True,
                ))
        return items

    def _expected_type_for(self, code_before_expr, want_signature_help=False):
        """Root contextual (expected) type at the Exp start (spec 5): TS
        getContextualType via inspect(). Returns None ONLY when the position
        genuinely has no contextual type (absent/any/unknown) -> caller uses
        accepts_any (well-typedness). An oracle FAILURE is NOT swallowed into None:
        that would silently downgrade an xt=True position to accept-anything, the
        un-instructed soft-error->accept the do-not-carry rule forbids. inspect() is
        robust on malformed input, so any genuine failure is left to propagate
        (loud) rather than masked into an accept (audit finding).

        OVERLOADED CALL ARGUMENTS (user design, overload_design_ko section 4):
        getContextualType returns a SINGLE type; at an argument slot of an OVERLOADED
        function it resolves to ONE overload, and on the still-incomplete prefix it
        commits EARLY (e.g. `.replace` -> `string`, so a replacer arrow false-rejected;
        `.reduce` -> the no-initial-value overload). The fix is NOT here: alongside this
        single ask, arg-position items also fetch the overload candidate SET at the same
        position (worker signatureHelp block via checker.getResolvedSignature -- still a
        position-anchored API ask), filter candidates dead under the already-committed
        prefix args (argIndex >= 1), and accept when the arg fits ANY surviving
        candidate. See _overload_expected_set / item.expected_types. When the position
        has no signatureHelp (not a call argument / no candidates) the single ask here
        remains the ONLY interpretation, exactly as before.

        ``want_signature_help=True`` bundles the candidate-set ask into THIS SAME
        inspect round-trip (same code, same hole) and returns (expected, signatureHelp)
        -- used by ACTIVE argument items whose hole is the end of code_before_expr."""
        cache_key = (code_before_expr, bool(want_signature_help))
        if cache_key in self._expected_context_cache:
            return self._expected_context_cache[cache_key]

        t0 = time.time()
        data = self.ts.inspect(code_before_expr, include_completions=False,
                               include_symbols=False, include_diagnostics=False,
                               include_signature_help=want_signature_help,
                               signature_anchor=(len(code_before_expr)
                                                 if want_signature_help else None),
                               # reads ONLY expectedType (+signatureHelp when asked);
                               # skip the original build unless sigHelp needs it.
                               skip_original_probe=not want_signature_help)
        self._add_stat("type_inspect_time", time.time() - t0)
        self._add_stat("type_inspect_count")
        et = (data or {}).get("expectedType")
        et = None if et in _NO_EXPECTED else et
        if want_signature_help:
            result = (et, (data or {}).get("signatureHelp"))
        else:
            result = et
        self._expected_context_cache[cache_key] = result
        return result

    def _signature_help_for_reduced(self, ask_code, spos_char):
        """Candidate-set ask for a REDUCED argument item: the ask code INCLUDES the
        item's own text (so tsc instantiates generic candidates from what is already
        written -- e.g. an annotated reduce callback pins U) and the anchor is the
        argument's start. signature_help_only skips the worker's hole program (a hole
        marker at either end of the argument text would corrupt the parse)."""
        t0 = time.time()
        data = self.ts.inspect(ask_code, include_completions=False,
                               include_symbols=False, include_diagnostics=False,
                               signature_help_only=True, signature_anchor=spos_char)
        self._add_stat("type_inspect_time", time.time() - t0)
        self._add_stat("type_inspect_count")
        return (data or {}).get("signatureHelp")

    def _update_defer_markers(self, view):
        # spec 7.3/7.4/7.7 defer (function/paren_cover param-diagnostic gate):
        # NOT YET IMPLEMENTED (see module docstring). Keep empty so every active
        # Exp is checked (sound). TODO: add the (-closed + diagnostic-pass gate.
        self.deferred_spos = set()

    def _type_keyword_completion_ok(self, item):
        """@TBOUND (spec 7.6): the type name being generated must match a TYPE-position
        completion. While it is still being typed (ACTIVE) a PREFIX is enough (`numb`
        on the way to `number`); once it is COMPLETE (item.tbound_exact -- a token
        already follows the name) it must be an EXACT type, else a prefix-but-not-a-
        type like `numb`/`boolea` would slip (TS 2304/2552). We read raw inspect()
        completions filtered to TYPE-kind entries (_TYPE_COMPLETION_KINDS). NO soft-
        accept: an empty type-completion set means no such type -> reject; a genuine
        oracle failure propagates rather than being masked into an accept."""
        prefix = (item.target_prefix or "").strip()
        if not prefix:
            return True   # nothing typed yet -> not a violation
        exact = item.tbound_exact
        # Built-in primitive type: an EXACT name is always valid; while still typing,
        # a prefix of one is a viable path. Either way, no inspect() round-trip.
        if exact:
            if prefix in _BUILTIN_TYPE_NAMES:
                return True
        elif any(b.startswith(prefix) for b in _BUILTIN_TYPE_NAMES):
            return True
        code = item.code_before_expr + prefix
        line, col = self._line_col(code, len(code))
        t0 = time.time()
        completions = self.ts.get_raw_completions(code, line=line, col=col)
        self._add_stat("type_tbound_time", time.time() - t0)
        self._add_stat("type_tbound_count")
        names = {
            c["name"]
            for c in completions
            if isinstance(c, dict)
            and c.get("name")
            # Built-in constructor globals (Map/Set/Array/...) surface as
            # kind='var' (lib: `declare var Map: MapConstructor`) though a
            # SAME-NAME interface makes them valid TYPE names (declaration
            # merging) -- `const m: Map<..` was tbound-rejected at the 'Map'.
            # Raw completions carry no type text, so recognize the fixed lib set;
            # plain value vars stay excluded.
            and (c.get("kind") in _TYPE_COMPLETION_KINDS
                 or (c.get("kind") == "var"
                     and c["name"] in _BUILTIN_CTOR_TYPE_NAMES))
            and c["name"] != "any"
        }
        if exact:
            return prefix in names
        return any(n == prefix or n.startswith(prefix) for n in names)

    @staticmethod
    def _line_col(code, offset):
        before = code[:offset]
        return before.count("\n"), offset - (before.rfind("\n") + 1)

    def _add_stat(self, key, value=1):
        self.statics[key] = self.statics.get(key, 0) + value
