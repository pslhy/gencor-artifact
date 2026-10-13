import torch
from parsers.incremental_parser import IncrementalParser
from utils import utils 
from parsers.transducer import CharTransducer
import parsers.transducer as transducer
import os
import pickle
import config
from lark import Token
from lark.exceptions import UnexpectedCharacters
from collections import defaultdict
import time

def terminals_to_string(terminals):
    return ' '.join([t.type for t in terminals]) # TODO: value

def string_to_terminals(terminal_str):
    return [Token(t, '') for t in terminal_str.split()] # TODO: value


class GrammarConstrainer:

    def __init__(self, model_name, tokenizer, incremental_parser: IncrementalParser):
        # LLM model
        self.model_name = model_name
        self.tokenizer = tokenizer 
        self.incremental_parser : IncrementalParser = incremental_parser
        # terminals in grammar
        self.terminals = incremental_parser.base_parser.terminals
        self.transducer = None
        self.current_state = None
        self.token_id_to_string = {}
        self.vocabs = self.tokenizer.vocab
        self.initialized = False
        self.initial_code = ""
        # eos/stop-token set used to gate eos_handling (grammar accept-check).
        # Default = tokenizer's single eos; ModelConnector overrides with the
        # full generation_config set (e.g. gemma <end_of_turn>=106) so a chat
        # turn-terminator only stops generation when the grammar actually accepts.
        self.eos_ids = {self.tokenizer.eos_token_id}
        import time
        start = time.time()
        self.precompute()
        # Eagerly build the vocabulary char-trie so it is ready before decoding.
        # precompute() has populated token_id_to_string via either the cache-load
        # or the rebuild path, so both are covered by this single build. It is a
        # derived one-pass structure over the vocab, so it is rebuilt here rather
        # than persisted alongside the cached transducer.
        self._char_trie = self._build_char_trie()
        end = time.time()

        # Postlex (indentation) support, gated by the GRAMMAR itself: when the
        # LALR table acts on the declared _INDENT/_DEDENT terminals, trial feeds
        # and commits route through the indenter (see
        # the postlex_* hook API below). None for grammars without them.
        from constrainers.indent_grammar_constrainer import (
            IndentState,
            grammar_uses_indenter,
        )
        self.indenter = (
            IndentState()
            if grammar_uses_indenter(self.incremental_parser.get_parser_state().parse_conf.parse_table)
            else None
        )

        self.alphabet = []
        self.statics = {}
        self.prompt = ""
        self.tmp_remainder = ""
        self.statics = defaultdict(int)
        # self.init_statics()
        
        print(end-start)

    def reset(self):
        self.initial_code = ""
        self.initialized = False
        self.current_state = None
        self.prompt = ""
        self.tmp_remainder = ""
        self.incremental_parser.reset()
        self.statics = defaultdict(int)
        if self.indenter is not None:
            self.indenter = type(self.indenter)()

    # --- postlex hook API ----------------------------------------------------
    # The grammar layer owns whether the grammar needs postlex token injection
    # (_INDENT/_DEDENT). Consumers (SemanticGrammarConstrainer) call these and
    # stay agnostic: without an indenter they are identity/no-ops.

    def postlex_trial(self):
        """Opaque trial context for speculative feeds (or None)."""
        return self.indenter.copy() if self.indenter is not None else None

    def postlex_fork(self, trial):
        """Independent copy of a trial, for per-candidate branches."""
        return trial.copy() if trial is not None else None

    def postlex_feed(self, trial, terminals):
        """The token list to actually feed the parser for `terminals` under
        `trial` (postlex tokens injected, trial advanced). None = the terminals
        are invalid under the postlex (e.g. mismatched dedent column)."""
        if trial is None:
            return terminals
        from constrainers.indent_grammar_constrainer import trial_feed
        return trial_feed(trial, terminals)

    def postlex_eos_tail(self, trial):
        """Extra tokens the postlex requires before $END (drain open suites)."""
        return trial.close_all() if trial is not None else []

    def postlex_commit(self, terminals):
        """Commit-time counterpart of postlex_feed on the REAL postlex state."""
        if self.indenter is None:
            return terminals
        from constrainers.indent_grammar_constrainer import commit_feed
        return commit_feed(self.indenter, terminals)

    def set_parser_state(self, parser_state):
        self.incremental_parser.set_parser_state(parser_state)


    # def init_statics(self):
    #     self.statics = {
    #         "tseqs": 0,
    #         "decoded": 0,
            
    #         "syncor_time": 0.0,

    #         "syncor_consume_time": 0.0,
    #         "syncor_inc_parser_time": 0.0,
    #         "syncor_tmp_parser_time": 0.0,
    #         "syncor_accepted_tseqs": 0,
    #         "syncor_rejected_tseqs": 0,
    #         "syncor_accepted_tids": 0,
    #         "syncor_rejected_tids": 0,

    #         "syncor_update_time": 0.0,
    #         "syncor_mask_time": 0.0,
    #     }
    
    def is_end(self):
        # prompt = self.prompt + self.tmp_remainder
        # prompt_splited = prompt.split('\n')
        # is_prompt = True
        # newline_cnt = 0
        # for p in prompt_splited:
        #     if not is_prompt:
        #         if len(p) > 0 and p[0] != ' ':
        #             return True
        #         elif len(p) == 0:
        #             newline_cnt += 1
        #             if newline_cnt > 5:
        #                 return True
        #     if is_prompt and len(p) > 0 and p[0] == ' ':
        #         is_prompt = False
        
        return False

    def results(self):
        if set(self.tmp_remainder.strip()) == set('`'):
            return self.statics, self.prompt
        return self.statics, self.prompt + self.tmp_remainder

    def precompute(self):
        # Candidate checks use the character transducer and restricted vocabulary.
        model_name = self.model_name.replace("/", "_")
        cache_version = "char-trie-v1-anyelse-semlark"
        grammar_id = transducer.grammar_fingerprint(self.incremental_parser)
        cache_path = config.bin_path(
            f'{self.incremental_parser.language}_{model_name}.char-trie.tst'
        )

        # Fast path: reload the character transducer + restricted vocab.
        if os.path.exists(cache_path):
            with open(cache_path, 'rb') as f:
                payload = pickle.load(f)
            if (
                isinstance(payload, tuple)
                and len(payload) == 5
                and payload[0] == cache_version
                and payload[2] == grammar_id
            ):
                # Guard against caches baked by a corrupt (hash-seed-lottery)
                # build before the build-time validation existed: a poisoned
                # final_to_terminal (e.g. ';' -> HASH) silently mis-lexes and
                # derails whole runs. Cheap (walks each literal once); on
                # corruption fall through to a fresh, validated rebuild.
                corrupt = transducer.literal_final_map_errors(
                    payload[3],
                    # the pickled transducer's own terminal defs do not survive
                    # pickling; validate against the live parser's
                    terminals=self.incremental_parser.base_parser.terminals,
                )
                if corrupt:
                    utils.error(
                        f"Cached transducer {cache_path} is corrupt "
                        f"({corrupt[:3]}...); rebuilding it."
                    )
                else:
                    (
                        _,
                        _,
                        _,
                        self.transducer,
                        self.token_id_to_string,
                    ) = payload
                    self.alphabets = self.transducer.get_alphabets()
                    utils.info("Candidate character transducer loaded from file.")
                    return

        max_token_len = 30
        char_transducer = CharTransducer(self.incremental_parser)
        self.alphabets = char_transducer.get_alphabets()

        # Restrict the vocabulary to the transducer alphabet.
        # TODO(undecided): the wsb branch decodes tokens with
        # `decode_token_for_grammar` (raw piece: U+2581->space, <0x..>->byte) --
        # its whitespace-tokenization fix -- instead of `tokenizer.decode`. We did
        # NOT port it here and kept `tokenizer.decode`. Not yet sure whether it
        # should be added: it's a separate (whitespace-correctness) concern from
        # the table-mask, and to be correct it must be applied CONSISTENTLY in
        # both this precompute AND update_by_decoded (and the semantic layer's
        # decoding in semantic_constrainer.py) -- otherwise the table's emitted
        # terminals desync from the lexer-state advance. Revisit if whitespace
        # handling turns out wrong on real generations.
        for token_str, token_id in self.vocabs.items():
            decoded = self.surface_decode(token_id)
            if all(char in self.alphabets for char in decoded) and len(token_str) <= max_token_len:
                self.token_id_to_string[token_id] = decoded

        self.transducer = char_transducer

        with open(cache_path, 'wb') as f:
            pickle.dump(
                (
                    cache_version,
                    "parser",
                    grammar_id,
                    self.transducer,
                    self.token_id_to_string,
                ),
                f,
            )
        return

    def _build_char_trie(self):
        # Radix (compressed) trie: each edge carries a multi-char label, so a
        # branch-free run of characters collapses to ONE edge -> one feasibility
        # probe in check_with_trie instead of one per character.
        # node = [edges, token_ids]
        #   edges: dict first_char -> [label, child_node]
        #   token_ids: tokens ending exactly at this node
        root = [{}, []]

        def lcp(a, b):
            n = min(len(a), len(b))
            i = 0
            while i < n and a[i] == b[i]:
                i += 1
            return i

        for tid, s in self.token_id_to_string.items():
            if not s:
                # empty-decoded tokens (specials) are never content -- excluding
                # them keeps the trie to nonempty candidate surfaces.
                continue
            node = root
            while True:
                if not s:
                    # token string fully consumed -> it ends exactly at this node
                    node[1].append(tid)
                    break
                edge = node[0].get(s[0])
                if edge is None:
                    # no edge shares this first char -> whole rest is one new edge
                    node[0][s[0]] = [s, [{}, [tid]]]
                    break
                label, child = edge
                k = lcp(label, s)
                if k == len(label):
                    # edge label is a prefix of s -> consume it and descend
                    node, s = child, s[k:]
                    continue
                # s and label diverge inside the label -> split the edge at k:
                # parent -> mid (shared label[:k]) -> {existing child, new leaf}
                mid = [{}, []]
                node[0][s[0]] = [label[:k], mid]
                mid[0][label[k]] = [label[k:], child]
                rest = s[k:]
                if rest:
                    mid[0][rest[0]] = [rest, [{}, [tid]]]
                else:
                    mid[1].append(tid)
                break
        
        def pull(node):
            for child in node[0].values():
                pull(child[1])
                node[1].extend(child[1][1])
        pull(root)
        return root

    def surface_decode(self, token_ids):
        # Position-safe per-token decode on the standard tokenizer (see
        # utils.surface_decode). Used everywhere the grammar layer needs a
        # token's surface string, in lockstep with the precompute map.
        return utils.surface_decode(self.tokenizer, token_ids)

    def update_by_decoded(self, input_ids: torch.LongTensor):
        remover = False
        if self.initialized == False:
            token_ids = input_ids[0].tolist()
            self.initialized = True
            remover = True
        else: 
            self.statics["decoded"] += 1
            # token_ids = [11148, input_ids[0][-1].item()]
            token_ids = [input_ids[0][-1].item()]

        # consume_start = time.time()
        # decoded = self.tokenizer.decode(token_ids, skip_special_tokens=True)[
        #     0 if len(token_ids) != 2 else 2 : 
        # ]
        # surface_decode (anchor-prefix) keeps this in lockstep with the
        # precompute map so the transducer's emitted terminals stay in sync with
        # the lexer-state advance -- the whitespace concern the wsb branch's
        # decode_token_for_grammar addressed differently.
        decoded = self.surface_decode(token_ids)
        # print("A",decoded)
        # decoded = utils.handle_long_string(decoded)
        if remover:
            decoded = self.initial_code
            decoded = utils.remove_newline_in_brackets(decoded)
        decoded = ''.join(filter(lambda c: c in self.alphabets, decoded))
        # print("B",decoded)
        # decoded : str = utils.remove_escape_characters(decoded)
        terminals, next_state, _, remainder = self.transducer.consume_prefix(decoded, self.current_state, False)

        if len(terminals) > 0:
            terminals[0].value = self.tmp_remainder + terminals[0].value
            self.tmp_remainder = remainder
        else:
            self.tmp_remainder += remainder

        # self.statics["syncor_consume_time"] += time.time() - consume_start
        # print(f"Token IDs: {token_ids}, Decoded: {decoded}, Terminals: {terminals}, Before state: {self.current_state}, Next state: {next_state}")
        self.current_state = next_state
        if len(terminals) > 0:
            # inc_parser_start = time.time()
            self.incremental_parser.feed_tokens(
                self.postlex_commit(terminals), update_attrs=False
            )
            for term in terminals:
                # Drop a markdown code fence terminal (opening ```lang / closing
                # ```), but NOT a string/docstring that merely CONTAINS ``` in its
                # content -- `in` over-matched and dropped whole docstrings whose
                # text echoed "```python...```".
                stripped = term.value.strip()
                if stripped.startswith('```') or stripped.endswith('```'):
                    continue
                self.prompt += term.value
            # self.statics["syncor_inc_parser_time"] += time.time() - inc_parser_start
            
            # for terminal in self.incremental_parser.interactive.accepts():
            #     utils.info(f"Next accepted terminal: {terminal}")
        




    

    def eos_handling(self, decoded=""):
        # print("Eos handling called.")
        remainder = self.tmp_remainder + decoded
        # print(f"Checking EOS with remainder: {repr(remainder)}")
        try:
            terms = list(self.incremental_parser.lex(remainder))
            # print(f"Lexed terms at EOS: {terms} from remainder: {repr(remainder)}")
        except UnexpectedCharacters as e:
            return False
        trial = self.postlex_trial()
        terms = self.postlex_feed(trial, terms)
        if terms is None:
            return False
        terms = list(terms) + self.postlex_eos_tail(trial)
        terms.append(Token('$END', ''))
        self.incremental_parser.set_memo(include_attrs=False)
        can_accept = self.incremental_parser.try_feed_tokens(terms) is not None
        self.incremental_parser.load_memo(include_attrs=False)
        return can_accept

    def check_after_gen(self, token_id, _probe_chars=None):
        # Only SemanticGrammarConstrainer implements read-only prefix probes.
        if _probe_chars is not None:
            raise NotImplementedError(
                "check_after_gen(_probe_chars=...) is not implemented on the base "
                "GrammarConstrainer; override it (see SemanticGrammarConstrainer)."
            )
        # print(f"Checking after generation of token ID: {token_id}")
        if token_id in self.eos_ids:
            return self.eos_handling()
        if self.indenter is None:
            # TODO (syntax): Validate non-EOS candidates for non-indenter
            # grammars; this path currently accepts them without a parse check.
            return True
        # Indent grammars: verify
        # the chosen token strictly -- post-lex the terminal sequence the
        # transducer emits for it (exact _INDENT/_DEDENT injection) and check
        # it truly feeds the parser.
        decoded = self.surface_decode(token_id)
        decoded = "".join(c for c in decoded if c in self.alphabets)
        try:
            terminals, _, realizable, remainder = self.transducer.consume_prefix(
                decoded, self.current_state, True
            )
        except ValueError:
            return False
        if terminals:
            terminals[0].value = self.tmp_remainder + terminals[0].value
        else:
            remainder = self.tmp_remainder + remainder

        trial = self.postlex_trial()
        prefix = self.postlex_feed(trial, terminals)
        if prefix is None:
            return False

        ip = self.incremental_parser
        base = ip.save_memo(include_attrs=False)
        if ip.try_feed_tokens(prefix, update_attrs=False) is None:
            ip.restore_memo(base, include_attrs=False)
            return False
        if not realizable:
            ip.restore_memo(base, include_attrs=False)
            return True                    # terminals fully fed -> valid
        # verify some completion of the still-forming last terminal can shift
        # after the prefix -> the token can lead into the parser. This also
        # rejects a dead token (e.g. an identifier that can never complete at the
        # current indent, which would otherwise be deferred and grow forever).
        ip.set_memo(include_attrs=False)   # checkpoint: base + prefix
        accepted = False
        for term in realizable:
            ip.load_memo(include_attrs=False)
            tail = self.postlex_fork(trial)
            last = self.postlex_feed(tail, [Token(term.type, remainder)])
            if last is None:
                continue
            if ip.try_feed_tokens(last, update_attrs=False) is not None:
                accepted = True
                break
        ip.restore_memo(base, include_attrs=False)
        return accepted
