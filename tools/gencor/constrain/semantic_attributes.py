"""Read-only view for extracting candidate-based semantic attributes from a
parser_state.

This pulls the parser_state traversal out of the constraint classes. It is
*pure*: it holds no statistics and does no domain interpretation (timing and
transforms such as ctx-to-string stay in the constraint that uses it). The
static set of attributed symbols is NOT computed here -- the constraint derives
it once from its ``incremental_parser`` and passes it to :meth:`future`.
"""

from constrain.semantic_constrain import semantic_attr_values


class TokenAttributeView:
    """A thin, read-only view over one ``parser_state``.

    Wraps the sem-lark candidate-attribute surface
    (``accumulated_attrs`` / ``attribute_stack`` / ``future_symbol_candidates``)
    and exposes only per-token attribute candidates.
    """

    def __init__(self, parser_state):
        self._ps = parser_state

    def nth_last(self, n, attr_name):
        """Candidate values of ``attr_name`` for the n-th-last terminal.

        No symbol filter is needed: ``semantic_attr_values`` returns nothing for
        a symbol that does not carry ``attr_name``.
        """
        term_idx = self._ps.terminal_index - n - 1
        if term_idx < 0:
            return set()

        values = set()
        for occurrence, attrs in self._ps.accumulated_attrs.items():
            if occurrence.kind != "terminal":
                continue
            if occurrence.start != term_idx:
                continue
            values.update(semantic_attr_values(attrs, "inh", attr_name))
        if values:
            return values

        for attr_state in reversed(self._ps.attribute_stack):
            span = attr_state.span
            if span is None:
                continue
            if not (span[0] <= term_idx <= span[1]):
                continue
            values.update(semantic_attr_values(attr_state.attrs, "inh", attr_name))
            if values:
                return values
        return values

    def future(self, attr_name, symbol_names, symbol_kind="terminal"):
        """Candidate values of ``attr_name`` across upcoming ``symbol_names``."""
        future_attrs = self._ps.future_symbol_candidates(
            symbol_names=symbol_names,
            symbol_kind=symbol_kind,
        )
        return {
            value
            for attrs in future_attrs.values()
            for value in semantic_attr_values(attrs, "inh", attr_name)
        }

    # ------------------------------------------------------------------ #
    # TYPE-constrain accessors (additive; nth_last/future are untouched, so the
    # variable-misuse / ummac / symbol-kind constrains keep working as-is).
    #
    # WHY these exist: for the TYPE check, `xt` lives on the expr/condition_expr
    # NONTERMINAL occurrences (ACCUMULATE_ATTRS expr.inh.xt / condition_expr.inh.xt),
    # NOT on terminals. nth_last() is terminal-indexed, so it cannot surface an
    # *active* (not-yet-reduced) expression's xt. These helpers instead read the
    # reduce spans from accumulated_attrs (occurrence.kind == "symbol") and the
    # predicted virtuals carried on attribute_stack entries.
    #
    # Used by TypeSemanticConstrain per spec sec.6: a REDUCED Exp (epos defined)
    # -> assignability check; an ACTIVE Exp (epos == None) -> reachability check;
    # all checked OUTERMOST-span-first.
    # ------------------------------------------------------------------ #

    def iter_reduced_occurrences(self, attr_name, symbol_names):
        """Yield ``(spos, epos, frozenset(values))`` for every REDUCED occurrence
        of a symbol in ``symbol_names``. ``epos`` is always defined => the Exp is
        completed (spec 6.1: reduce -> assignability). Empty (safe) when the
        grammar has no semantic runtime (``_NoAccumulatedAttrs.items()``)."""
        names = frozenset(symbol_names)
        for occ, attrs in self._ps.accumulated_attrs.items():
            # occurrence.kind is "symbol" for a reduced nonterminal, "terminal"
            # for a shifted terminal -- we want the nonterminal Exp occurrences.
            if occ.kind == "terminal" or occ.symbol not in names:
                continue
            values = set(semantic_attr_values(attrs, "inh", attr_name))
            # syn is unioned defensively (the TS semantics write only inh, so this
            # is empty today; harmless + future-proof for syn-writing grammars).
            values.update(semantic_attr_values(attrs, "syn", attr_name))
            yield occ.start, occ.end, frozenset(values)

    def iter_active_occurrences(self, attr_name, symbol_names):
        """Yield ``(spos, frozenset(values))`` for every ACTIVE (not-yet-reduced)
        occurrence, read from the predicted virtuals on the parse stack. ``spos``
        is the opener entry's ``span[1] + 1`` (the terminal index where the
        prediction begins), or 0 at the root entry (owner span is None). (spec 6.1
        option (a): expose the predicted-virtual start index.)"""
        names = frozenset(symbol_names)
        for attr_state in self._ps.attribute_stack:
            owner_span = attr_state.span
            # The program-root entry (span None) carries STATIC top-level grammar
            # predictions -- e.g. an expr_stmt `expr` at pos 0 -- that are NOT on
            # the live parse path (they linger even after the parse commits to a
            # decl/if/for/...). Surfacing them spuriously claims the whole
            # statement is an active expression (e.g. `let x:string=1` as an expr).
            # A REAL active expr always sits on an entry that has consumed
            # terminals (a concrete span); the program-level expr_stmt outer
            # (xt=False, well-typedness only) is caught when it reduces. So skip
            # None-span entries.
            if owner_span is None:
                continue
            spos = owner_span[1] + 1
            for vname, vset in attr_state.virtuals.items():
                if vname not in names:
                    continue
                values = set(semantic_attr_values(vset, "inh", attr_name))
                values.update(semantic_attr_values(vset, "syn", attr_name))
                yield spos, frozenset(values)

    # TODO: Use iter_active_occurrences and match the start position at the
    # type call site, then remove this duplicate accessor.
    def has_active_symbol(self, symbol_names, spos):
        names = frozenset(symbol_names)
        for attr_state in self._ps.attribute_stack:
            owner_span = attr_state.span
            if owner_span is None or owner_span[1] + 1 != spos:
                continue
            if any(vname in names for vname in attr_state.virtuals):
                return True
        return False

    # TODO: Switch type callers to iter_expr_occurrences and remove this alias.
    def iter_occurrences(self, attr_name, symbol_names):
        return self.iter_expr_occurrences(attr_name, symbol_names)

    def iter_expr_occurrences(self, attr_name, symbol_names):
        """All Exp occurrences (reduced + active) as ``(spos, epos, frozenset
        values)``, sorted OUTERMOST-FIRST (smallest spos first; spec sec.6).
        ``epos`` is None for active (=> reachability) and defined for reduced
        (=> assignability). Tie at equal spos: active before reduced (the outer
        open frontier precedes the inner completed sub-expr)."""
        items = [
            (spos, epos, vals)
            for spos, epos, vals in self.iter_reduced_occurrences(attr_name, symbol_names)
        ]
        items += [
            (spos, None, vals)
            for spos, vals in self.iter_active_occurrences(attr_name, symbol_names)
        ]
        items.sort(key=lambda it: (it[0], it[1] is not None, it[1] if it[1] is not None else -1))
        return items
