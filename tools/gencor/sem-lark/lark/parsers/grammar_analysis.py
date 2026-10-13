"Provides for superficial grammar analysis."

from collections import Counter, defaultdict
from typing import List, Dict, Iterator, FrozenSet, Set, Tuple

from ..utils import bfs, fzset, classify, OrderedSet
from ..exceptions import GrammarError
from ..grammar import Rule, Terminal, NonTerminal, Symbol
from ..common import ParserConf


class RulePtr:
    __slots__ = ('rule', 'index')
    rule: Rule
    index: int

    def __init__(self, rule: Rule, index: int):
        assert isinstance(rule, Rule)
        assert index <= len(rule.expansion)
        self.rule = rule
        self.index = index

    def __repr__(self):
        before = [x.name for x in self.rule.expansion[:self.index]]
        after = [x.name for x in self.rule.expansion[self.index:]]
        return '<%s : %s * %s>' % (self.rule.origin.name, ' '.join(before), ' '.join(after))

    @property
    def next(self) -> Symbol:
        return self.rule.expansion[self.index]

    def advance(self, sym: Symbol) -> 'RulePtr':
        assert self.next == sym
        return RulePtr(self.rule, self.index+1)

    @property
    def is_satisfied(self) -> bool:
        return self.index == len(self.rule.expansion)

    def __eq__(self, other) -> bool:
        if not isinstance(other, RulePtr):
            return NotImplemented
        return self.rule == other.rule and self.index == other.index

    def __hash__(self) -> int:
        return hash((self.rule, self.index))


State = FrozenSet[RulePtr]

# state generation ensures no duplicate LR0ItemSets
class LR0ItemSet:
    __slots__ = ('kernel', 'closure', 'transitions', 'lookaheads')

    kernel: State
    closure: State
    transitions: Dict[Symbol, 'LR0ItemSet']
    lookaheads: Dict[Symbol, Set[Rule]]

    def __init__(self, kernel, closure):
        self.kernel = fzset(kernel)
        self.closure = fzset(closure)
        self.transitions = {}
        self.lookaheads = defaultdict(set)

    def __repr__(self):
        return '{%s | %s}' % (', '.join([repr(r) for r in self.kernel]), ', '.join([repr(r) for r in self.closure]))


def update_set(set1, set2):
    if not set2 or set1 > set2:
        return False

    copy = set(set1)
    set1 |= set2
    return set1 != copy

def calculate_sets(rules):
    """Calculate FOLLOW sets.

    Adapted from: http://lara.epfl.ch/w/cc09:algorithm_for_first_and_follow_sets"""
    symbols = {sym for rule in rules for sym in rule.expansion} | {rule.origin for rule in rules}

    # foreach grammar rule X ::= Y(1) ... Y(k)
    # if k=0 or {Y(1),...,Y(k)} subset of NULLABLE then
    #   NULLABLE = NULLABLE union {X}
    # for i = 1 to k
    #   if i=1 or {Y(1),...,Y(i-1)} subset of NULLABLE then
    #     FIRST(X) = FIRST(X) union FIRST(Y(i))
    #   for j = i+1 to k
    #     if i=k or {Y(i+1),...Y(k)} subset of NULLABLE then
    #       FOLLOW(Y(i)) = FOLLOW(Y(i)) union FOLLOW(X)
    #     if i+1=j or {Y(i+1),...,Y(j-1)} subset of NULLABLE then
    #       FOLLOW(Y(i)) = FOLLOW(Y(i)) union FIRST(Y(j))
    # until none of NULLABLE,FIRST,FOLLOW changed in last iteration

    NULLABLE = set()
    FIRST = {}
    FOLLOW = {}
    for sym in symbols:
        FIRST[sym]={sym} if sym.is_term else set()
        FOLLOW[sym]=set()

    # Calculate NULLABLE and FIRST
    changed = True
    while changed:
        changed = False

        for rule in rules:
            if set(rule.expansion) <= NULLABLE:
                if update_set(NULLABLE, {rule.origin}):
                    changed = True

            for i, sym in enumerate(rule.expansion):
                if set(rule.expansion[:i]) <= NULLABLE:
                    if update_set(FIRST[rule.origin], FIRST[sym]):
                        changed = True
                else:
                    break

    # Calculate FOLLOW
    changed = True
    while changed:
        changed = False

        for rule in rules:
            for i, sym in enumerate(rule.expansion):
                if i==len(rule.expansion)-1 or set(rule.expansion[i+1:]) <= NULLABLE:
                    if update_set(FOLLOW[sym], FOLLOW[rule.origin]):
                        changed = True

                for j in range(i+1, len(rule.expansion)):
                    if set(rule.expansion[i+1:j]) <= NULLABLE:
                        if update_set(FOLLOW[sym], FIRST[rule.expansion[j]]):
                            changed = True

    return FIRST, FOLLOW, NULLABLE


