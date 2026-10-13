from copy import deepcopy, copy
from typing import Any, Callable, Dict, Generic, Iterable, List, Optional, Tuple, Union
from ..lexer import Token, LexerThread
from ..common import ParserCallbacks
from ..semantic.stack import AttributeFlow
from ..semantic.utils import context_type_for, needs_runtime_context
from ..semantic.values import (
    AccumulatedAttrs,
    AccumulatedProjection,
    AttributeState,
    ReductionTrace,
    CandidateSet,
)

from .lalr_analysis import Reduce, Shift, ParseTableBase, StateT
from lark.exceptions import UnexpectedToken

###{standalone

class _NoAccumulatedAttrs:
    tracked = {}

    def copy(self):
        return self

    def items(self):
        return iter(())

    def __bool__(self):
        return False


class ParseConf(Generic[StateT]):
    __slots__ = 'parse_table', 'callbacks', 'start', 'start_state', 'end_state', 'states', 'default_sem_func', 'initial_sem_func', 'terminal_sem_funcs', 'accumulate_attrs', 'semantic_evaluator_kind', 'semantic_context_type', '_has_semantic_functions'

    parse_table: ParseTableBase[StateT]
    callbacks: ParserCallbacks
    start: str

    start_state: StateT
    end_state: StateT
    states: Dict[StateT, Dict[str, tuple]]
    default_sem_func: Optional[Callable[..., Any]]
    initial_sem_func: Optional[Callable[..., Any]]
    terminal_sem_funcs: Optional[Dict[str, List[Callable[..., Any]]]]
    accumulate_attrs: Any
    semantic_evaluator_kind: Optional[str]
    semantic_context_type: Optional[type]

    def __init__(
        self,
        parse_table: ParseTableBase[StateT],
        callbacks: ParserCallbacks,
        start: str,
        default_sem_func: Optional[Callable[..., Any]]=None,
        initial_sem_func: Optional[Callable[..., Any]]=None,
        terminal_sem_funcs: Optional[Dict[str, List[Callable[..., Any]]]]=None,
        accumulate_attrs: Any=None,
        semantic_evaluator_kind: Optional[str]=None,
    ):
        self.parse_table = parse_table

        self.start_state = self.parse_table.start_states[start]
        self.end_state = self.parse_table.end_states[start]
        self.states = self.parse_table.states

        self.callbacks = callbacks
        self.start = start
        self.default_sem_func = default_sem_func
        self.initial_sem_func = initial_sem_func
        self.terminal_sem_funcs = terminal_sem_funcs or {}
        self.accumulate_attrs = accumulate_attrs
        self.semantic_evaluator_kind = semantic_evaluator_kind
        self.semantic_context_type = self._infer_semantic_context_type()
        self._has_semantic_functions = any(True for _func in self._iter_semantic_functions())

    def _iter_attribute_semantic_functions(self):
        """Yield non-terminal semantic functions attached to this parser.

        Terminal hooks keep the traditional terminal proxy API and are not part
        of the proxy/concrete evaluator choice for rule attributes. Rules are
        collected from the parse table instead of relying only on callbacks, so
        this keeps working after callers clear tree callbacks from an
        interactive parser state.
        """

        if self.default_sem_func is not None:
            yield self.default_sem_func, ()
        if self.initial_sem_func is not None:
            yield self.initial_sem_func, ()

        seen_rules = set()
        for actions in self.states.values():
            for action, arg in actions.values():
                if action is not Reduce:
                    continue
                rule_id = id(arg)
                if rule_id in seen_rules:
                    continue
                seen_rules.add(rule_id)
                yield from self._iter_rule_semantic_functions(arg)

        for rule in self.callbacks:
            rule_id = id(rule)
            if rule_id in seen_rules:
                continue
            seen_rules.add(rule_id)
            yield from self._iter_rule_semantic_functions(rule)

    def _iter_rule_semantic_functions(self, rule):
        options = getattr(rule, "options", None)
        if options is None:
            return
        sem_funcs = getattr(options, "sem_funcs", None)
        if sem_funcs:
            for func, _args in sem_funcs:
                yield func, tuple(_args or ())
            return
        sem_func = getattr(options, "sem_func", None)
        if sem_func is not None:
            yield sem_func, ()

    def _iter_semantic_functions(self):
        for func, _args in self._iter_attribute_semantic_functions():
            yield func

        for funcs in self.terminal_sem_funcs.values():
            for func in funcs:
                yield func

        for rule in self.callbacks:
            options = getattr(rule, "options", None)
            if options is None:
                continue
            sem_funcs = getattr(options, "sem_funcs", None)
            if sem_funcs:
                for func, _args in sem_funcs:
                    yield func
                continue
            sem_func = getattr(options, "sem_func", None)
            if sem_func is not None:
                yield sem_func

    def _infer_semantic_context_type(self):
        context_types = set()
        for func in self._iter_semantic_functions():
            if not needs_runtime_context(func):
                continue
            context_type = context_type_for(func)
            if context_type is not None:
                context_types.add(context_type)

        if len(context_types) > 1:
            raise TypeError(
                "Multiple semantic context types are not supported yet: %r"
                % (sorted(context_types, key=lambda cls: cls.__name__),)
            )
        if context_types:
            return next(iter(context_types))
        return None

    def has_semantic_runtime(self) -> bool:
        return bool(
            self.default_sem_func is not None
            or self.initial_sem_func is not None
            or self.terminal_sem_funcs
            or self.accumulate_attrs
            or self.semantic_context_type is not None
            or self._has_semantic_functions
        )


