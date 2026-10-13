"""Proxy-based semantic candidate evaluator."""

from typing import Any, Callable, List, Optional, Tuple

from ...grammar import Rule
from ..utils import needs_runtime_context, validate_runtime_context
from ..values import (
    EMPTY_RECORD,
    AttrRecord,
    Candidate,
    ParentSource,
    ReductionTrace,
    RulePtrKey,
    CandidateSet,
)
from .base import CandidateEntryBuffer, CandidateEvaluatorBase


class DictExecutionAttrs:
    """Mutable dict-backed view for proxy semantic execution.

    Proxy semantic functions mutate this view through ``AttrNamespace``.

    :param candidate: Candidate whose records are materialized for execution.
    """

    def __init__(self, candidate: Candidate) -> None:
        self._candidate = candidate
        self.source = candidate.source
        self.inh = candidate.inh.to_dict()
        self.syn = candidate.syn.to_dict()
        self._dirty_inh = False
        self._dirty_syn = False

    def mark_dirty(self, kind: str) -> None:
        if kind == "inh":
            self._dirty_inh = True
        else:
            self._dirty_syn = True

    def set_value(self, kind: str, attr: str, value: Any) -> None:
        values = self.inh if kind == "inh" else self.syn
        missing = object()
        if values.get(attr, missing) == value:
            return
        values[attr] = value
        self.mark_dirty(kind)

    def to_candidate(self) -> Candidate:
        if not self._dirty_inh and not self._dirty_syn and self.source is self._candidate.source:
            return self._candidate
        inh = AttrRecord.from_mapping(self.inh) if self._dirty_inh else self._candidate.inh
        syn = AttrRecord.from_mapping(self.syn) if self._dirty_syn else self._candidate.syn
        return Candidate(inh, syn, self.source)


class AttrNamespace:
    """Proxy namespace for inherited or synthesized attributes.

    :param attrs: Backing attributes for one concrete candidate view.
    :param kind: Attribute namespace, either ``inh`` or ``syn``.
    :param allow_write: Whether assignment through this namespace is honored.
    """

    def __init__(self, attrs: DictExecutionAttrs, kind: str, allow_write: bool) -> None:
        object.__setattr__(self, "_attrs", attrs)
        object.__setattr__(self, "_kind", kind)
        object.__setattr__(self, "_allow_write", allow_write)

    def __getattr__(self, attr: str):
        values = self._attrs.inh if self._kind == "inh" else self._attrs.syn
        if attr in values:
            return values[attr]
        if self._kind == "inh":
            raise AttributeError("Missing inherited semantic attribute %r" % attr)
        return None

    def __setattr__(self, attr: str, value: Any) -> None:
        if not self._allow_write:
            return
        self._attrs.set_value(self._kind, attr, value)


class SymbolProxy:
    """Proxy object passed to traditional semantic functions.

    :param attrs: Backing attributes for the symbol.
    :param allow_inh_write: Whether ``.inh`` assignments should update attrs.
    :param allow_syn_write: Whether ``.syn`` assignments should update attrs.
    """

    def __init__(
        self,
        attrs: DictExecutionAttrs,
        allow_inh_write: bool=False,
        allow_syn_write: bool=False,
    ) -> None:
        self._attrs = attrs
        self._allow_inh_write = allow_inh_write
        self._allow_syn_write = allow_syn_write

    def __getattr__(self, attr: str):
        if attr == "inh":
            return AttrNamespace(self._attrs, "inh", self._allow_inh_write)
        if attr == "syn":
            return AttrNamespace(self._attrs, "syn", self._allow_syn_write)
        raise AttributeError("Use .inh.%s or .syn.%s for semantic attributes" % (attr, attr))


class IgnoredAttrNamespace:
    """Proxy namespace for a future RHS slot that is not writable yet.

    :param kind: Attribute namespace, either ``inh`` or ``syn``.
    """

    def __init__(self, kind: str) -> None:
        self.kind = kind

    def __getattr__(self, attr: str):
        if self.kind == "inh":
            raise AttributeError("Missing inherited semantic attribute %r" % attr)
        return None

    def __setattr__(self, attr: str, value: Any) -> None:
        if attr == "kind":
            object.__setattr__(self, attr, value)


class IgnoredSymbolProxy:
    """Proxy for a future RHS occurrence during child-inherited evaluation."""

    def __getattr__(self, attr: str):
        if attr == "inh":
            return IgnoredAttrNamespace("inh")
        if attr == "syn":
            return IgnoredAttrNamespace("syn")
        raise AttributeError("Use .inh.%s or .syn.%s for semantic attributes" % (attr, attr))