class GrammarAnalyzer:
    def __init__(self, parser_conf: ParserConf, debug: bool=False, strict: bool=False):
        self.debug = debug
        self.strict = strict

        root_rules = {start: Rule(NonTerminal('$root_' + start), [NonTerminal(start), Terminal('$END')])
                      for start in parser_conf.start}

        rules = parser_conf.rules + list(root_rules.values())
        self.rules_by_origin: Dict[NonTerminal, List[Rule]] = classify(rules, lambda r: r.origin)

        if len(rules) != len(set(rules)):
            duplicates = [item for item, count in Counter(rules).items() if count > 1]
            raise GrammarError("Rules defined twice: %s" % ', '.join(str(i) for i in duplicates))

        for r in rules:
            for sym in r.expansion:
                if not (sym.is_term or sym in self.rules_by_origin):
                    raise GrammarError("Using an undefined rule: %s" % sym)

        self.start_states = {start: self.expand_rule(root_rule.origin)
                             for start, root_rule in root_rules.items()}

        self.end_states = {start: fzset({RulePtr(root_rule, len(root_rule.expansion))})
                           for start, root_rule in root_rules.items()}

        lr0_root_rules = {start: Rule(NonTerminal('$root_' + start), [NonTerminal(start)])
                for start in parser_conf.start}

        lr0_rules = parser_conf.rules + list(lr0_root_rules.values())
        assert(len(lr0_rules) == len(set(lr0_rules)))

        self.lr0_rules_by_origin = classify(lr0_rules, lambda r: r.origin)

        # cache RulePtr(r, 0) in r (no duplicate RulePtr objects)
        self.lr0_start_states = {start: LR0ItemSet([RulePtr(root_rule, 0)], self.expand_rule(root_rule.origin, self.lr0_rules_by_origin))
                for start, root_rule in lr0_root_rules.items()}

        self.FIRST, self.FOLLOW, self.NULLABLE = calculate_sets(rules)

    def expand_rule(self, source_rule: NonTerminal, rules_by_origin=None) -> OrderedSet[RulePtr]:
        "Returns all init_ptrs accessible by rule (recursive)"

        if rules_by_origin is None:
            rules_by_origin = self.rules_by_origin

        init_ptrs = OrderedSet[RulePtr]()
        def _expand_rule(rule: NonTerminal) -> Iterator[NonTerminal]:
            assert not rule.is_term, rule

            for r in rules_by_origin[rule]:
                init_ptr = RulePtr(r, 0)
                init_ptrs.add(init_ptr)

                if r.expansion: # if not empty rule
                    new_r = init_ptr.next
                    if not new_r.is_term:
                        assert isinstance(new_r, NonTerminal)
                        yield new_r

        for _ in bfs([source_rule], _expand_rule):
            pass

        return init_ptrs

def _ruleptr_order_key(ruleptr: RulePtr):
    rule = ruleptr.rule
    return (
        str(rule.origin.name),
        rule.order,
        tuple(symbol.name for symbol in rule.expansion),
        ruleptr.index,
        rule.alias or "",
    )