class ParserState(Generic[StateT]):
    __slots__ = 'parse_conf', 'lexer', 'state_stack', 'value_stack', 'attribute_stack', 'attribute_flow', 'terminal_index', 'accumulated_attrs', 'semantic_context'

    parse_conf: ParseConf[StateT]
    lexer: LexerThread
    state_stack: List[StateT]
    value_stack: list
    attribute_stack: List["AttributeState"]
    accumulated_attrs: Union["AccumulatedAttrs", _NoAccumulatedAttrs]

    def __init__(
        self,
        parse_conf: ParseConf[StateT],
        lexer: LexerThread,
        state_stack: Optional[List[StateT]]=None,
        value_stack: Optional[list]=None,
        attribute_stack: Optional[List["AttributeState"]]=None,
        terminal_index: int=0,
        accumulated_attrs: Optional[Union["AccumulatedAttrs", _NoAccumulatedAttrs]]=None,
        semantic_context: Any=None,
    ):
        self.parse_conf = parse_conf
        self.lexer = lexer
        self.state_stack = state_stack or [self.parse_conf.start_state]
        self.value_stack = value_stack or []
        self.attribute_flow = AttributeFlow(parse_conf) if parse_conf.has_semantic_runtime() else None
        if attribute_stack is not None:
            self.attribute_stack = attribute_stack
        elif self.attribute_flow is not None:
            self.attribute_stack = [self.attribute_flow.initial_state(self.parse_conf.start_state)]
        else:
            self.attribute_stack = []
        self.terminal_index = terminal_index
        if accumulated_attrs is not None:
            self.accumulated_attrs = accumulated_attrs
        elif self.attribute_flow is not None:
            self.accumulated_attrs = AccumulatedAttrs(parse_conf.accumulate_attrs)
        else:
            self.accumulated_attrs = _NoAccumulatedAttrs()
        if semantic_context is not None:
            self.semantic_context = semantic_context
        else:
            context_type = self.parse_conf.semantic_context_type
            self.semantic_context = context_type() if context_type is not None else None

    @property
    def position(self) -> StateT:
        return self.state_stack[-1]

    # Necessary for match_examples() to work
    def __eq__(self, other) -> bool:
        if not isinstance(other, ParserState):
            return NotImplemented
        return len(self.state_stack) == len(other.state_stack) and self.position == other.position

    def __copy__(self):
        return self.copy()

    def copy(self, deepcopy_values=True) -> 'ParserState[StateT]':
        context = self.semantic_context
        forked_context = context.fork() if context is not None else context
        result = type(self)(
            self.parse_conf,
            self.lexer, # XXX copy
            copy(self.state_stack),
            deepcopy(self.value_stack) if deepcopy_values else copy(self.value_stack),
            [attrs.copy() for attrs in self.attribute_stack],
            self.terminal_index,
            self.accumulated_attrs.copy(),
            forked_context,
        )
        return result

    def future_symbol_candidates(
        self,
        symbol_names: Optional[Union[str, Iterable[str]]]=None,
        symbol_kind: str="all",
    ) -> Dict[str, "CandidateSet"]:
        if self.attribute_flow is None:
            return {}
        return self.attribute_flow._future_symbol_candidates_from_stack(
            self.attribute_stack,
            symbol_names=symbol_names,
            symbol_kind=symbol_kind,
        )

    def _span_for_token(self) -> Tuple[int, int]:
        index = self.terminal_index
        self.terminal_index += 1
        return index, index

    def _span_for_reduce(self, size: int) -> Optional[Tuple[int, int]]:
        if not size:
            return None
        spans = [
            attr_state.span
            for attr_state in self.attribute_stack[-size:]
            if attr_state.span is not None
        ]
        if not spans:
            return None
        return min(start for start, _end in spans), max(end for _start, end in spans)

    def _record_accumulated_attrs(self, attr_state: "AttributeState") -> None:
        """Record projections whose owner survived in the current stack entry.

        Gather-then-assign: the live projections (owner still compatible with the
        current stack symbol) are grouped per occurrence, and each occurrence's
        sigma entry is overwritten with the union of its current set. The on-stack
        projections are the authoritative current value, so a parent lineage pruned
        later cannot leave a stale row in sigma.

        :param attr_state: Attribute state whose projections may be recorded.
        """

        if self.attribute_flow is None or not self.accumulated_attrs.tracked:
            return
        projections = attr_state.accumulated
        by_occurrence = {}
        for projection in projections:
            if attr_state.attrs.has_compatible_candidate(projection.owner):
                by_occurrence.setdefault(projection.occurrence, []).append(projection.attrs)
        for occurrence, value_sets in by_occurrence.items():
            self.accumulated_attrs.assign_occurrence(occurrence, value_sets)
        # CAVEAT (overwrite x settle-drop coupling): assign_occurrence overwrites
        # sigma with the gathered set from THIS entry, which is correct only if the
        # entry holds ALL of the occurrence's live projections (re-owning/carry is
        # expected to concentrate them onto the current owner). If a partial gather
        # ever narrows sigma to a singleton prematurely, unsettled_projections then
        # DROPS that projection -- it is no longer carried, so the premature
        # singleton can never be corrected (the narrowing is cemented). The fully
        # safe settle condition is "the occurrence's projection is truly gone from
        # the whole stack", which is stronger than the current "sigma payload is
        # singleton"; revisit this gate if 635-style runs show early/wrong settles.
        attr_state.set_accumulated(self.accumulated_attrs.unsettled_projections(projections))

    def _self_accumulated_projections(
        self,
        attr_state: "AttributeState",
    ) -> Tuple["AccumulatedProjection", ...]:
        """Build projections for attributes tracked on the stack symbol itself.

        :param attr_state: Attribute state for the visible stack symbol.
        """

        if not self.accumulated_attrs.tracked:
            return tuple()
        return self.accumulated_attrs.projections_for_symbol(
            attr_state.symbol,
            attr_state.span,
            attr_state.attrs,
            attr_state.symbol_kind or "symbol",
        )

    def _accumulated_projections_after_reduce(
        self,
        next_attrs: "AttributeState",
        reduced_children: List["AttributeState"],
        traces: Tuple["ReductionTrace", ...],
    ) -> Tuple["AccumulatedProjection", ...]:
        """Re-owner accumulated projections hidden by a completed reduction.

        Reduction first creates an output candidate for the completed rule, and
        the following goto transition merges that output into the candidate
        stored on the parser stack. The reduction trace tells which RHS
        candidates produced each reduction output; the merge links then tell
        which final stack candidates correspond to that output. This helper uses
        those two relations to move hidden RHS projections onto the surviving
        stack candidate.

        :param next_attrs: Attribute state pushed after the goto transition.
        :param reduced_children: RHS attribute states removed from the stack.
        :param traces: Candidate combinations selected by the reduction.
        """

        projections = list(self._self_accumulated_projections(next_attrs))
        if not self.accumulated_attrs.tracked:
            return tuple(projections)

        for trace in traces:
            # PRECISION NOTE (re-owner coarsening): stack_candidates_merged_from
            # may return one owner that unions two collapsed lineages, because
            # candidate identity is (inh, immediate-source) and omits the deeper
            # parent chain (the collapse optimization). The re-owned projection's
            # owner is therefore coarser than the paper's per-chain Lambda.
            # This is value-safe today: collapsed lineages share inh, hence share
            # the bnd/ctx payload, and the consumer keys sigma by (occurrence
            # kind/symbol/span) + value, never by owner identity. If a future
            # consumer distinguishes lineages by owner (e.g. to attribute a value
            # to one specific parent chain), this coarsening becomes observable --
            # then stop collapsing by (inh, source) and put the deeper chain back
            # into candidate identity (or carry a per-lineage owner tag).
            owners = next_attrs.attrs.stack_candidates_merged_from(trace.lhs)
            if not owners:
                continue
            for child_index, child_state in enumerate(reduced_children):
                if child_index >= len(trace.children):
                    break
                child_owner = trace.children[child_index]
                for projection in child_state.accumulated:
                    if projection.is_compatible_with_owner(child_owner):
                        for owner in owners:
                            projections.append(projection.with_owner(owner))
        return AccumulatedProjection.dedupe(projections)

    def feed_token(self, token: Token, is_end=False, update_attrs=True, semantic_context=None) -> Any:
        semantic_context = semantic_context if semantic_context is not None else self.semantic_context
        state_stack = self.state_stack
        value_stack = self.value_stack
        attribute_stack = self.attribute_stack
        update_attrs = update_attrs and self.attribute_flow is not None
        states = self.parse_conf.states
        end_state = self.parse_conf.end_state
        callbacks = self.parse_conf.callbacks

        while True:
            state = state_stack[-1]
            try:
                action, arg = states[state][token.type]
            except KeyError:
                expected = {s for s in states[state].keys() if s.isupper()}
                raise UnexpectedToken(token, expected, state=self, interactive_parser=None)

            assert arg != end_state

            if action is Shift:
                assert not is_end
                value = token if token.type not in callbacks else callbacks[token.type](token)
                state_stack.append(arg)
                value_stack.append(value)
                if update_attrs:
                    if semantic_context is not None:
                        semantic_context.update(token)
                    token_span = self._span_for_token()
                    transition_output_attrs = self.attribute_flow.terminal_attrs(token, semantic_context)
                    prev_attrs = self.attribute_flow.narrow_for_transition(attribute_stack, token.type)
                    attribute_stack[-1] = prev_attrs
                    self._record_accumulated_attrs(prev_attrs)
                    next_attrs = self.attribute_flow.transition(
                        attribute_stack,
                        token.type,
                        arg,
                        transition_output_attrs,
                        token_span,
                        "terminal",
                        semantic_context,
                    )
                    next_attrs.set_accumulated(
                        self._self_accumulated_projections(next_attrs)
                        + prev_attrs.carried_accumulated_to(next_attrs)
                    )
                    attribute_stack.append(next_attrs)
                    self._record_accumulated_attrs(next_attrs)
                return

            rule = arg
            size = len(rule.expansion)
            if update_attrs:
                reduction = self.attribute_flow.reduce_from_stack(attribute_stack, rule, semantic_context)
                lhs_attrs = reduction.output
                lhs_span = self._span_for_reduce(size)
                reduced_children = list(attribute_stack[-size:]) if size else []

            if size:
                s = value_stack[-size:]
                del state_stack[-size:]
                del value_stack[-size:]
                if update_attrs:
                    del attribute_stack[-size:]
            else:
                s = []

            value = callbacks[rule](s) if callbacks else s
            _action, new_state = states[state_stack[-1]][rule.origin.name]
            assert _action is Shift

            state_stack.append(new_state)
            value_stack.append(value)
            if update_attrs:
                prev_attrs = self.attribute_flow.narrow_for_transition(attribute_stack, rule.origin.name)
                attribute_stack[-1] = prev_attrs
                self._record_accumulated_attrs(prev_attrs)
                next_attrs = self.attribute_flow.transition(
                    attribute_stack,
                    rule.origin.name,
                    new_state,
                    lhs_attrs,
                    lhs_span,
                    "nonterminal",
                    semantic_context,
                )
                if reduction.found:
                    projections = self._accumulated_projections_after_reduce(
                        next_attrs,
                        reduced_children,
                        reduction.traces,
                    )
                else:
                    projections = self._self_accumulated_projections(next_attrs)
                projections = projections + prev_attrs.carried_accumulated_to(next_attrs)
                next_attrs.set_accumulated(projections)
                attribute_stack.append(next_attrs)
                self._record_accumulated_attrs(next_attrs)

            if is_end and state_stack[-1] == end_state:
                return value_stack[-1]
###}
