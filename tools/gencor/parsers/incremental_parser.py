import importlib
import lark
import os
import time
import config
from utils import utils
from lark.exceptions import *
from lark.lexer import Token, LexerThread


class ParserTrieNode:
    """One parser state in the IncrementalParser trie.

    ``memo`` is an independent snapshot (as produced by ``save_memo``) of the
    parser state reached by feeding this node's edge; ``children`` maps a fed
    token TYPE to the node reached by feeding it. Nodes are treated as IMMUTABLE
    once created. The trie is walked and grown by ``try_feed_tokens``
    (speculative feeds) and advanced on commit by ``feed_tokens``.

    Keyed by ``token.type`` ALONE. This is sound only because the memo is
    value-independent for the grammars in use: their semantic contexts are
    position/counter-only (``terminal_index += 1``) and terminal attrs are
    selected by type, so two feeds differing only in value produce identical
    memos. A grammar whose context captured token values would need the value
    in the key.
    """

    __slots__ = ("memo", "children")

    def __init__(self, memo):
        self.memo = memo
        self.children = {}

class FailNode(ParserTrieNode):
    """A special node representing a failed parse. It has no children and is used
    to indicate that a token feed resulted in a parse failure. This allows the
    trie to remember that a certain token sequence leads to a failure, so it can
    avoid re-parsing the same sequence in the future.
    """

    def __init__(self):
        super().__init__(memo=None)
        self.children = None  # No children for a fail node

FAIL = FailNode()  # Singleton instance of a fail node