class StateMap:
    """A compact graph view of one LALR item state."""

    def __init__(self, state: State):
        self.repr_sym = None
        self.repr_ruleptr = []

        self.sym_rule_to_idx = defaultdict(dict) # str -> (List[str] -> int)
        self.sym_idx_to_rule = defaultdict(dict) # str -> (int -> List[str])
        self.sym_idx_to_meta = defaultdict(dict) # str -> (int -> Rule)
        self.sym_to_idx = {} # str -> int
        self.idx_to_sym = {} # int -> str

        self.is_bottom = False

        self.edges = defaultdict(list) # (int, int, int) -> List[(int, int, int)]
        self.back_edges = defaultdict(list) # (int, int, int) -> List[(int, int, int)]

        for ruleptr in sorted(state, key=_ruleptr_order_key):
            ptr = ruleptr.index
            rule = ruleptr.rule
            lhs_sym = str(rule.origin.name)
            nxt_sym = rule.expansion[ptr].name if ptr < len(rule.expansion) else None
            # Rule pointers with ptr > 0 identify symbols already recognized in
            # this parser state.
            if ptr > 0 or lhs_sym.startswith('$root_'):
                self.repr_ruleptr.append(ruleptr)
                if lhs_sym.startswith('$root_'):
                    self.is_bottom = True
                else:
                    if self.repr_sym is not None:
                        assert self.repr_sym == ruleptr.rule.expansion[ptr - 1], f"INVARIANT FAILED: Multiple representation symbols in state: {self.repr_sym}, {ruleptr.rule.expansion[ptr - 1]}"
                    self.repr_sym = ruleptr.rule.expansion[ptr - 1]
            
            if lhs_sym not in self.sym_to_idx:
                idx = len(self.sym_to_idx)
                self.sym_to_idx[lhs_sym] = idx
                self.idx_to_sym[idx] = lhs_sym
            
            if nxt_sym is not None and nxt_sym not in self.sym_to_idx:
                idx = len(self.sym_to_idx)
                self.sym_to_idx[nxt_sym] = idx
                self.idx_to_sym[idx] = nxt_sym

            if tuple(rule.expansion) not in self.sym_rule_to_idx[lhs_sym]:
                idx = len(self.sym_rule_to_idx[lhs_sym])
                self.sym_rule_to_idx[lhs_sym][tuple(rule.expansion)] = idx
                self.sym_idx_to_rule[lhs_sym][idx] = tuple(rule.expansion)
                self.sym_idx_to_meta[lhs_sym][idx] = rule

        self.build_edges()

    def build_edges(self):
        queue = []

        for ruleptr in self.repr_ruleptr:
            ptr = ruleptr.index
            rule = ruleptr.rule
            lhs_sym = str(rule.origin.name)
            
            # sym_idx = self.sym_to_idx[lhs_sym]
            rule_idx = self.sym_rule_to_idx[lhs_sym][tuple(rule.expansion)]
            queue.append((lhs_sym, rule_idx, ptr))

        qidx = 0
        while qidx < len(queue):
            c_sym, c_rule_idx, c_ptr = queue[qidx]
            c_sym_idx = self.sym_to_idx[c_sym]
            cur_vtx = (c_sym_idx, c_rule_idx, c_ptr)
            qidx += 1

            if c_ptr >= len(self.sym_idx_to_rule[c_sym][c_rule_idx]):
                continue
            nxt_sym = self.sym_idx_to_rule[c_sym][c_rule_idx][c_ptr].name
            nxt_sym_idx = self.sym_to_idx[nxt_sym]

            for nxt_rule_idx in self.sym_idx_to_rule[nxt_sym]:
                nxt_vtx = (nxt_sym_idx, nxt_rule_idx, 0)

                # TODO: This is greedy cycle breaking. The stable RulePtr order
                # in StateMap.__init__ only makes the chosen DAG reproducible;
                # it does not guarantee that all useful closure edges survive.
                # Left-recursive alternatives such as Python's atom_expr
                # postfix rules can still lose a needed edge. Replace this with
                # an order-independent construction, for example by collecting
                # all candidate edges first and handling SCCs deterministically.
                if self.validate_edge(cur_vtx, nxt_vtx):
                    self.edges[cur_vtx].append(nxt_vtx)
                    self.back_edges[nxt_vtx].append(cur_vtx)

                    if (nxt_sym, nxt_rule_idx, 0) not in queue:
                        queue.append((nxt_sym, nxt_rule_idx, 0))

    def validate_edge(self, cur_vtx, nxt_vtx):
        if cur_vtx == nxt_vtx:
            return False

        if nxt_vtx in self.edges[cur_vtx]:
            return False

        stack = [nxt_vtx]
        visited = {nxt_vtx}

        while stack:
            vtx = stack.pop()
            if vtx == cur_vtx:
                return False

            for adj in self.edges[vtx]:
                if adj not in visited:
                    visited.add(adj)
                    stack.append(adj)

        return True
