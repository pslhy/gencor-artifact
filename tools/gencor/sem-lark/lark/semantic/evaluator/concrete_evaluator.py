"""Concrete semantic candidate evaluator."""

from typing import Any, Callable, Dict, List, Tuple

from ...grammar import Rule
from ..utils import needs_runtime_context, validate_runtime_context
from ..values import (
    EMPTY_RECORD,
    Candidate,
    ParentSource,
    ReductionTrace,
    RulePtrKey,
    CandidateSet,
)
from .base import CandidateEntryBuffer, CandidateEvaluatorBase, MutableAttrRecord


def _is_hashable(value: Any) -> bool:
    try:
        hash(value)
    except TypeError:
        return False
    return True


class ConcreteCandidateEvaluator(CandidateEvaluatorBase):
    """Evaluate ``func(lhs, rhs, idx, *args)`` with Candidate objects.

    The only object swapped in is the writable target record:
    ``rhs[idx].inh`` for child inherited evaluation and ``lhs.syn`` for
    reduction. All other candidates are passed through unchanged and are
    therefore read-only by normal ``AttrRecord`` immutability.
    """

    def __init__(self) -> None:
        super().__init__()
        # Cross-call memos scoped to this evaluator = one ParserState / one parse,
        # freed when the parse ends (a fresh parse builds a fresh state; gencor
        # resets to a fresh parse per generation). Their size is bounded by one
        # parse's distinct attribute valuations (action-local) -- no capacity cap.
        # Context-free child-inherited function value -> result record.
        self._inherited_value_memo: Dict[Tuple[Any, ...], Any] = {}
        # Materialized child-inherited candidate set
        # (CandidateEntryBuffer.to_candidate_set).
        self._materialize_memo: Dict[Tuple[Any, ...], Any] = {}

    @staticmethod
    def _call(
        func: Callable[..., Any],
        lhs: Candidate,
        rhs: List[Candidate],
        idx: int,
        args: Tuple[Any, ...],
        context: Any,
    ) -> None:
        validate_runtime_context(func, context)
        if needs_runtime_context(func):
            func(lhs, rhs, idx, *args, context=context)
        else:
            func(lhs, rhs, idx, *args)

    def apply_child_inherited(
        self,
        func: Callable[..., Any],
        args: Tuple[Any, ...],
        rule: Rule,
        lhs_attrs: CandidateSet,
        children: List[Any],
        target_attrs,
        context: Any=None,
    ) -> CandidateEntryBuffer:
        """Run one concrete child-inherited call and return only that child.

        :param func: Semantic function to execute.
        :param args: Literal arguments attached to the semantic rule.
        :param rule: Production containing the child occurrence.
        :param lhs_attrs: Candidate attributes for the production LHS. This is
            read-only for inherited-child evaluation.
        :param children: Consumed RHS prefix before the target child.
        :param target_attrs: Previous call result for the target child, or
            ``None`` before the first semantic call.
        :param context: Runtime context for ``@needs_context`` semantic calls.
        """

        child_index = len(children)
        target_entries = target_attrs.entries if target_attrs is not None else None
        target_source = ParentSource(RulePtrKey(rule, child_index))
        entries = []
        # The semantic function reads attribute VALUES (L-attributed), not
        # lineage, so combinations differing only in lineage (same LHS value +
        # same prefix values + same prior target record -- which refine forbids
        # collapsing) produce an identical result. Run the function once per
        # distinct value tuple and replicate the record to each lineage's entry
        # (measured avg 2.18 combinations -> 1.09 distinct values within a call).
        #
        # When the function is context-free its output depends ONLY on those value
        # tuples, so the memo is valid ACROSS calls too -- the same value tuple
        # recurs constantly over a decode (measured ~99.8% of evals, ~70 distinct
        # tuples for python_sem/uv_open). Reuse the parse-lifetime memo (freed when
        # the parse ends), disambiguated by (func, child_index, args). A
        # context-dependent function may return different records for the same
        # values at different positions, so it keeps a fresh per-call memo (context
        # is fixed within a call but not across calls).
        if needs_runtime_context(func) or not _is_hashable(args):
            result_cache: Dict[Tuple[Any, ...], Any] = {}
            memo_prefix: Tuple[Any, ...] = ()
        else:
            result_cache = self._inherited_value_memo
            memo_prefix = (id(func), child_index, args)

        target_iter = iter(target_entries) if target_entries is not None else None
        for lhs_candidate, prefix_candidates in self._candidate_combinations(rule, lhs_attrs, children):
            parent_key = CandidateSet.candidate_key(lhs_candidate)
            if target_iter is None:
                target_inh_record = EMPTY_RECORD
            else:
                try:
                    target_inh_record, previous_parent_key = next(target_iter)
                except StopIteration as exc:
                    raise AssertionError("child inherited target entry count changed") from exc
                if previous_parent_key != parent_key:
                    raise AssertionError("child inherited parent candidate changed")
            cache_key = memo_prefix + (
                lhs_candidate.inh.key,
                lhs_candidate.syn.key,
                tuple((c.inh.key, c.syn.key) for c in prefix_candidates),
                target_inh_record.key,
            )
            cached_record = result_cache.get(cache_key)
            if cached_record is None:
                target_inh = MutableAttrRecord(target_inh_record, "inh")
                rhs = list(prefix_candidates)
                rhs.append(Candidate(target_inh, EMPTY_RECORD, target_source))
                self._call(func, lhs_candidate, rhs, child_index, args, context)
                cached_record = target_inh.to_record()
                result_cache[cache_key] = cached_record
            entries.append((cached_record, parent_key))

        if target_iter is not None:
            try:
                next(target_iter)
            except StopIteration:
                pass
            else:
                raise AssertionError("child inherited prefix combination count changed")

        return CandidateEntryBuffer(target_source, entries, memo=self._materialize_memo)

    def reduce(
        self,
        calls: List[Tuple[Callable[..., Any], Tuple[Any, ...]]],
        rule: Rule,
        lhs_attrs: CandidateSet,
        children: List[CandidateSet],
        context: Any=None,
    ) -> Tuple[CandidateSet, Tuple[ReductionTrace, ...]]:
        """Run concrete reduction calls with ``idx == -1``."""

        lhs_results = []
        traces = []

        for lhs_candidate, child_candidates in self._candidate_combinations(rule, lhs_attrs, children):
            lhs_syn = MutableAttrRecord(lhs_candidate.syn, "syn")
            lhs = Candidate(lhs_candidate.inh, lhs_syn, lhs_candidate.source)
            rhs = list(child_candidates)

            for func, args in calls:
                self._call(func, lhs, rhs, -1, args, context)

            # TODO: Revisit whether reduction output needs to carry LHS inherited
            # attrs. It may be enough to keep synthesized attrs plus source/relation.
            final_lhs = Candidate(
                lhs_candidate.inh,
                lhs_syn.to_record(),
                lhs_candidate.source,
            )
            final_children = tuple(child_candidates)
            lhs_results.append(final_lhs)
            traces.append(ReductionTrace(final_lhs, final_children))

        return (
            CandidateSet.from_candidates_with_relations(lhs_results, lhs_attrs),
            tuple(traces),
        )
