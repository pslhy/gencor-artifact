import time
import interegular
from interegular.fsm import FSM, Alphabet, anything_else, _AnythingElseCls
from typing import Any, Tuple, Dict, List, Optional
from parsers.incremental_parser import IncrementalParser
from utils import utils
from lark import Token
import networkx as nx
#import pywrapfst as fst
from collections import defaultdict
import os
import pickle
import hashlib
# import pynini


global_symbol_table = {}


class ConsumableAlphabet:
    """Membership view over an interegular FSM alphabet that honours the
    ``anything_else`` category.

    interegular represents a negated class (e.g. the ``[^'\\n\\\\]`` inside a
    STRING terminal) with a single ``anything_else`` symbol standing for every
    char not named explicitly ANYWHERE in the grammar. The FSM can therefore
    consume such chars -- in Python ``?`` and ``$`` appear only inside
    strings/comments and map to that symbol -- yet the raw interegular
    Alphabet's ``in`` reports them absent (only explicit keys are members).

    Every ``char in alphabet`` guard in the transducer/constrainers used that
    strict membership, so any token carrying an anything_else char was silently
    dropped or default-banned: constrained decoding could not emit ``(?`` /
    ``.+?`` / ``$`` even inside a string literal. This view makes ``in`` return
    True for any char the FSM can actually step on (explicit key OR
    anything_else present), while iteration/len still expose only the real
    explicit chars and ``[]`` delegates (unseen chars resolve to the
    anything_else category)."""

    def __init__(self, fsm_alphabet):
        self._alphabet = fsm_alphabet
        self._has_anything_else = anything_else in fsm_alphabet

    def __contains__(self, char):
        return char in self._alphabet or self._has_anything_else

    def __getitem__(self, char):
        return self._alphabet[char]

    def __iter__(self):
        return (k for k in self._alphabet if k is not anything_else)

    def __len__(self):
        return sum(1 for _ in self)


def repair_unpickled_alphabet(alphabet):
    """Re-key an unpickled interegular Alphabet onto the live ``anything_else``
    singleton and return it wrapped in a ConsumableAlphabet.

    ``_AnythingElseCls`` compares/hashes by identity, so a pickle round-trip
    orphans the anything_else key: ``alphabet[unknown_char]`` then returns
    None instead of the anything_else category, while a pickled
    ConsumableAlphabet still carries ``_has_anything_else=True`` as a baked
    bool -- membership guards pass but ``_get_category`` fails
    (``Unexpected char ?[None]``). Every path that unpickles a combined FSM
    must rebuild its alphabet view through this function instead of trusting
    pickled alphabet state."""
    mapping = {
        (anything_else if isinstance(key, _AnythingElseCls) else key): category
        for key, category in alphabet._symbol_mapping.items()
    }
    return ConsumableAlphabet(Alphabet(mapping))


def grammar_fingerprint(incremental_parser):
    # Salt with the parser fork name so caches don't collide across forks.
    grammar = getattr(incremental_parser, "grammar", "") or ""
    language = getattr(incremental_parser, "language", "") or ""
    payload = f"{language}\0semlark\0{grammar}".encode("utf-8")
    return hashlib.sha256(payload).hexdigest()

