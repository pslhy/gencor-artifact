"""Shared candidate evaluator machinery."""

from itertools import product
from typing import Any, Callable, Dict, Iterable, List, Optional, Sequence, Tuple

from ...grammar import Rule
from ..utils import needs_runtime_context, validate_runtime_context
from ..values import (
    EMPTY_RECORD,
    ROOT_SOURCE,
    UNANCHORED_SOURCE,
    AttrRecord,
    Candidate,
    ParentSource,
    RulePtrKey,
    CandidateSet,
)


EMPTY_TERMINAL_ATTRS = CandidateSet(
    candidates=(Candidate(EMPTY_RECORD, EMPTY_RECORD, UNANCHORED_SOURCE),),
)


class MutableAttrRecord:
    """Execution-only mutable AttrRecord for one writable target record.

    Non-target records stay as immutable ``AttrRecord`` objects. The evaluator
    installs this record only where a semantic function may write, such as
    ``rhs[idx].inh``, ``lhs.syn``, or ``terminal.syn``.

    :param record: Immutable base record used for reads before the first write.
    :param kind: Attribute kind, used only for missing-attribute behavior.
    """

    __slots__ = ("_record", "_values", "_kind")

    def __init__(self, record: AttrRecord, kind: str) -> None:
        object.__setattr__(self, "_record", record)
        object.__setattr__(self, "_values", None)
        object.__setattr__(self, "_kind", kind)

    def __getattr__(self, attr: str) -> Any:
        values = self._values
        if values is not None and attr in values:
            return values[attr]
        record = self._record
        try:
            return getattr(record, attr)
        except AttributeError:
            if self._kind == "inh":
                raise AttributeError("Missing inherited semantic attribute %r" % attr)
            return None

    def __setattr__(self, attr: str, value: Any) -> None:
        if attr.startswith("_"):
            object.__setattr__(self, attr, value)
            return
        values = self._values
        record = self._record
        missing = object()
        if values is not None and attr in values:
            current = values[attr]
        else:
            try:
                current = getattr(record, attr)
            except AttributeError:
                current = missing
        if current == value:
            return
        if values is None:
            values = record.to_dict()
            object.__setattr__(self, "_values", values)
        values[attr] = value

    def to_record(self) -> AttrRecord:
        if self._values is None:
            return self._record
        return AttrRecord.from_mapping(self._values)


class CandidateEntryBuffer:
    """Unmaterialized child-inherited candidate entries between calls.

    Child inherited evaluation may run several semantic functions for the same
    RHS occurrence. During that sequence, the target child is not on the parser
    stack yet, so carrying a full ``Candidate`` after every function is
    unnecessary. This buffer keeps only the target inherited record plus the one
    LHS candidate key that produced it. Entries stay in execution order so the
    next semantic call can reuse the matching target row directly.

    :param source: Fixed source for the child occurrence being computed.
    :param entries: Raw ``(inh_record, parent_key)`` rows.
    """

    def __init__(
        self,
        source: ParentSource,
        entries: Sequence[Tuple[AttrRecord, Tuple[Any, ...]]],
        memo: Optional[Dict[Tuple[Any, ...], CandidateSet]]=None,
    ) -> None:
        self.source = source
        self.entries = tuple(
            (inh_record, tuple(parent_key))
            for inh_record, parent_key in entries
        )
        self._memo = memo

    def to_candidate_set(self) -> CandidateSet:
        """Materialize buffered rows as a ``CandidateSet`` once.

        The built set is a pure function of (source, entries) and every caller
        treats it as read-only (consumed via only_inh / copy / merge-as-other),
        so when a memo is provided we reuse a structurally identical set across
        calls (measured ~97.5% recurrence over a decode, ~880 distinct inputs).
        copy() shares the rebuilt-immutable refs and shields the cached canonical
        from any field reassignment by a caller.

        The memo lives on the evaluator, i.e. for one ParserState / one parse, and
        is freed when that parse ends (a fresh parse builds a fresh state). Its
        size is therefore bounded by one parse's distinct attribute valuations
        (action-local) -- no capacity cap. A value-carrying grammar on a single
        very long parse would grow it transiently, freed when the parse ends.
        """

        memo = self._memo
        if memo is not None:
            sig = (
                self.source.identity_key(),
                tuple((r.key, pk) for r, pk in self.entries),
            )
            cached = memo.get(sig)
            if cached is not None:
                return cached.copy()
        candidates = []
        parent_links = {}
        for inh_record, parent_key in self.entries:
            candidate = Candidate(inh_record, EMPTY_RECORD, self.source)
            candidates.append(candidate)
            CandidateSet._add_relation(parent_links, candidate.relation_key(), parent_key)
        normalized_parent_links = {
            key: tuple(values)
            for key, values in parent_links.items()
        }
        result = CandidateSet._from_normalized_parts(
            tuple(candidates),
            normalized_parent_links,
            {},
        )
        if memo is not None:
            memo[sig] = result
            return result.copy()
        return result


