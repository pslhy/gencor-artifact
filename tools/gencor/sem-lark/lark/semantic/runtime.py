"""Run user semantic equations over candidate-based attribute values."""

from typing import Any, Callable, Dict, List, Optional, Tuple

from ..grammar import Rule
from .evaluator import ConcreteCandidateEvaluator, ProxyCandidateEvaluator
from .utils import (
    ALL_TERMINALS,
    ignores_default,
)
from .values import ReductionTrace, CandidateSet


class SemanticEvaluator:
    """Runs semantic equations with fixed parser-level semantic configuration.

    :param default_func: Default semantic function applied to rules that do not
        opt out.
    :param initial_func: Semantic function applied to root rules.
    :param terminal_funcs: Terminal-specific synthesized attribute hooks.
    """

    def __init__(
        self,
        default_func: Optional[Callable[..., Any]]=None,
        initial_func: Optional[Callable[..., Any]]=None,
        terminal_funcs: Optional[Dict[str, List[Callable[..., Any]]]]=None,
        semantic_evaluator_kind: Optional[str]=None,
    ) -> None:
        self.default_func = default_func
        self.initial_func = initial_func
        self.terminal_funcs = terminal_funcs or {}
        evaluator_kind = semantic_evaluator_kind or "concrete"
        if evaluator_kind == "proxy":
            self._evaluator = ProxyCandidateEvaluator()
        elif evaluator_kind == "concrete":
            self._evaluator = ConcreteCandidateEvaluator()
        else:
            raise ValueError("Unknown semantic evaluator kind %r" % (evaluator_kind,))
        # Semantic result caches can speed up repeated speculative parsing, but
        # an unbounded cache grows with rule/attribute snapshots and a fixed cap
        # is a workload-specific heuristic. Keep this evaluator cache-free; if
        # more speed is needed, revisit a bounded or action-local memo.

    def semantic_calls(self, rule: Rule, include_initial: bool=True) -> List[Tuple[Callable[..., Any], Tuple[Any, ...]]]:
        """Collect ordered semantic calls for one grammar rule.

        :param rule: Grammar rule whose semantic calls should be collected.
        :param include_initial: Whether root-rule initialization calls should be
            included.
        """

        options = rule.options
        is_root_rule = rule.origin.name.startswith("$root_")
        sem_funcs = getattr(options, "sem_funcs", None)
        sem_func = options.sem_func

        calls: List[Tuple[Callable[..., Any], Tuple[Any, ...]]] = []
        if is_root_rule:
            if include_initial and self.initial_func is not None:
                calls.append((self.initial_func, ()))
            return calls

        ignored_default = bool(sem_funcs and any(ignores_default(func) for func, _args in sem_funcs))
        if self.default_func is not None and not (ignored_default or ignores_default(sem_func)):
            calls.append((self.default_func, ()))
        if sem_funcs:
            calls.extend(sem_funcs)
        elif sem_func is not None:
            calls.append((sem_func, ()))
        return calls

    def compute_terminal_attrs(self, token, context: Any=None) -> CandidateSet:
        """Compute synthesized attributes attached to a shifted terminal.

        :param token: Token being shifted.
        :param context: Runtime context passed to terminal hooks marked with
            ``@needs_context``.
        """

        funcs = tuple(self.terminal_funcs.get(ALL_TERMINALS, ())) + tuple(self.terminal_funcs.get(token.type, ()))
        return self._evaluator.compute_terminal_attrs(funcs, context)

    def compute_child_inherited(
        self,
        rule: Rule,
        parent_attrs: CandidateSet,
        rhs_attrs: List[Optional[CandidateSet]],
        context: Any=None,
    ) -> CandidateSet:
        """Compute inherited attributes for one dotted RHS occurrence.

        :param rule: Grammar rule containing the RHS occurrence.
        :param parent_attrs: Attributes for the rule's LHS.
        :param rhs_attrs: Attribute slots for consumed RHS prefix symbols.
        :param context: Runtime context passed to semantic calls marked with
            ``@needs_context``.
        """

        lhs_attrs = parent_attrs
        child_index = len(rhs_attrs)
        if child_index >= len(rule.expansion):
            return CandidateSet()
        children = list(rhs_attrs)

        calls = self.semantic_calls(rule)
        if not calls:
            return self._evaluator.seed_child(rule, lhs_attrs, children)
        evaluator = self._evaluator
        target_attrs = None
        for func, args in calls:
            target_attrs = evaluator.apply_child_inherited(
                func,
                args,
                rule,
                lhs_attrs,
                children,
                target_attrs,
                context=context,
            )
        if target_attrs is None:
            return CandidateSet()
        return target_attrs.to_candidate_set()

    def compute_reduction_attrs(
        self,
        rule: Rule,
        lhs_attrs: CandidateSet,
        rhs_attrs: List[Optional[CandidateSet]],
        context: Any=None,
    ) -> Tuple[CandidateSet, Tuple[ReductionTrace, ...]]:
        """Compute reduction attrs and selected candidate combinations.

        :param rule: Grammar rule being reduced.
        :param lhs_attrs: LHS attributes available before synthesized writes.
        :param rhs_attrs: Attribute slots for RHS symbols.
        :param context: Runtime context passed to semantic calls marked with
            ``@needs_context``.
        """

        children = list(rhs_attrs)
        calls = self.semantic_calls(rule, include_initial=False)
        evaluator = self._evaluator
        lhs_result, traces = evaluator.reduce(
            calls,
            rule,
            lhs_attrs,
            children,
            context=context,
        )
        return lhs_result, traces