def literal_final_map_errors(char_transducer, terminals=None):
    """Detect hash-seed-lottery corruption in a CharTransducer (fresh or
    unpickled): for every literal terminal that is lexable standalone, walk its
    text through the combined FSM and require the reached final to map back to
    a literal terminal of the SAME text in final_to_terminal. Returns
    [(terminal_name, text, mapped_name)] for the violations (empty = healthy).

    ``terminals``: the TerminalDefs to validate against. MUST be passed for an
    unpickled transducer -- its own ``.terminals`` list does not survive
    pickling (observed empty), which silently turns the check into a no-op.
    """
    fsm = char_transducer.combined_fsm
    if terminals is None:
        terminals = char_transducer.terminals
    if not terminals:
        # No definitions to validate against = nothing was checked. Surface it
        # as an error rather than a vacuous pass.
        return [("<no terminal defs available>", "", None)]
    by_name = {t.name: t for t in terminals}
    errors = []
    for terminal in terminals:
        if terminal.pattern.type != 'str':
            continue
        text = terminal.pattern.value
        state = fsm.initial
        ok = True
        for ch in text:
            cat = fsm.alphabet.get(ch)
            if cat is None or cat not in fsm.map.get(state, {}):
                ok = False
                break
            state = fsm.map[state][cat]
        if not ok or state not in fsm.finals:
            continue  # literal not lexable standalone; not this check's concern
        mapped = char_transducer.final_to_terminal.get(state)
        mapped_def = by_name.get(mapped) if mapped else None
        if (
            mapped_def is None
            or mapped_def.pattern.type != 'str'
            or mapped_def.pattern.value != text
        ):
            errors.append((terminal.name, text, mapped))
    return errors


def get_id_of_str(string):
    
    if string == '': 
        return 0
    elif string in global_symbol_table:
        return global_symbol_table[string]
    else:
        global_symbol_table[string] = len(global_symbol_table) + 1
        return global_symbol_table[string]        


def get_final_states(fst_fsm):
    final_states = []
    for state in fst_fsm.states():
        if fst_fsm.final(state) != fst.Weight.zero(fst_fsm.weight_type()):
            final_states.append(state)
    return set(final_states)


def get_chars_from_category(target_category, alphabet):
        result = []
        for char, category in alphabet.items():
            if category == target_category:
                result.append(char)
        return result

# def convert_interegular_automaton_to_pywrapfst(inter_fsm):
    
#     fst_fsm = fst.VectorFst()
    
#     for state, category_transitions in inter_fsm.map.items():
#         for category, target in category_transitions.items():
#             fst_fsm.reserve_states(state)
#             s = fst_fsm.add_state()
#             fst_fsm.reserve_states(target)
#             t = fst_fsm.add_state()
#             for char in get_chars_from_category(category, inter_fsm.alphabet):
#                 if isinstance(char, str): 
#                     fst_fsm.add_arc(s, fst.Arc(ord(char), ord(char), fst.Weight.one(fst_fsm.weight_type()), t)) # TODO : deal with _AnythingElseCls
    
#     fst_fsm.set_start(inter_fsm.initial)
#     for final in inter_fsm.finals:
#         fst_fsm.set_final(final)

#     return fst_fsm


def convert_interegular_transducer_to_pywrapfst(transducer):

    node_to_state = {}
    fst_fst = fst.VectorFst()

    def get_state_id(node): 
        if node not in node_to_state:
            node_to_state[node] = fst_fst.add_state()
        return node_to_state[node]

    for state in transducer.transitions:
        for input, nexts in transducer.transitions[state].items():
            if not isinstance(nexts, set): 
                nexts = set([nexts])
            for (next_state, output) in nexts:
                s = get_state_id(state)
                t = get_state_id(next_state)
                output = '' if output is None else output.type 
                # output = ','.join([t.type for t in output]) if isinstance(output, tuple) else output 
                # print(f"input : {input}, output : {output}")
                assert (isinstance(output, str))
                output_encoded = get_id_of_str(output)
                if isinstance(input, int): 
                    for char in get_chars_from_category(input, transducer.alphabet):
                        if isinstance(char, str): 
                            input_encoded = get_id_of_str(char)
                        else: # anything else 
                            input_encoded = get_id_of_str('anything_else')
                        # print(input_encoded, ' ', output_encoded)
                        fst_fst.add_arc(s, fst.Arc(input_encoded, output_encoded, fst.Weight.one(fst_fst.weight_type()), t)) 

                else: # string 
                    input_encoded = get_id_of_str(input)
                    # print(input_encoded, ' ', output_encoded)
                    fst_fst.add_arc(s, fst.Arc(input_encoded, output_encoded, fst.Weight.one(fst_fst.weight_type()), t)) 
    
    fst_fst.set_start(transducer.initial)
    for final in transducer.finals:
        fst_fst.set_final(final)
    
    return fst_fst