class CandidateEvaluatorBase:
    """Shared candidate selection and relation-preserving helpers."""

    def _lhs_candidates(self, lhs_attrs: CandidateSet) -> Tuple[Candidate, ...]:
        """Return parent candidates, or one empty parent if none are known.

        :param lhs_attrs: Candidate attributes for the production LHS.
        """

        return lhs_attrs.candidates_or_empty(ROOT_SOURCE)

    def _child_options(
        self,
        rule: Rule,
        lhs_candidate: Candidate,
        child_attrs,
        child_index: int,
    ) -> Tuple[Candidate, ...]:
        """Return candidates compatible with one selected parent candidate.

        :param rule: Production containing the dotted RHS occurrence.
        :param lhs_candidate: Selected LHS candidate.
        :param child_attrs: Candidate attributes already known for the child.
        :param child_index: Dot position before the selected RHS occurrence.
        """

        source = ParentSource(RulePtrKey(rule, child_index))
        if child_attrs is None or child_attrs.is_empty():
            return (Candidate.empty(source),)
        return child_attrs.compatible_with_source(source, lhs_candidate)

    def _candidate_combinations(
        self,
        rule: Rule,
        lhs_attrs: CandidateSet,
        children: List[Any],
    ) -> Iterable[Tuple[Candidate, Tuple[Candidate, ...]]]:
        """Enumerate ``Args`` input combinations for a production (popl27 attrparse.tex).

        For each parent (LHS) candidate, yields it together with one tuple of
        compatible RHS sibling candidates -- the cartesian product
        ``V_1 x ... x V_m`` of ``Args(p, *, iota_{X0}, Lambda_{X0}, sibs)``. The
        parent inherited inputs come from the single fixed LHS candidate
        (``i_ell = 0`` case); each sibling's candidates are filtered to the parent
        lineage by ``_child_options`` -> ``compatible_with_source`` (``i_ell > 0``
        case). An empty ``V_ell`` drops the combination.

        :param rule: Production ``p`` whose candidate view is being built.
        :param lhs_attrs: LHS candidates supplying ``iota_{X0}`` / ``Lambda_{X0}``.
        :param children: RHS sibling candidate sets.
        """

        for lhs_candidate in self._lhs_candidates(lhs_attrs):
            child_options = [
                self._child_options(rule, lhs_candidate, child, index)
                for index, child in enumerate(children)
            ]
            if any(not options for options in child_options):
                continue
            for picked_children in product(*child_options):
                yield lhs_candidate, picked_children

    def compute_terminal_attrs(
        self,
        funcs: Sequence[Callable[..., Any]],
        context: Any=None,
    ) -> CandidateSet:
        """Run terminal synthesized-attribute hooks.

        Terminal hooks receive an ``Candidate`` with a mutable
        synthesized record, so the public ``terminal.syn.x = ...`` API works
        without allocating a proxy wrapper.

        :param funcs: Terminal hook functions selected for the shifted token.
        :param context: Runtime context for ``@needs_context`` terminal hooks.
        """

        if not funcs:
            return EMPTY_TERMINAL_ATTRS.copy()
        terminal_syn = MutableAttrRecord(EMPTY_RECORD, "syn")
        terminal = Candidate(EMPTY_RECORD, terminal_syn, UNANCHORED_SOURCE)
        for func in funcs:
            validate_runtime_context(func, context)
            if needs_runtime_context(func):
                func(terminal, context)
            else:
                func(terminal)
        return CandidateSet(
            candidates=(
                Candidate(
                    EMPTY_RECORD,
                    terminal_syn.to_record(),
                    UNANCHORED_SOURCE,
                ),
            ),
        )

    def seed_child(
        self,
        rule: Rule,
        parent_attrs: CandidateSet,
        rhs_attrs: List[Any],
    ) -> CandidateSet:
        """Select existing candidates for one child without running a rule.

        :param rule: Parent grammar rule.
        :param parent_attrs: Attributes for the parent rule's LHS.
        :param rhs_attrs: Consumed RHS prefix before the target child.
        """

        child_index = len(rhs_attrs)
        entries = []
        for lhs_candidate, _picked_children in self._candidate_combinations(rule, parent_attrs, rhs_attrs):
            child = Candidate.empty(ParentSource(RulePtrKey(rule, child_index)))
            entries.append(
                (
                    child,
                    (CandidateSet.candidate_key(lhs_candidate),),
                    tuple(),
                )
            )
        return CandidateSet.from_entries(entries)
