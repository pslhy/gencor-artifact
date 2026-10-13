"""Forward attribute stack built alongside the LALR state stack."""

from dataclasses import dataclass
from typing import TYPE_CHECKING, Any, Dict, Iterable, List, Optional, Sequence, Tuple, Union

from ..grammar import Rule
from ..parsers.lalr_analysis import IntParseTable
from ..parsers.grammar_analysis import State, StateMap
from .runtime import SemanticEvaluator
from .utils import matches_future_symbol, normalize_future_symbol_names
from .values import (
    ROOT_SOURCE,
    AttributeState,
    ParentSource,
    ReductionTrace,
    RulePtrKey,
    CandidateSet,
)

if TYPE_CHECKING:
    from ..parsers.lalr_parser_state import ParseConf


@dataclass(frozen=True)
class SemanticReduction:
    """Semantic result computed for one reduce action.

    :param found: Whether compatible reduction inputs were found.
    :param output: Synthesized LHS attrs produced by the reduction.
    :param lhs: LHS attrs used as reduction input.
    :param traces: Compatible candidate combinations selected by the reduction.
    """

    found: bool
    output: CandidateSet
    lhs: CandidateSet
    traces: Tuple[ReductionTrace, ...]


class AttributeFlow:
    """Maintains semantic attribute flow alongside parser-state transitions.

    AttributeFlow derives the semantic contexts needed to predict and compute
    inherited/synthesized attributes while the LALR parser shifts and reduces.

    SemanticEvaluator and serialized-state lookup are created from parse_conf,
    but AttributeFlow stores only those narrow runtime dependencies.

    :param parse_conf: Parser configuration used to seed parse-table state and
        semantic evaluator fields.
    """

    def __init__(self, parse_conf: "ParseConf[Union[int, State]]") -> None:
        if isinstance(parse_conf.parse_table, IntParseTable):
            self.idx_to_state = parse_conf.parse_table.idx_to_state
        else:
            self.idx_to_state = {}
        self.evaluator = SemanticEvaluator(
            parse_conf.default_sem_func,
            parse_conf.initial_sem_func,
            parse_conf.terminal_sem_funcs,
            parse_conf.semantic_evaluator_kind,
        )
        self._state_maps: Dict[Union[int, State], Optional[StateMap]] = {}
        self._state_key_orders: Dict[Union[int, State], List[RulePtrKey]] = {}
        self._state_pruning_keys: Dict[Tuple[Union[int, State], str], List[RulePtrKey]] = {}

    def state_map(self, state: Union[int, State]) -> Optional[StateMap]:
        """Return the semantic graph view for a parser state.

        :param state: Concrete State object or serialized integer state id.
        """

        if state in self._state_maps:
            return self._state_maps[state]

        if isinstance(state, int):
            real_state = self.idx_to_state.get(state)
            if real_state is None:
                self._state_maps[state] = None
                return None
        else:
            real_state = state

        state_map = StateMap(real_state)
        self._state_maps[state] = state_map
        return state_map

    def initial_state(self, start_state: Union[int, State]) -> AttributeState:
        """Build the initial AttributeState for the parser start state.

        :param start_state: Parser start state for the active start symbol.
        """

        attr_state = AttributeState(start_state)
        state_map = self.state_map(start_state)
        if state_map is not None:
            for ruleptr in state_map.repr_ruleptr:
                if str(ruleptr.rule.origin.name).startswith("$root_"):
                    attr_state.merge_virtual(ruleptr.rule.origin.name, CandidateSet())
        self._init([attr_state])
        return attr_state

    def terminal_attrs(self, token, semantic_context=None) -> CandidateSet:
        return self.evaluator.compute_terminal_attrs(token, semantic_context)

    def narrow_for_transition(
        self,
        attribute_stack: Union[AttributeState, Sequence[AttributeState]],
        symbol: str,
    ) -> AttributeState:
        """Pre-transition narrowing of the TOP element's candidates.

        NOTE: this is NOT the formal \\textsc{Prune} (popl27 attrparse.tex) -- that
        is ``_prune`` below, run *after* the transition against the pushed anchor.
        This is an implementation-only narrowing applied to the top element just
        *before* the transition, keeping only candidates that can still contribute
        to consuming ``symbol``. Lower elements are left to ``_prune``.

        :param attribute_stack: Attribute stack before the transition.
        :param symbol: Grammar symbol about to be shifted or reduced.
        """

        if isinstance(attribute_stack, AttributeState):
            attribute_stack = [attribute_stack]
        attr_state = attribute_stack[-1]
        narrowed_by_index: Dict[int, CandidateSet] = {}
        narrowed_virtuals: Dict[Tuple[int, str], CandidateSet] = {}
        pruning_keys = self._pruning_keys_for_symbol(attr_state.state, symbol)
        for key in pruning_keys:
            if key.ptr == 0:
                continue
            previous_symbol = key.rule.expansion[key.ptr - 1]
            if attr_state.symbol != previous_symbol.name:
                continue
            lhs_attrs, rhs_attrs = self._attrs_for_key(attribute_stack, key)
            if lhs_attrs is None or rhs_attrs is None:
                continue
            parent_index = len(attribute_stack) - key.ptr - 1
            if parent_index < 0:
                continue
            prefix_lhs_attrs = self._lhs_attrs_for_existing_prefix(
                key.rule,
                lhs_attrs,
                rhs_attrs,
                key.ptr,
            )
            if prefix_lhs_attrs.is_empty():
                continue
            child_selections = []
            for child_index in range(key.ptr):
                child_attrs = rhs_attrs[child_index]
                if child_attrs is None:
                    break
                source = ParentSource(RulePtrKey(key.rule, child_index))
                selected = child_attrs.select_for_parent_context(source, prefix_lhs_attrs)
                if selected.is_empty():
                    break
                child_selections.append((parent_index + 1 + child_index, selected))
            else:
                if lhs_attrs.candidates:
                    virtual_key = (parent_index, str(key.rule.origin.name))
                    existing = narrowed_virtuals.get(virtual_key)
                    if existing is None:
                        narrowed_virtuals[virtual_key] = prefix_lhs_attrs.copy()
                    else:
                        existing.merge(prefix_lhs_attrs)
                for stack_index, selected in child_selections:
                    existing = narrowed_by_index.get(stack_index)
                    if existing is None:
                        narrowed_by_index[stack_index] = selected
                    else:
                        existing.merge(selected)

        if not narrowed_by_index and not narrowed_virtuals:
            return attr_state

        # Narrow only the TOP element here. Pruning lower elements with the single
        # immediate-transition context over-narrows shared candidates that a later
        # closure still needs (it deletes occurrences the automaton has NOT yet
        # refuted). Lower elements are refined after the transition by
        # _prune, against the real pushed anchor -- the formal Prune,
        # which only refutes lineages the automaton has actually ruled out.
        top_index = len(attribute_stack) - 1
        for stack_index, old_state in enumerate(attribute_stack):
            if stack_index != top_index:
                continue
            narrowed_attrs = narrowed_by_index.get(stack_index)
            virtual_updates = {
                name: attrs
                for (index, name), attrs in narrowed_virtuals.items()
                if index == stack_index
            }
            if narrowed_attrs is None and not virtual_updates:
                continue
            pruned = AttributeState(old_state.state, old_state.symbol, old_state.span, old_state.symbol_kind)
            pruned.attrs = narrowed_attrs.copy() if narrowed_attrs is not None else old_state.attrs.copy()
            pruned.virtuals = {name: attrs.copy() for name, attrs in old_state.virtuals.items()}
            for name, attrs in virtual_updates.items():
                pruned.virtuals[name] = attrs.copy()
            pruned.copy_accumulated_from(old_state)
            attribute_stack[stack_index] = pruned
        return attribute_stack[-1]

    def _pruning_keys_for_symbol(
        self,
        state: Union[int, State],
        symbol: str,
    ) -> List[RulePtrKey]:
        """Return dotted-rule contexts whose previous child may need narrowing.

        The returned keys start from items that expect ``symbol`` next, then walk
        parent edges in the StateMap. ``narrow_for_transition()`` later uses each
        confirmed context to select existing candidates for the whole consumed
        stack prefix, not only the stack top.

        :param state: Parser state before the transition.
        :param symbol: Grammar symbol about to be shifted or reduced.
        """

        cache_key = (state, symbol)
        cached = self._state_pruning_keys.get(cache_key)
        if cached is not None:
            return cached

        state_map = self.state_map(state)
        if state_map is None:
            return []

        queue: List[Tuple[int, int, int]] = []
        seen_vertices = set()
        result: List[RulePtrKey] = []
        seen_keys = set()

        for key in self._ordered_keys(state):
            expected = key.next_symbol()
            if expected is None or expected.name != symbol:
                continue
            try:
                vertex = self._vertex_from_key(state_map, key)
            except KeyError:
                continue
            queue.append(vertex)

        while queue:
            vertex = queue.pop(0)
            if vertex in seen_vertices:
                continue
            seen_vertices.add(vertex)

            try:
                key = self._key_from_vertex(state_map, vertex)
            except KeyError:
                continue
            if key not in seen_keys:
                result.append(key)
                seen_keys.add(key)

            for parent in state_map.back_edges.get(vertex, ()):
                queue.append(parent)

        self._state_pruning_keys[cache_key] = result
        return result

    def _lhs_attrs_for_existing_prefix(
        self,
        rule: Rule,
        lhs_attrs: CandidateSet,
        rhs_attrs: List[Optional[CandidateSet]],
        limit: int,
    ) -> CandidateSet:
        """Select LHS candidates that can produce the consumed RHS prefix.

        This checks existing candidate relations instead of running semantic
        functions again. For ``s -> x A * B``, the returned set contains only
        ``s`` candidates that can produce the visible ``x`` and ``A`` stack
        candidates.

        :param rule: Rule whose prefix is being checked.
        :param lhs_attrs: Candidate attrs for the rule's LHS.
        :param rhs_attrs: Existing attrs for consumed RHS positions.
        :param limit: Number of consumed RHS positions to check.
        """

        entries = []
        for lhs_candidate in lhs_attrs.candidates_or_empty(ROOT_SOURCE):
            for index in range(limit):
                child_attrs = rhs_attrs[index]
                if child_attrs is None:
                    break
                source = ParentSource(RulePtrKey(rule, index))
                if not child_attrs.has_candidate_for_parent_context(source, lhs_candidate):
                    break
            else:
                entries.append(
                    (
                        lhs_candidate,
                        lhs_attrs.parent_keys_for(lhs_candidate),
                        lhs_attrs.merged_from_keys_for(lhs_candidate),
                    )
                )
        return CandidateSet.from_entries(entries)

    def transition(
        self,
        attribute_stack: Union[AttributeState, Sequence[AttributeState]],
        symbol: str,
        next_state: Union[int, State],
        transition_output_attrs: Optional[CandidateSet]=None,
        span: Optional[Tuple[int, int]]=None,
        symbol_kind: Optional[str]=None,
        semantic_context=None,
    ) -> AttributeState:
        """\\textsc{Shift} / goto of the attribute-LR model (popl27 attrparse.tex).

        Advances semantic candidates after a grammar symbol is consumed. This
        realises the formalism's transition ``Init(Prune(gamma . <I|cands> .
        <I'|cands_t>), I')``: the new top element (the *anchor*) is built from the
        parent items motivating ``symbol`` (correct by construction), then the
        wrapping ``Prune`` and ``Init`` are applied. Concretely:

          1. build the anchor ``attr_state`` and its candidates (this loop);
          2. ``_init`` -- formal \\textsc{Init}: populate the anchor's predicted
             nonterminals (as ``virtuals``);
          3. ``_prune`` -- formal \\textsc{Prune}: refute lower-stack lineages not
             below an anchor chain.

        Note the code applies Init (step 2) BEFORE Prune (step 3) -- the reverse of
        the paper's ``Init(Prune(...))``. Both orders yield the same result because
        refuted candidates are filtered lazily at read time (Dead-cell marking),
        not because the two phases are independent: Init *does* read lower-stack
        parent/sibling candidates that Prune later refutes, but reading a
        not-yet-refuted candidate is harmless since its value is filtered when
        consumed. (Verified: swapping to the paper's Prune-then-Init order is
        byte-identical; it only redistributes work between the two phases.)

        :param attribute_stack: Attribute stack before consuming symbol.
        :param symbol: Consumed terminal or nonterminal name.
        :param next_state: Parser state reached after the transition.
        :param transition_output_attrs: Attrs produced by the shifted terminal or
            reduction output being placed on the parser stack.
        :param span: Token span covered by the consumed symbol.
        :param symbol_kind: Symbol category such as terminal or nonterminal.
        """

        if isinstance(attribute_stack, AttributeState):
            attribute_stack = [attribute_stack]
        prev_state = attribute_stack[-1]
        attr_state = AttributeState(next_state, str(symbol), span, symbol_kind)
        state_map = self.state_map(next_state)
        if state_map is None:
            return attr_state

        keys = self._available_keys_for_symbol(attribute_stack, prev_state.state, symbol)
        for key in keys:
            expected = key.next_symbol()
            if expected is None or expected.name != symbol:
                continue

            lhs_attrs, rhs_attrs = self._attrs_for_key(attribute_stack, key)
            if lhs_attrs is None or rhs_attrs is None:
                continue
            inherited = self.evaluator.compute_child_inherited(
                key.rule,
                lhs_attrs,
                rhs_attrs,
                semantic_context,
            )
            child_attrs = inherited.only_inh()
            if transition_output_attrs is not None:
                if not child_attrs.merge_transition_output_attrs(transition_output_attrs):
                    continue

            attr_state.merge_symbol(symbol, child_attrs)

        # NOTE: this applies Init then Prune; the paper's order is the reverse,
        # Prune then Init (Init(Prune(...))). Swapping these two lines is
        # byte-identical and perf-neutral here (work shifts Prune~-50% / Init~+42%,
        # sum unchanged -- the A4-A7 memos absorb recomputation either way). The
        # paper order is arguably more robust (it never extends a refuted lineage,
        # rather than relying on lazy Dead-filtering to drop garbage virtuals).
        # Not adopted: it is soundness-critical and so far verified byte-identical
        # only on python_sem; flipping it would warrant byte-identical checks on
        # other grammars (ocaml_sem, typescript_sem) first.
        self._init(list(attribute_stack) + [attr_state], semantic_context)
        self._prune(attribute_stack, attr_state)
        return attr_state

    @staticmethod
    def _vertex_of_key(key: Tuple[Any, ...]) -> Optional[Tuple[int, int]]:
        """Project a candidate relation key onto its state vertex ``(rule-id, dot)``.

        A relation key is ``(inherited-record-key, source-identity)`` and a dotted
        source identity is ``("source", id(rule), dot)`` (see
        ``ParentSource.identity_key``). The lineage that ``_prune``
        needs depends only on this vertex, not on the inherited record, so many
        workload-specific candidates collapse onto one grammar-fixed vertex.
        Returns ``None`` for root/unanchored sources, which are never refuted.
        """

        source = key[1]
        if type(source) is tuple and len(source) == 3 and source[0] == "source":
            return (source[1], source[2])
        return None

    def _local_vertex_index(
        self, element: AttributeState
    ) -> Dict[Tuple[int, int], frozenset]:
        """Per-entry vertex-projected parent graph ``vertex -> parent vertices``.

        Collapses the entry's semantic candidates onto their state vertices (a
        grammar-bounded set) so the lineage walk costs O(stack x vertices) rather
        than O(stack x candidates) -- candidates per vertex grow with the workload,
        vertices do not. Built straight off the ``parent_links`` maps (the key
        already encodes the vertex), and memoised on the immutable entry: once an
        entry leaves the stack top it is never mutated (only the top is
        closed/pruned), so the cache is valid for the entry's lifetime and never
        grows past the live stack.
        """

        memo = getattr(element, "_refine_vertex_index", None)
        if memo is not None:
            return memo

        vertex_parents: Dict[Tuple[int, int], set] = {}
        sets = [element.attrs]
        sets.extend(element.virtuals.values())
        for attrs in sets:
            for child_key, parent_keys in attrs.parent_links.items():
                child_vertex = self._vertex_of_key(child_key)
                if child_vertex is None:
                    continue
                bucket = vertex_parents.get(child_vertex)
                for parent_key in parent_keys:
                    parent_vertex = self._vertex_of_key(parent_key)
                    if parent_vertex is None:
                        continue
                    if bucket is None:
                        bucket = vertex_parents[child_vertex] = set()
                    bucket.add(parent_vertex)

        memo = {vertex: frozenset(parents) for vertex, parents in vertex_parents.items()}
        element._refine_vertex_index = memo
        return memo

    def _prune(self, attribute_stack: Sequence[AttributeState], anchor: AttributeState) -> None:
        """Refute stack candidates that are not on the just-pushed anchor's lineage.

        This is the formal \\textsc{Prune} of the attribute-LR model (popl27
        attrparse.tex): immediately after a shift/goto pushes the ``anchor`` element,
        a candidate on a lower stack element is live iff its chain is a prefix of some
        anchor candidate's chain (``Lambda \\sqsubseteq Lambda^*``); every other
        candidate has been refuted by the automaton and must be dropped eagerly so the
        intermediate valuations read during constrained decoding stay correct.

        We approximate the chain with the existing ``parent_links`` relation (the
        cons-cell parent reference of the formalism -- no full chains, per the perf
        constraint), but walk it in *vertex* space rather than candidate space: every
        candidate is collapsed onto its state vertex ``(rule, dot)`` (see
        ``_local_vertex_index``), the anchor's transitive parent closure over those
        vertices yields the live source rules (``live_rules``), and each stack element
        keeps only candidates whose source rule is live (candidates with no dotted-rule
        source -- root/unanchored -- are always kept). Vertices are grammar-bounded
        while candidates grow with the workload, so the walk no longer scales with the
        per-token candidate population. A candidate's *parent* alone cannot distinguish
        sibling lineages that share a parent (e.g. ``s -> A . B`` vs ``s -> A . C`` both
        hang off the same ``s``), so the discriminator is the source rule, matching the
        chain's dotted rule at that level. Plurality genuinely collapses to a singleton
        exactly as the automaton disambiguates; while still ambiguous (the anchor holds
        several lineages) every viable candidate is retained.
        """
        if isinstance(attribute_stack, AttributeState) or not attribute_stack:
            return
        # Fast path: refutation can only drop a candidate from an element that has more
        # than one candidate -- a single surviving candidate is necessarily on the
        # anchor's lineage. When every stack element is unambiguous there is nothing to
        # refute, so skip the lineage index + walk entirely. Plurality is transient
        # (it collapses at each disambiguation), so the stack is unambiguous most of the
        # time and this elides the common case.
        if not any(len(element.attrs.candidates) > 1 for element in attribute_stack):
            return

        # Merge the vertex-projected parent graph over the stack prefix. Each entry
        # caches the merged graph for the prefix ending at it, keyed by the *identity*
        # of the entry-below's merged graph: any change below (a refuted entry is
        # rebuilt as a new object with a fresh graph) invalidates that entry and every
        # entry above it, while a stable stack reuses the whole lower prefix and only
        # folds in the freshly pushed anchor. The projection is grammar-bounded, so the
        # cached prefixes are small and bounded by the live stack (no eviction policy --
        # they are GC'd with their entry). This is what makes refine independent of both
        # the candidate population and (amortised) the stack depth.
        below_prefix: Optional[Dict[Tuple[int, int], frozenset]] = None
        for element in attribute_stack:
            cached = getattr(element, "_refine_prefix_merge", None)
            if cached is not None and cached[0] is below_prefix:
                below_prefix = cached[1]
                continue
            prefix = dict(below_prefix) if below_prefix is not None else {}
            for vertex, parents in self._local_vertex_index(element).items():
                existing = prefix.get(vertex)
                prefix[vertex] = parents if existing is None else existing | parents
            element._refine_prefix_merge = (below_prefix, prefix)
            below_prefix = prefix

        vertex_parents: Dict[Tuple[int, int], frozenset] = (
            dict(below_prefix) if below_prefix is not None else {}
        )
        for vertex, parents in self._local_vertex_index(anchor).items():
            existing = vertex_parents.get(vertex)
            vertex_parents[vertex] = parents if existing is None else existing | parents

        seen: set = set()
        frontier = {
            vertex
            for vertex in (
                self._vertex_of_key(cand.relation_key())
                for cand in anchor.attrs.candidates
            )
            if vertex is not None
        }
        while frontier:
            seen |= frontier
            nxt: set = set()
            for vertex in frontier:
                parents = vertex_parents.get(vertex)
                if parents:
                    nxt |= parents
            frontier = nxt - seen
        live_rules = {vertex[0] for vertex in seen}

        for stack_index, element in enumerate(attribute_stack):
            kept = [
                cand
                for cand in element.attrs.candidates
                if getattr(cand.source, "ruleptr", None) is None
                or id(cand.source.ruleptr.rule) in live_rules
            ]
            if kept and len(kept) < len(element.attrs.candidates):
                entries = [
                    (
                        cand,
                        element.attrs._relations_for(element.attrs.parent_links, cand),
                        element.attrs._relations_for(element.attrs.merged_from_links, cand),
                    )
                    for cand in kept
                ]
                refined = AttributeState(
                    element.state, element.symbol, element.span, element.symbol_kind
                )
                refined.attrs = CandidateSet._set_from_entries(entries)
                refined.virtuals = {name: attrs.copy() for name, attrs in element.virtuals.items()}
                refined.copy_accumulated_from(element)
                attribute_stack[stack_index] = refined

    @staticmethod
    def _key_from_vertex(state_map: StateMap, vertex: Tuple[int, int, int]) -> RulePtrKey:
        """Convert a StateMap vertex into the corresponding RulePtrKey.

        StateMap stores graph vertices as compact integer triples. Runtime code
        uses RulePtrKey because it needs the original Rule object and dot
        position when computing attrs.

        :param state_map: Semantic graph for one parser state.
        :param vertex: Tuple of origin-symbol index, rule index, and dot
            position.
        """

        sym_idx, rule_idx, ptr = vertex
        symbol = state_map.idx_to_sym[sym_idx]
        return RulePtrKey(state_map.sym_idx_to_meta[symbol][rule_idx], ptr)

    @staticmethod
    def _vertex_from_key(state_map: StateMap, key: RulePtrKey) -> Tuple[int, int, int]:
        """Convert a RulePtrKey into the corresponding StateMap vertex.

        This is the inverse lookup for ``_key_from_vertex()``. It lets runtime
        code enter the StateMap edge/back-edge graph from a concrete rule and dot
        position.

        :param state_map: Semantic graph for one parser state.
        :param key: Rule and dot position to locate in the graph.
        """

        symbol = str(key.rule.origin.name)
        rule_index = state_map.sym_rule_to_idx[symbol][tuple(key.rule.expansion)]
        return state_map.sym_to_idx[symbol], rule_index, key.ptr

    def _available_keys_for_symbol(
        self,
        attribute_stack: Sequence[AttributeState],
        state: Union[int, State],
        symbol: str,
    ) -> List[RulePtrKey]:
        """Return transition contexts whose consumed prefix matches the stack.

        A key is available only if it expects ``symbol`` next and
        ``_attrs_for_key()`` can recover the LHS candidate set plus all consumed
        RHS siblings from the current attribute stack.

        :param attribute_stack: Attribute stack before consuming ``symbol``.
        :param state: Parser state before consuming ``symbol``.
        :param symbol: Terminal or nonterminal about to be consumed.
        """

        result = []
        ordered_keys = self._ordered_keys(state)
        for key in ordered_keys:
            expected = key.next_symbol()
            if expected is None or expected.name != symbol:
                continue
            lhs_attrs, rhs_attrs = self._attrs_for_key(attribute_stack, key)
            if lhs_attrs is None or rhs_attrs is None:
                continue
            result.append(key)
        return result

    def _ordered_keys(self, state: Union[int, State]) -> List[RulePtrKey]:
        """Return StateMap keys in parent-before-child evaluation order.

        Child inherited attrs require the parent LHS attrs and left sibling attrs
        to be available first, so closure/transition walks keys in topological
        order over the StateMap graph. The result is cached per parser state.

        :param state: Parser state whose semantic keys should be ordered.
        """

        if state in self._state_key_orders:
            return self._state_key_orders[state]
        state_map = self.state_map(state)
        if state_map is None:
            self._state_key_orders[state] = []
            return []
        keys = [
            self._key_from_vertex(state_map, vertex)
            for vertex in self._topological_vertices(state_map)
        ]
        self._state_key_orders[state] = keys
        return keys

    def _topological_vertices(self, state_map: StateMap) -> List[Tuple[int, int, int]]:
        """Return StateMap vertices in parent-before-child order.

        StateMap edges point from a parent dotted rule to child dotted rules
        reachable through closure. Ordering vertices this way lets
        ``_ordered_keys()`` compute inherited attrs without seeing a child before
        its parent context.

        :param state_map: Semantic graph to order.
        """

        vertices = set()
        for ruleptr in state_map.repr_ruleptr:
            try:
                vertices.add(self._vertex_from_key(state_map, RulePtrKey.from_ruleptr(ruleptr)))
            except KeyError:
                pass
        for parent, children in state_map.edges.items():
            vertices.add(parent)
            vertices.update(children)
        for child, parents in state_map.back_edges.items():
            vertices.add(child)
            vertices.update(parents)

        indegree = {vertex: 0 for vertex in vertices}
        for parent in vertices:
            for child in state_map.edges.get(parent, ()):
                if child in indegree:
                    indegree[child] += 1

        queue = sorted((vertex for vertex, degree in indegree.items() if degree == 0), key=repr)
        order = []
        while queue:
            vertex = queue.pop(0)
            order.append(vertex)
            for child in state_map.edges.get(vertex, ()):
                if child not in indegree:
                    continue
                indegree[child] -= 1
                if indegree[child] == 0:
                    queue.append(child)
                    queue.sort(key=repr)

        return order

    def reduce_from_stack(
        self,
        attribute_stack: Sequence[AttributeState],
        rule: Rule,
        semantic_context=None,
    ) -> SemanticReduction:
        """\\textsc{Reduce} of the attribute-LR model (popl27 attrparse.tex).

        Computes the LHS ``X0``'s synthesized record ``sigma`` for a confirmed
        production ``p : X0 -> X1 ... Xn``, from the RHS stack-layer candidates.
        Per the formalism, Reduce first prunes each RHS element's candidates to
        those whose immediate parent is ``p`` (``prod(last(Lambda)) = p``; an empty
        survivor is a parse failure), then evaluates ``sigma_{X0}`` via the
        synthesized semantic rules over ``Args(p, X0.a, iota_{X0}, Lambda_{X0},
        e_1...e_n)`` for each surviving ``X0`` candidate. The full transition is
        ``Init(Prune(Reduce(...)), I_p)`` with ``I_p = G(I_{X0}, X0)`` the goto
        state; the Init/Prune wrapping is applied by the subsequent ``transition``
        to the goto state.

        :param attribute_stack: Attribute stack before popping RHS symbols.
        :param rule: Grammar rule ``p`` being reduced.
        """

        key = RulePtrKey(rule, len(rule.expansion))
        lhs_attrs, rhs_attrs = self._attrs_for_key(attribute_stack, key)
        if lhs_attrs is None or rhs_attrs is None:
            return SemanticReduction(
                False,
                CandidateSet(),
                CandidateSet(),
                tuple(),
            )
        output, traces = self.evaluator.compute_reduction_attrs(
            rule,
            lhs_attrs,
            rhs_attrs,
            semantic_context,
        )
        return SemanticReduction(True, output, lhs_attrs, traces)

    @staticmethod
    def _stack_entry_symbol_attrs(attr_state: AttributeState, symbol: str) -> Optional[CandidateSet]:
        symbol = str(symbol)
        if attr_state.symbol == symbol:
            # Returned read-only to callers; candidate sets are rebuilt-immutable
            # and the only mutators (merge_symbol/merge_virtual) copy first, so a
            # defensive copy here is pure allocation churn on the hot path.
            return attr_state.attrs
        return None

    def _attrs_for_key(
        self,
        attribute_stack: Sequence[AttributeState],
        key: RulePtrKey,
        upto_index: Optional[int]=None,
    ) -> Tuple[Optional[CandidateSet], Optional[List[Optional[CandidateSet]]]]:
        """Read the LHS and consumed RHS attrs required by one RulePtrKey.

        For a key whose dot is after ``k`` RHS symbols, the parent LHS attrs live
        in the stack entry just before those ``k`` consumed children. The
        returned RHS attrs contain exactly those consumed prefix symbols, not a
        full RHS-sized list. If the stack shape does not match the key,
        ``(None, None)`` is returned.

        :param attribute_stack: Attribute stack slice visible to the current
            parser action.
        :param key: Rule and dot position whose attrs should be reconstructed.
        :param upto_index: Optional RHS prefix length to read instead of
            ``key.ptr``.
        """

        parent_index = len(attribute_stack) - key.ptr - 1
        if parent_index < 0:
            return None, None

        parent_state = attribute_stack[parent_index]
        origin = str(key.rule.origin.name)
        lhs_attrs = parent_state.virtuals.get(origin)
        if lhs_attrs is None:
            return None, None

        limit = key.ptr if upto_index is None else upto_index
        rhs_attrs: List[Optional[CandidateSet]] = []
        for index, rhs_symbol in enumerate(key.rule.expansion[:limit]):
            sibling_index = parent_index + 1 + index
            if sibling_index >= len(attribute_stack):
                return None, None
            sibling_attrs = self._stack_entry_symbol_attrs(attribute_stack[sibling_index], rhs_symbol.name)
            if sibling_attrs is None:
                return None, None
            rhs_attrs.append(sibling_attrs)
        # lhs_attrs / rhs_attrs are read-only views into existing stack entries;
        # consumers only read them and always build new sets for outputs.
        return lhs_attrs, rhs_attrs

    def _init(self, attribute_stack: Sequence[AttributeState], semantic_context=None) -> None:
        """\\textsc{Init} of the attribute-LR model (popl27 attrparse.tex).

        Whenever a transition exposes a new top state, Init pushes one element
        per nonterminal starting in that state, computing each predicted
        nonterminal's inherited record under every parent candidate and extending
        the parent chain. Here the predicted elements are stored as ``virtuals``
        on the top stack element rather than as separate stack entries, but the
        correspondence is exact: one virtual per started nonterminal, its
        candidates produced by evaluating inherited semantic rules per parent.

        :param attribute_stack: Attribute stack whose top state is initialized in
            place.
        """

        attr_state = attribute_stack[-1]
        state_map = self.state_map(attr_state.state)
        if state_map is None:
            return

        ordered_keys = self._ordered_keys(attr_state.state)
        for key in ordered_keys:
            expected = key.next_symbol()
            if expected is None or expected.name not in state_map.sym_idx_to_meta:
                continue

            lhs_attrs, rhs_attrs = self._attrs_for_key(attribute_stack, key)
            if lhs_attrs is None or rhs_attrs is None:
                continue

            child_attrs = self.evaluator.compute_child_inherited(
                key.rule,
                lhs_attrs,
                rhs_attrs,
                semantic_context,
            ).only_inh()
            attr_state.merge_virtual(expected.name, child_attrs)

    def _future_symbol_candidates_from_stack(
        self,
        attribute_stack: Sequence[AttributeState],
        symbol_names: Optional[Union[str, Iterable[str]]]=None,
        symbol_kind: str="all",
    ) -> Dict[str, CandidateSet]:
        """Collect candidate attributes for future symbols.

        :param attribute_stack: Attribute states currently on the parser stack.
        :param symbol_names: Optional symbol-name filter.
        :param symbol_kind: Symbol category filter such as all, terminal, or
            nonterminal.
        """

        symbol_names = normalize_future_symbol_names(symbol_names)

        result = {}
        for stack_index, attr_state in enumerate(attribute_stack):
            state_map = self.state_map(attr_state.state)
            if state_map is None:
                continue
            stack_prefix = attribute_stack[:stack_index + 1]
            for key in self._ordered_keys(attr_state.state):
                lhs_attrs, rhs_attrs = self._attrs_for_key(stack_prefix, key)
                if lhs_attrs is None or rhs_attrs is None:
                    continue
                rule = key.rule
                # Surface every remaining RHS occurrence, not just the immediate
                # next symbol. A symbol-after-next (e.g. a comprehension's comp_fors
                # 'R' catcher, the required sibling after the element) is a reachable
                # future. Reporting only expansion[key.ptr] hid those catchers and
                # broke forward-reference deferral (uv-check on comprehension uses).
                for child_index in range(key.ptr, len(rule.expansion)):
                    symbol = rule.expansion[child_index]
                    if not matches_future_symbol(symbol, symbol_names, symbol_kind):
                        continue

                    # compute_child_inherited derives the occurrence index from the
                    # RHS prefix length; pad with empty slots for the intervening
                    # (not-yet-parsed) siblings to address a later occurrence.
                    prefix_attrs = list(rhs_attrs)
                    prefix_attrs += [None] * (child_index - len(prefix_attrs))
                    child_attrs = self.evaluator.compute_child_inherited(
                        rule,
                        lhs_attrs,
                        prefix_attrs,
                    )
                    if child_attrs.is_empty():
                        continue
                    existing = result.get(symbol.name)
                    if existing is None:
                        result[symbol.name] = child_attrs.copy()
                    else:
                        existing.merge(child_attrs)

        return result