class CharTransducer():

    def __init__(self, incremental_parser):
        
        # Get the terminals in order where they are defined in the grammar
        self.terminals = incremental_parser.base_parser.terminals
        self.ignore_terminal_types = incremental_parser.base_parser.lexer_conf.ignore
        
        # for identifying reachable terminals
        self._terminals_to_fsm = {} 
        self.incremental_parser = incremental_parser
        self.indenter = incremental_parser.base_parser.lexer_conf.postlex
        self.graph = None

        # construct the FSM for each terminal
        self.combined_fsm = None
        for terminal in self.terminals:
            print(f"Terminal: {terminal.name}, Pattern: {terminal.pattern} , type: {terminal.pattern.type}")
            try:
                regex_pattern = terminal.pattern.to_regexp()
                fsm = interegular.parse_pattern(regex_pattern).to_fsm()
                
                # construct (combined) interegular Regex FSM 
                if self.combined_fsm is None:
                    self.combined_fsm = fsm
                else:
                    self.combined_fsm = fsm.union(self.combined_fsm)
                self._terminals_to_fsm[terminal.name] = fsm
            except Exception as e:
                utils.error(f"Error processing terminal {terminal}: {e}")
                exit(-1)

        
        # get shortest paths from initial to finals
        # shortest_paths = nx.shortest_path(self.graph, source=self.combined_fsm.initial)
        
        terminal_to_finals = {}
        self.final_to_terminal = {}
        for terminal, fsm in self._terminals_to_fsm.items():
            intersection = self.combined_fsm.intersection(fsm)
            terminal_to_finals[terminal] = intersection.finals
            for final in intersection.finals:
                if final in self.final_to_terminal:
                    terminal_def1 = incremental_parser.base_parser.get_terminal(self.final_to_terminal[final])
                    terminal_def2 = incremental_parser.base_parser.get_terminal(terminal)
                    if terminal_def1.pattern.type == 're' and terminal_def2.pattern.type == 'str': 
                        # terminal_def1 is a regex and terminal_def2 is a string
                        # prefer the string terminal
                        self.final_to_terminal[final] = terminal
                else:
                    self.final_to_terminal[final] = terminal
            print(f"Terminal: {terminal}, intersection: {intersection.finals}")
    
        # TODO(semlark): this coverage check is non-deterministically FLAKY -- it
        # exits(42) "Rerun the program!" on some runs (the uncovered set differs run
        # to run). Cause: interegular numbers combined_fsm states in a
        # PYTHONHASHSEED-dependent order, and the large overlapping
        # PREFIX_SYMBOL/INFIX_SYMBOL operator regexes make the union fragile, so a
        # combined final is occasionally not covered by any per-terminal
        # intersection. The RETRY IS AVOIDABLE: a successful build is cached at the
        # grammar_constrainer level ({lang}_{model}.vocab-parser.tst) and reused, so
        # one good build is enough -- reruns only ever happen on the first
        # (cache-miss) build. Proper fix (never fail, even on cache miss): pin
        # PYTHONHASHSEED, or make this check state-ID-independent, or adopt
        # llguidance like greatgramma (its lexer FST has no such check -- this flaky
        # bug is gencor-specific, not inherited from greatgramma).
        # Sanity check -- all final states must be covered by the intersections
        all_finals = set()
        for _, finals in terminal_to_finals.items():
            all_finals.update(finals)
            
        # print(f"Number of combined finals: {len(self.combined_fsm.finals)} ->  {self.combined_fsm.finals}")
        # print(f"Number of all finals: {len(all_finals)} ->  {all_finals}")
        if (len(self.combined_fsm.finals - all_finals) > 0):
            utils.error(f"All finals are NOT covered by individual fsms : {self.combined_fsm.finals - all_finals} -- Rerun the program!")
            exit(42)

        # State-ID-independent check the coverage test misses: a literal
        # terminal (keyword/operator) whose own intersection lost its final to
        # the hash-seed lottery stays "covered" by an overlapping terminal --
        # either a regex (AS's final claimed by NAME) or ANOTHER literal
        # (';' claimed by HASH) -- silently corrupting final_to_terminal.
        # Maximal-munch resolution then breaks ('import x as' / '["a"; ...'
        # become unparseable) and the corrupt transducer gets CACHED. Walk each
        # literal's text through the combined FSM and demand its final maps
        # back to a literal terminal of the SAME text (see
        # literal_final_map_errors; also run on every cache load).
        errors = literal_final_map_errors(self)
        if errors:
            for name, text, mapped in errors[:5]:
                utils.error(
                    f"Literal terminal {name} ({text!r}) lost its final state "
                    f"to {mapped!r} (hash-seed-dependent intersection "
                    f"mis-numbering) -- Rerun the program!"
                )
            exit(42)

        # Start definining transducer
        self.initial = self.combined_fsm.initial
        self.finals = self.combined_fsm.finals
        # anything_else-aware view: chars covered only by negated classes
        # (e.g. '?'/'$' inside strings) are consumable but absent from the raw
        # alphabet's explicit keys -- see ConsumableAlphabet.
        self.alphabet = ConsumableAlphabet(self.combined_fsm.alphabet)
        # States are integers
        self.states = self.combined_fsm.states
        # Dict[State, Dict[Category, Tuple[State, Optional[Token]]]
        # Categories : integers assigned to characters in the regex
        self.transitions = {}

        # Make sure all regex FSM states are in our transitions
        for state in self.combined_fsm.map:
            self.transitions[state] = {}
        
        for state, category_transitions in self.combined_fsm.map.items():
            for category, target in category_transitions.items():
                # No terminal is emitted yet
                self.transitions[state][category] = (target, None)
        
        # Terminals are emitted -- add transitions from all final states to the initial state
        # See Algo 2 in https://arxiv.org/pdf/2502.05111 
        for final_state in self.finals: 
            for category, next_state in self.transitions[self.initial].items():
                 if category not in self.combined_fsm.map[final_state]:
                     token = Token(self.final_to_terminal[final_state], '') # TODO: value
                     self.transitions[final_state][category] = (next_state[0], token)

        # Don't minimize it. something weird happens (left as a record)
        # self.minimize()

        # Generate a labeled graph of the combined FSM using networkx
        self.graph = nx.DiGraph()

        # Add nodes with final states marked
        for state in self.states:
            self.graph.add_node(state)

        # Add edges with labels
        for state, category_transitions in self.transitions.items():
            for _, (target, token) in category_transitions.items():
                # we do not add labels -- since the graph is only for reachability checking 
                # if token is not None, it is a back edge emitting a token and going back to the initial state (should be ignored)
                if token is None:
                    self.graph.add_edge(state, target)

        # graph without Final State for realizable sequence calculation 
        self.graph_without_fs = self.graph.copy()
        self.graph_without_fs.remove_nodes_from(self.finals)
        # Table remembers last Token to add on currect State for Realizable Sequence
        self.realizable_sequence_memory = {}
        # Precompute realizable terminals for every state so the memory is fully
        # populated up front (and persisted in the character cache); runtime
        # lookups then never recompute. One-time, bounded by #states; skipped on
        # cache load (__setstate__ restores the memory without calling __init__).
        for state in self.states:
            self.realizable_terminals(state)

    def __getstate__(self):
        # These are the same character fields previously saved by VocabTransducer.
        return {
            "combined_fsm": self.combined_fsm,
            "initial": self.initial,
            "finals": self.finals,
            "states": self.states,
            "transitions": self.transitions,
            "final_to_terminal": self.final_to_terminal,
            "graph": self.graph,
            "alphabet": self.alphabet,
            "ignore_terminal_types": self.ignore_terminal_types,
            "realizable_sequence_memory": self.realizable_sequence_memory,
        }

    def __setstate__(self, state):
        self.__dict__.update(state)
        # Re-anchor anything_else to the live singleton, as in the old wrapper.
        self.alphabet = repair_unpickled_alphabet(self.combined_fsm.alphabet)
        self.terminals = []
        self.incremental_parser = None
        self.indenter = None

    def automaton_print(self):
        for alphabet in self.combined_fsm.alphabet:
            print(f"Alphabet: {repr(alphabet)} -> {self.combined_fsm.alphabet[alphabet]}")
        print("Final states:", self.combined_fsm.finals)
        for state in self.combined_fsm.map:
            print("State:", state)
            for byte_category, next_state in self.combined_fsm.map[state].items():
                print("  Transition:", byte_category, "->", next_state)


    def print(self):
        for alphabet in self.alphabet:
            print(f"Alphabet: {repr(alphabet)} -> {self.alphabet[alphabet]}")
        print("Initial state:", self.initial)
        print("Final states:", self.finals)
        for state in self.transitions:
            print("State:", state)
            for byte_category, next_state in self.transitions[state].items():
                print("  Transition:", byte_category, "->", next_state)

    def print_stat(self):
        print(f"Number of alphabets : {len(self.alphabet)}")
        print(f"Number of states : {len(self.states)}")
        print(f"Number of final states : {len(self.finals)}")
        print(f"Number of transitions : {len(self.transitions)}")
        print(f"Number of terminals : {len(self.terminals)}")

    
    def get_alphabets(self):
        """
        Returns the alphabet of the FSM as an anything_else-aware membership
        view: ``char in get_alphabets()`` is True for any char the FSM can
        consume (explicit key or, when the grammar has negated classes, any
        char via the anything_else category). Callers only ever do membership
        / iteration over it (see constrainers' ``c in self.alphabets`` filters).
        """
        return self.alphabet
        

    def _get_category(self, char) -> Any:
        # Via the alphabet view, NOT combined_fsm.alphabet directly: after a
        # cache load the view holds the repaired alphabet (see
        # repair_unpickled_alphabet) while the fsm's own copy has a dead
        # anything_else key.
        return self.alphabet[char]

    def realizable_terminals(self, state): 
        """
        Returns the set of realizable terminals for a given state.
        """
        # get all reachable finals from the given state in the graph
        
        if self.realizable_sequence_memory.get(state) is not None:
            return self.realizable_sequence_memory[state]
        
        terminals = []
        # Dedup by terminal TYPE: `name in terminals` compared the name string
        # against the Tokens' VALUES ('' -- lark Token is a str subclass), so it
        # never deduped and every reachable final of the same terminal re-fed
        # check_after_gen's candidate loop at full price.
        seen_types = set()

        shortest_paths = nx.shortest_path(self.graph, source=state)
        for final in self.finals:
            terminal_type = self.final_to_terminal[final]
            if final in shortest_paths and terminal_type not in seen_types:
                seen_types.add(terminal_type)
                terminals.append(Token(terminal_type, '')) # TODO : add a value

        self.realizable_sequence_memory[state] = terminals
        return terminals

    # def realizable_terminals(self, state): 
    #     """
    #     Returns the set of realizable terminals for a given state.
    #     """
    #     # get all reachable finals from the given state in the graph
        
    #     if self.realizable_sequence_memory.get(state) is not None:
    #         return self.realizable_sequence_memory[state]
        
    #     terminals = []
        
    #     if state in self.finals:
            
    #         in_edges = list(self.graph.in_edges(state))
    #         out_edges = list(self.graph.out_edges(state))
            
    #         self.graph_without_fs.add_node(state)
    #         self.graph_without_fs.add_edges_from(in_edges)
    #         self.graph_without_fs.add_edges_from(out_edges)
        
    #     for final in self.finals:
    #         try:    
    #             if not final == state:
                    
                
    #                 in_edges = list(self.graph.in_edges(final))
    #                 out_edges = list(self.graph.out_edges(final))
                
    #                 self.graph_without_fs.add_node(final)
    #                 self.graph_without_fs.add_edges_from(in_edges)
    #                 self.graph_without_fs.add_edges_from(out_edges)
                
    #             nx.shortest_path(self.graph_without_fs, source=state, target=final)
                
    #             if not final == state:
    #                 self.graph_without_fs.remove_node(final)
                
    #             if not Token(self.final_to_terminal[final], '') in terminals:
    #                 terminals.append(Token(self.final_to_terminal[final], '')) # TODO : add a value
                    
    #         except nx.NetworkXNoPath:
    #             if not final == state:
    #                 self.graph_without_fs.remove_node(final)
    #             continue
        
    #     self.realizable_sequence_memory[state] = terminals
        
        
    #     return terminals

    
    def consume_prefix(self, prefix : str, state=None, offline_mode=False) -> Tuple[List[Token], Any, List[Token]]:
        """
        Consume a prefix and return the tokens and the next state.
        In offline mode, realizable terminals are additionally returned. 
        """
        
        # default state is the initial state
        if state is None:
            state = self.initial
        
        # check if all chars in prefix are in the alphabet of the transducer
        if not all(chr in self.alphabet for chr in prefix):
            difference = set(prefix) - set(self.alphabet)
            raise ValueError(f"Prefix contains chars not in the alphabet {difference}")

        terminals = []
        current = state
        tmp = ""
        for char in prefix:
            category = self._get_category(char)
            if category is not None and category in self.transitions[current]:
                next_state, terminal = self.transitions[current][category]
                # print(f"Current {current} -- {char}[{category}]--> Next {next_state}, Lexing: {None if terminal is None else terminal.type}")
                if terminal is not None and not terminal.type in self.ignore_terminal_types:
                    terminal = Token(terminal.type, tmp)
                    tmp = ""
                    terminals.append(terminal)
                current = next_state
            else:
                # No valid transition
                raise ValueError(f"Unexpected char {char}[{category}] in state {current} tmp : {tmp}")
            tmp += char
            
        if offline_mode:
            # Get the realizable terminals for the current state
            realizables = self.realizable_terminals(current)
            # TODO: token values
            # print(f"Tokens: {tokens}  Realizables: {realizables}")
            return terminals, current, realizables, tmp
        else:
            return terminals, current, [], tmp


    def save(self, filename):
        # save to a file 
        with open(filename, 'wb') as f:
            pickle.dump((self.combined_fsm ,self.initial, self.finals, self.states, self.transitions, self.final_to_terminal, self.graph), f)
        utils.info("Char transducer saved to file.")
        return
    
    
    def minimize(self):
        """ Minimize the transducer using the Hopcroft algorithm. """    

        def get_partition_id(partition, state):
            for idx, group in enumerate(partition):
                if state in group:
                    return idx
            return None
        
        # Step 1: Initial partition: finals vs non-finals
        partition = []
        finals_group = set(self.finals)
        non_finals_group = set(self.states) - finals_group

        if finals_group:
            partition.append(finals_group)
        if non_finals_group:
            partition.append(non_finals_group)
        
        # Step 2: Refinement
        changed = True
        while changed:
            changed = False
            new_partition = []

            for group in partition:
                # Split group based on outgoing transitions
                splitter = defaultdict(set)
                for state in group:
                    signature = []
                    if state in self.transitions:
                        for category, (next_state, token) in self.transitions[state].items():
                            # Encode transition by (category, output_symbol, target partition id)
                            next_pid = get_partition_id(partition, next_state)
                            signature.append((category, token, next_pid))
                    signature = tuple(signature)
                    splitter[signature].add(state)
                
                # Add new groups
                for subgroup in splitter.values():
                    new_partition.append(subgroup)
                if len(splitter) > 1:
                    changed = True
            
            partition = new_partition

        # Step 3: Build minimized transducer
        state_mapping = {}
        minimized_states = set()
        minimized_finals = set()
        minimized_transitions = {}

        for idx, group in enumerate(partition):
            repr_state = next(iter(group))  # Choose a representative
            for state in group:
                state_mapping[state] = idx
            minimized_states.add(idx)
            if repr_state in self.finals:
                minimized_finals.add(idx)
        
        # Build minimized transitions
        for idx, group in enumerate(partition):
            repr_state = next(iter(group))
            if repr_state in self.transitions:
                minimized_transitions[idx] = {}
                for category, (next_state, token) in self.transitions[repr_state].items():
                    minimized_transitions[idx][category] = (state_mapping[next_state], token)
        
        minimized_initial = state_mapping[self.initial]

        # Update the transducer with minimized states and transitions
        self.initial = minimized_initial
        self.states = minimized_states
        self.finals = minimized_finals
        self.transitions = minimized_transitions

        for final in self.finals: 
            for _, (next_state, token) in self.transitions[final].items():
                if token is not None:
                    self.final_to_terminal[final] = token

    
    