class IncrementalParser:

    def __init__(self, language): 
        self.language = language
        # load a grammar using lark
        grammar_filename = f'{os.path.dirname(__file__)}/../grammars/{language}_grammar.lark'
        if not os.path.exists(grammar_filename):
            utils.error(f"Grammar file {grammar_filename} does not exist")
            raise FileNotFoundError(f"Grammar file {grammar_filename} does not exist")
        
        utils.info(f"Loading grammar {grammar_filename}")
        base_parser = None
        grammar = None
        with open(grammar_filename, 'r') as file:
            grammar = file.read()
            parser_filename = config.bin_path(f'{language}_parser.lark_cache')
            semantics = self._load_semantics(language)
            parser_cache_is_current = (
                semantics is None
                and os.path.exists(parser_filename)
                and os.path.getmtime(parser_filename) >= os.path.getmtime(grammar_filename)
            )
            if parser_cache_is_current:
                with open(parser_filename, 'rb') as f:
                    utils.info(f"Loading existing parser {parser_filename}")
                    base_parser = lark.Lark.load(f, semantics=semantics)
            else:
                base_parser = lark.Lark(grammar,
                                # lexer="basic", 
                                parser="lalr",
                                # cache=True, 
                                start="start", 
                                keep_all_tokens=True,
                                # debug=True,
                                # propagate_positions=True,
                                semantics=semantics,
                            )
                if semantics is None:
                    with open(parser_filename, 'wb') as f:
                        utils.info(f"Saving parser {parser_filename}")
                        base_parser.save(f)
            
        self.base_parser = base_parser
        self.lexer = base_parser._build_lexer()
        self.ignore_lexer = base_parser._build_lexer(dont_ignore=True)
        self.grammar = grammar 
        self.interactive = self.base_parser.parse_interactive('')
        self.memo = {}
        # Parser-trie: a tree of speculative parser-state snapshots keyed by fed
        # token TYPE, so a token fed once (with its attribute computation) is
        # reused -- not re-fed -- when the same (state, type) recurs. Walked and
        # grown by try_feed_tokens; feed_tokens advances the root on commit;
        # trie_reset drops it. See ParserTrieNode for why type-only keying holds.
        self._trie_root = None
        self.trie_hits = 0
        self.trie_misses = 0
        # Wall-clock spent storing/loading the attribute memo (set_memo/load_memo
        # with include_attrs=True) plus call counts, surfaced as per-task stats.
        # Reset via reset_attribute_memo_stats.
        self.attribute_memo_store_time = 0.0
        self.attribute_memo_store_calls = 0
        self.attribute_memo_load_time = 0.0
        self.attribute_memo_load_calls = 0
        self.interactive.parser_state.parse_conf.callbacks = {}
        self.interactive.parser_state.value_stack = []
        # Symbols that carry accumulated semantic attributes (grammar-static,
        # from ACCUMULATE_ATTRS normalized by sem-lark). Empty for syntax-only
        # grammars. Stored once so consumers needn't reach through parser_state.
        self.attributed_symbols = frozenset(
            getattr(self.interactive.parser_state.accumulated_attrs, "tracked", ())
        )
        # Per-attribute breakdown of which terminals carry which ACCUMULATE attr
        # (e.g. 'bnd' vs 'bnd_if_module'). Consumers that scope-check only one
        # attribute must restrict to its terminals -- using the union
        # (attributed_symbols) makes a constraint check terminals annotated only
        # for a DIFFERENT attribute (e.g. the unbound check wrongly inspecting the
        # '(' / module names that carry bnd_if_module). See symbols_for_attr.
        self._attr_symbols = {}
        for entry in (getattr(semantics, "ACCUMULATE_ATTRS", None) or ()):
            parts = entry.split(".")
            if len(parts) >= 2:
                self._attr_symbols.setdefault(parts[-1], set()).add(parts[0])
        self._attr_symbols = {k: frozenset(v) for k, v in self._attr_symbols.items()}

    def symbols_for_attr(self, attr):
        """Terminals carrying ACCUMULATE attribute ``attr`` (e.g. 'bnd',
        'bnd_if_module'). Falls back to all attributed_symbols when the grammar
        declares no per-attribute info for it (backward compatible)."""
        return self._attr_symbols.get(attr, self.attributed_symbols)

    def _load_semantics(self, language):
        semantics_filename = f'{os.path.dirname(__file__)}/../grammars/{language}_semantics.py'
        if not os.path.exists(semantics_filename):
            return None

        return importlib.import_module(f"grammars.{language}_semantics")

    @staticmethod
    def _fork_semantic_context(context):
        if context is not None:
            return context.fork()
        return context

    def reset(self):
        self.interactive = self.base_parser.parse_interactive('')
        self.interactive.parser_state.parse_conf.callbacks = {}
        self.interactive.parser_state.value_stack = []
        self.memo = {}
        self.trie_reset()

    def get_parser_state(self):
        # Get the current parser state
        return self.interactive.parser_state

    def copyof_parser_state(self):
        # Backup the current parser state
        return self.interactive.parser_state.copy()
    
    def set_parser_state(self, backup_state):
        # Restore the parser state from a backup
        self.interactive.parser_state = backup_state

    # def lex(self, code): 
    #     lexer_tokens = []
    #     interactive = self.base_parser.parse_interactive(code)
    #     lexer_state = interactive.lexer_thread.state
    #     parser_state = interactive.parser_state
    #     blexer = interactive.lexer_thread.lexer
    #     try:
    #         while lexer_state.line_ctr.char_pos < len(lexer_state.text):
    #             # Use PostLexConnector to lex the code to obtain tokens including _INDENT and _DEDENT
    #             tokens = list(blexer.lex(lexer_state, parser_state))
    #             lexer_tokens.extend(tokens)
    #     except lark.exceptions.UnexpectedCharacters as e:
    #         raise e
    #     except EOFError as e:
    #         pass

    #     return lexer_tokens

    def lex(self, code, dont_ignore=False):
        lexer = self.ignore_lexer if dont_ignore else self.lexer
        lexer_thread = LexerThread.from_text(lexer, code)
        return lexer_thread.lex(None)

    def lex_code(self, additional_code): 
        lexer_tokens = []
        remainder = ''
        interactive = self.base_parser.parse_interactive(additional_code)
        lexer_state = interactive.lexer_thread.state
        lexer_pos = 0
        parser_state = interactive.parser_state
        blexer = interactive.lexer_thread.lexer
        try:
            while lexer_state.line_ctr.char_pos < len(lexer_state.text):
                # Use PostLexConnector to lex the code to obtain tokens including _INDENT and _DEDENT
                tokens = list(blexer.lex(lexer_state, parser_state))
                lexer_pos = lexer_state.line_ctr.char_pos
                lexer_tokens.extend(tokens)
        except lark.exceptions.UnexpectedCharacters as e:
            # We update the lexer position to the current position 
            # since the lexer has stopped at this position
            lexer_pos = lexer_state.line_ctr.char_pos
        except EOFError as e:
            pass

        # Remove the automatically inserted _DEDENT tokens from the end of the lexer_tokens
        indenter = self.base_parser.lexer_conf.postlex
        for i in range(len(lexer_tokens)-1, -1, -1):
            if lexer_tokens[i].type == indenter.DEDENT_type:
                # remove the _DEDENT token
                del lexer_tokens[i]
            else:
                break

        remainder = additional_code[lexer_pos:]

        if len(lexer_tokens) == 0:
            # no lexed tokens
            return [], additional_code
        elif remainder == '': # lexing completed
            assert len(lexer_tokens) > 0, "No tokens lexed"
            last_token = lexer_tokens[-1]
            # Check if the last token's end position is at the end of the input
            # If so, the last one is not determined yet -- it may be another token as new input is added
            # Otherwise, it is a valid token 
            if last_token.end_pos == len(additional_code):
                last_lexeme_as_remainder = True
            else:
                last_lexeme_as_remainder = False

            # get the last token, and exclude the last one 
            if last_lexeme_as_remainder:
                remainder = additional_code[lexer_tokens[-1].start_pos:]
                lexer_tokens = lexer_tokens[:-1]
                return lexer_tokens, remainder
            else:
                # return all tokens lexed
                return lexer_tokens, remainder
        else:
            return lexer_tokens, remainder
    

    def feed_tokens(self, tokens, update_attrs=True):
        if self._trie_root is None:
            for token in tokens:
                try:
                    self.interactive.parser_state.feed_token(
                        token,
                        token.type == "$END",
                        update_attrs=update_attrs,
                    )
                except lark.UnexpectedToken as e:
                    raise e
            self.set_memo(include_attrs=update_attrs)
            self.interactive.parser_state.value_stack = []
            self._trie_root = ParserTrieNode(self.memo)
        else:
            for token in tokens:
                self._trie_root = self._trie_root.children[token.type]
            self.restore_memo(self._trie_root.memo, include_attrs=update_attrs)
    
    def reset_attribute_memo_stats(self):
        self.attribute_memo_store_time = 0.0
        self.attribute_memo_store_calls = 0
        self.attribute_memo_load_time = 0.0
        self.attribute_memo_load_calls = 0

    def set_memo(self, include_attrs=True):
        # jsonized = [v.to_json() for v in self.interactive.parser_state.value_stack]
        # value_stack = jsonized
        # value_stack = None
        store_start = time.time()
        try:
            state_stack = self.interactive.parser_state.state_stack[:]
            self.memo["state_stack"] = state_stack
            self.memo["include_attrs"] = include_attrs

            if include_attrs:
                self.memo["attribute_stack"] = tuple(self.interactive.parser_state.attribute_stack)
                self.memo["terminal_index"] = self.interactive.parser_state.terminal_index
                self.memo["accumulated_attrs"] = self.interactive.parser_state.accumulated_attrs.copy()
                self.memo["semantic_context"] = self._fork_semantic_context(
                    self.interactive.parser_state.semantic_context
                )
            else:
                self.memo.pop("attribute_stack", None)
                self.memo.pop("terminal_index", None)
                self.memo.pop("accumulated_attrs", None)
                self.memo.pop("semantic_context", None)
        finally:
            if include_attrs:
                self.attribute_memo_store_time += time.time() - store_start
                self.attribute_memo_store_calls += 1

        # print("FEED", [t.type for t in tokens])
        # print("SAVED MEMO")
        # parser_state = self.get_parser_state()
        # state_stack = self.memo["state_stack"]
        # for i, (s, _) in enumerate(state_stack):
        #     print("STACK", i)
        #     s = parser_state.parse_conf.parse_table.idx_to_state[s]
        #     for state in s:
        #         if state.index > 0:
        #             print(f"  {state}")

    def load_memo(self, include_attrs=True):
        # print(self.memo[0])
        # jsonized = [json.loads(v) for v in self.memo[0]]
        # print(jsonized)
        # self.interactive.parser_state.value_stack = [
        #     Token.from_json(v) if isinstance(v, dict) and v.get('meta') == 'Token' else TagTree.from_json(v) for v in self.memo[0]
        # ]
        load_start = time.time()
        try:
            self.interactive.parser_state.state_stack = self.memo["state_stack"][:]
            self.interactive.parser_state.value_stack = []
            if not include_attrs:
                return
            if not self.memo.get("include_attrs", False):
                raise ValueError("Semantic attributes were not saved in memo")
            self.interactive.parser_state.attribute_stack = list(self.memo["attribute_stack"])
            self.interactive.parser_state.terminal_index = self.memo["terminal_index"]
            self.interactive.parser_state.accumulated_attrs = self.memo["accumulated_attrs"].copy()
            self.interactive.parser_state.semantic_context = self._fork_semantic_context(
                self.memo.get("semantic_context")
            )
        finally:
            if include_attrs:
                self.attribute_memo_load_time += time.time() - load_start
                self.attribute_memo_load_calls += 1
        # print("LOAD", self.interactive.parser_state.state_stack, self.interactive.parser_state.value_stack)
        # self.rollback(n)
        # print("LOADED MEMO")
        # parser_state = self.interactive.parser_state
        # state_stack = parser_state.state_stack
        # for i, (s, _) in enumerate(state_stack):
        #     print("STACK", i)
        #     s = parser_state.parse_conf.parse_table.idx_to_state[s]
        #     for state in s:
        #         if state.index > 0:
        #             print(f"  {state}")

    def save_memo(self, include_attrs=True):
        # Snapshot the current state into a fresh, independent memo dict (leaving
        # self.memo untouched) so a caller can keep a second checkpoint alongside
        # the live self.memo used by try_feed_tokens' auto-rollback.
        prev = self.memo
        self.memo = {}
        self.set_memo(include_attrs=include_attrs)
        snapshot = self.memo
        self.memo = prev
        return snapshot

    def restore_memo(self, snapshot, include_attrs=True):
        # Make a snapshot from save_memo the active memo and roll the parser to it.
        self.memo = snapshot
        self.load_memo(include_attrs=include_attrs)

    # ------------------------------------------------------------------ #
    # Parser-trie: reuse a fed (state, type) instead of re-feeding it.
    #
    # A decode step often feeds the same token from the same base more than once
    # (the still-forming last terminal is checked, rolled back, and re-fed next
    # step; a token confirmed after masking was already probed). Each feed
    # recomputes attributes -- the heavy part -- which a trie hit skips. The walk
    # and grow live in try_feed_tokens; feed_tokens advances the root on commit;
    # trie_reset drops the trie below.
    # ------------------------------------------------------------------ #
    def trie_reset(self):
        """Drop the trie (``_trie_root = None``) and reset the hit/miss counters.

        The next ``feed_tokens`` re-anchors the root at the then-current parser
        state. Called from ``reset`` at task boundaries.
        """
        self._trie_root = None
        self.trie_hits = 0
        self.trie_misses = 0


    def stack_print(self):
        parser_state = self.get_parser_state()
        state_stack = parser_state.state_stack
        for i, (s, t) in enumerate(state_stack):
            print("--- STATE", i, "---", "(", t, ")")
            if isinstance(s, int):
                s = parser_state.parse_conf.parse_table.idx_to_state[s]
            for ruleptr in s:
                ptr = ruleptr.index
                if ptr == 0:
                    continue

                print(ruleptr)
                
        print("---------------")
    
    def try_feed_token(self, token, update_attrs=False, my_node=None):
        node = my_node if my_node is not None else self._trie_root
        if node is FAIL:
            self.interactive.parser_state.value_stack = []
            return None, FAIL
        if token.type in self.base_parser.lexer_conf.ignore:
            return self.interactive, node
        if token.type in node.children:
            node = node.children[token.type]
            self.trie_hits += 1
            return self.interactive, node
        try:
            self.trie_misses += 1
            self.restore_memo(node.memo, include_attrs=update_attrs)
            self.interactive.parser_state.feed_token(
                token,
                token.type == "$END",
                update_attrs=update_attrs,
            )
            nxt_node = ParserTrieNode(self.save_memo(include_attrs=update_attrs))
            node.children[token.type] = nxt_node
            return self.interactive, nxt_node
        except UnexpectedToken as e:
            nxt_node = FAIL
            node.children[token.type] = nxt_node
            self.interactive.parser_state.value_stack = []
            return None, FAIL
            

    def try_feed_tokens(self, tokens, update_attrs=False):
        # interactive = copy(self.interactive)
        # We don't want to call callbacks here since those might have arbitrary side effects
        # and are unnecessarily slow.
        # conf_callbacks = copy(self.interactive.parser_state.parse_conf.callbacks)
        # self.interactive.parser_state.parse_conf.callbacks = {}
        # print("FEED", [t.type for t in tokens])
        # parser_state = self.get_parser_state()
        # state_stack = parser_state.state_stack
        # for i, (s, _) in enumerate(state_stack):
        #     print("STACK", i)
        #     s = parser_state.parse_conf.parse_table.idx_to_state[s]
        #     for state in s:
        #         if state.index > 0:
        #             print(f"  {state}")
        node = self._trie_root
        first_miss = True
        for token in tokens:
            if node is FAIL:
                self.interactive.parser_state.value_stack = []
                return None
            if token.type in self.base_parser.lexer_conf.ignore:
                continue
            if first_miss and token.type in node.children:
                node = node.children[token.type]
                self.trie_hits += 1
                continue
            try:
                self.trie_misses += 1
                if first_miss:
                    self.restore_memo(node.memo, include_attrs=update_attrs)
                    first_miss = False
                self.interactive.parser_state.feed_token(
                    token,
                    token.type == "$END",
                    update_attrs=update_attrs,
                )
                nxt_node = ParserTrieNode(self.save_memo(include_attrs=update_attrs))
                node.children[token.type] = nxt_node
                node = nxt_node
            except UnexpectedToken as e:
                # self.stack_print()
                # self.interactive.parser_state.parse_conf.callbacks = conf_callbacks
                # Auto-rollback to self.memo. Degrade to a state-only rollback if
                # the memo predates an attribute checkpoint (only the flag differs
                # -- state_stack is present): under --no-vocab-mask, mask_scores
                # (whose set_memo(include_attrs=True) refreshes the attrs memo each
                # step) never runs, so an update_attrs=True feed of a freely-sampled
                # unparseable prefix would otherwise raise "Semantic attributes were
                # not saved in memo" here. Every update_attrs=True caller restores
                # its own base right after a None, so the attrs are re-established.
                # self.load_memo(
                #     include_attrs=update_attrs and self.memo.get("include_attrs", False)
                # )
                nxt_node = FAIL
                node.children[token.type] = nxt_node
                self.interactive.parser_state.value_stack = []
                return None
        # self.interactive.parser_state.parse_conf.callbacks = conf_callbacks
        self.interactive.parser_state.value_stack = []
        if first_miss and node is not FAIL:
            self.restore_memo(node.memo, include_attrs=update_attrs)

        return self.interactive if node is not FAIL else None

    def is_final(self):
        # Check if the parser is in a final state
        return self.interactive.is_accepting()

    def parse(self, code):
        tokens, remainder = self.lex_code(code)
        self.feed_tokens(tokens)
        return remainder

    # return the set of possible tokens that will advance the parser into a new valid state
    def accepts(self): 
        return self.interactive.accepts()
        