class RhsProxy:
    """Sequence-like proxy for RHS symbols passed to semantic functions.

    Child-inherited evaluation exposes only the consumed RHS prefix plus the
    current target child. If legacy proxy semantics writes to a later RHS index,
    that write is ignored until the evaluator reaches that child and replays the
    same semantic call with that index present and writable.

    :param children: Attribute objects for RHS symbols.
    :param write_index: Child index whose inherited attrs may be written, or
        ``None`` when every child may be written.
    :param allow_child_inh_write: Whether child inherited writes are enabled.
    """

    def __init__(
        self,
        children: List[DictExecutionAttrs],
        write_index: Optional[int]=None,
        allow_child_inh_write: bool=False,
    ) -> None:
        self.children = children
        self.write_index = write_index
        self.allow_child_inh_write = allow_child_inh_write
        self._ignored_child = IgnoredSymbolProxy()

    def __getitem__(self, index: int) -> SymbolProxy:
        if index < 0 or index < len(self.children):
            allow_inh_write = self.allow_child_inh_write and (
                self.write_index is None or index == self.write_index
            )
            return SymbolProxy(
                self.children[index],
                allow_inh_write=allow_inh_write,
                allow_syn_write=False,
            )
        if self.allow_child_inh_write:
            return self._ignored_child
        return SymbolProxy(self.children[index], allow_inh_write=False, allow_syn_write=False)

    def __len__(self) -> int:
        return len(self.children)


class ProxyCandidateEvaluator(CandidateEvaluatorBase):
    """Evaluate traditional ``func(lhs, rhs, *args)`` semantic calls."""

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
        """Run one proxy child-inherited call and return only that child.

        :param func: Semantic function to execute.
        :param args: Literal arguments attached to the semantic rule.
        :param rule: Production containing the child occurrence.
        :param lhs_attrs: Candidate attributes for the production LHS. LHS
            writes are disabled in this mode.
        :param children: Consumed RHS prefix before the target child.
        :param target_attrs: Previous call result for the target child, or
            ``None`` before the first semantic call.
        :param context: Runtime context for ``@needs_context`` semantic calls.
        """

        child_index = len(children)
        target_entries = target_attrs.entries if target_attrs is not None else None
        target_source = ParentSource(RulePtrKey(rule, child_index))
        entries = []

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
            concrete_lhs = DictExecutionAttrs(lhs_candidate)
            concrete_children = [
                DictExecutionAttrs(candidate)
                for candidate in prefix_candidates
            ]
            target = Candidate(target_inh_record, EMPTY_RECORD, target_source)
            concrete_children.append(DictExecutionAttrs(target))
            lhs = SymbolProxy(concrete_lhs, allow_inh_write=False, allow_syn_write=False)
            rhs = RhsProxy(
                concrete_children,
                write_index=child_index,
                allow_child_inh_write=True,
            )
            validate_runtime_context(func, context)
            if needs_runtime_context(func):
                func(lhs, rhs, *args, context=context)
            else:
                func(lhs, rhs, *args)

            entries.append(
                (
                    concrete_children[child_index].to_candidate().inh,
                    parent_key,
                )
            )

        if target_iter is not None:
            try:
                next(target_iter)
            except StopIteration:
                pass
            else:
                raise AssertionError("child inherited prefix combination count changed")

        return CandidateEntryBuffer(target_source, entries)

    def reduce(
        self,
        calls: List[Tuple[Callable[..., Any], Tuple[Any, ...]]],
        rule: Rule,
        lhs_attrs: CandidateSet,
        children: List[CandidateSet],
        context: Any=None,
    ) -> Tuple[CandidateSet, Tuple[ReductionTrace, ...]]:
        """Run proxy reduction calls while preserving candidate relations."""

        lhs_results = []
        traces = []

        for lhs_candidate, child_candidates in self._candidate_combinations(rule, lhs_attrs, children):
            concrete_lhs = DictExecutionAttrs(lhs_candidate)
            concrete_children = [
                DictExecutionAttrs(candidate)
                for candidate in child_candidates
            ]
            lhs = SymbolProxy(concrete_lhs, allow_inh_write=False, allow_syn_write=True)
            rhs = RhsProxy(concrete_children)

            for func, args in calls:
                validate_runtime_context(func, context)
                if needs_runtime_context(func):
                    func(lhs, rhs, *args, context=context)
                else:
                    func(lhs, rhs, *args)

            # TODO: Revisit whether reduction output needs to carry LHS inherited
            # attrs. It may be enough to keep synthesized attrs plus source/relation.
            final_lhs = concrete_lhs.to_candidate()
            final_children = tuple(child_candidates)
            lhs_results.append(final_lhs)
            traces.append(ReductionTrace(final_lhs, final_children))

        return (
            CandidateSet.from_candidates_with_relations(lhs_results, lhs_attrs),
            tuple(traces),
        )