def load_char_transducer_from_file(filename, incremental_parser):

    if os.path.exists(filename):
        with open(filename, 'rb') as f:
            (combined_fsm, initial, finals, states, transitions, final_to_terminal, graph) = pickle.load(f)
            transducer = CharTransducer(incremental_parser)
            transducer.combined_fsm = combined_fsm
            transducer.initial = initial 
            transducer.finals = finals 
            transducer.states = states
            transducer.transitions = transitions
            transducer.final_to_terminal = final_to_terminal
            transducer.graph = graph
            # The __init__ above built a FRESH alphabet view whose categories
            # need not match the pickled transitions (hash-seed lottery), and
            # the pickled fsm's anything_else key is dead -- rebuild the view
            # from the loaded fsm.
            transducer.alphabet = repair_unpickled_alphabet(combined_fsm.alphabet)
            utils.info("Char transducer loaded from file.")
            return transducer
    
    else:
        utils.error("File not found: %s" % filename)
        exit(-1)
    
    return


class Detokenizer():

    def __init__(self, vocabs):
        self.vocabs = vocabs
        self.initial = 0 # self.get_state_id('')
        self.finals = set([self.initial])
        self.states = set([self.initial])
        # Dict[State, Dict[str(epsilon or vocab), Set[Tuple[State, chr(character of a vocab)]]]]
        self.transitions = {}
        self.str_to_state = {}
        
        # Algo 3 in https://arxiv.org/pdf/2502.05111 
        for vocab in vocabs:
            prev = self.initial
            if len(vocab) == 0:
                continue
            for i in range(len(vocab) - 1):
                # get 0 ~ ith chars of vocab
                prefix = vocab[:i+1]
                state_prefix = self.get_state_id(prefix)
                self.states.add(state_prefix)
                if prev not in self.transitions:
                    self.transitions[prev] = {}
                if '' not in self.transitions[prev]:
                    self.transitions[prev][''] = set()
                # prev_state, input -> next_state, output 
                # there may be multiple transitions fired by epsilon
                self.transitions[prev][''].add((state_prefix, vocab[i]))
                prev = state_prefix
            if prev not in self.transitions:
                self.transitions[prev] = {}
            # the last transition that emits the last character of the vocab
            self.transitions[prev][vocab] = set([(self.initial, vocab[-1])])


    def get_state_id(self, string):
        if string == '': return 0 
        elif string in self.str_to_state:
            return self.str_to_state[string]
        else:
            # state number starts from 1 
            state = len(self.states) + 1
            self.str_to_state[string] = state
            return state


    def print(self):
        print("Initial state:", self.initial)
        print("Final state:", self.finals)
        for state in self.transitions:
            print("State:", state)
            for vocab, nexts in self.transitions[state].items():
                for (next_state, output) in nexts:
                    print("  Transition:", vocab, "->", next_state, output)
