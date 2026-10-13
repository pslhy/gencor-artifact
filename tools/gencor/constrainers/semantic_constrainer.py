import time

from lark import Token
from lark.lexer import UnexpectedCharacters
from lark.exceptions import UnexpectedToken

from constrainers.grammar_constrainer import GrammarConstrainer
from constrain.semantic_attributes import TokenAttributeView


class _PrefixTrie:
    """Char trie used as a prefix set for check_with_trie's cross-commit
    feasibility carry. Drop-in for a set of prefix strings: membership
    (`prefix in trie`) and insert (`trie.add(prefix)`) match the set API, plus
    `advance(c)` -- the subtree at path `c` becomes the new root, dropping every
    prefix that does not continue the committed text `c`."""
    __slots__ = ("children", "mark")

    def __init__(self):
        self.children = {}
        self.mark = False  # True iff this exact prefix is a member

    def add(self, s):
        node = self
        for ch in s:
            child = node.children.get(ch)
            if child is None:
                child = _PrefixTrie()
                node.children[ch] = child
            node = child
        node.mark = True

    def __contains__(self, s):
        node = self
        for ch in s:
            node = node.children.get(ch)
            if node is None:
                return False
        return node.mark

    def advance(self, c):
        node = self
        for ch in c:
            node = node.children.get(ch)
            if node is None:
                return _PrefixTrie()
        return node


class SemanticGrammarConstrainer(GrammarConstrainer):
    def __init__(self, model_name, tokenizer, incremental_parser, semantic_constrain=None):
        super().__init__(model_name, tokenizer, incremental_parser)
        self.semantic_constrain = semantic_constrain or self.make_semantic_constrain()
        self.semantic_constrain.init_statics(self.statics)
        # Last committed step's last-position analysis, reused at the next step's
        # first position (see the constrain's adopt/hand_off_analysis).
        self._handoff = None
        # Prefix-feasibility carried ACROSS commits (check_with_trie). `cache` =
        # prefixes proven feasible, `dead` = prefixes proven infeasible (the
        # antimonotonic frontier). Both are relative to the current committed
        # state and are ADVANCED -- not reset -- on each commit (see
        # _commit_decoded): feed(S', P) == feed(S, c + P), so a prefix that was
        # (in)feasible from S stays (in)feasible from S' with the committed `c`
        # stripped off its front.
        self.cache = _PrefixTrie()
        self.dead = _PrefixTrie()

    def make_semantic_constrain(self):
        raise NotImplementedError

    def reset(self):
        super().reset()
        self.semantic_constrain.reset()
        self.semantic_constrain.init_statics(self.statics)
        self._handoff = None
        self.cache = _PrefixTrie()
        self.dead = _PrefixTrie()

    def eos_handling(self, decoded=""):
        return self.check_after_gen(self.tokenizer.eos_token_id)

    def update_by_decoded(self, input_ids):
        # Per-token commit (feed + on_accept) now happens in check_after_gen the
        # moment a token is confirmed (see _commit_decoded). The only thing left
        # for the per-step mask phase is the ONE-TIME commit of the prompt /
        # initial_code: it has no preceding check_after_gen to ride on, so it is
        # committed here on the first call, before the first mask is built.
        if self.initialized:
            return
        self.initialized = True
        from utils import utils

        decoded = utils.remove_newline_in_brackets(self.initial_code)
        self._commit_decoded(decoded)
        if self.incremental_parser._trie_root is None:
            self.incremental_parser.feed_tokens([])

    def _commit_decoded(self, decoded, skip_feed=False):
        # Advance the real parser by the confirmed text and update semantic state.
        # Called once for the prompt (update_by_decoded) and once per confirmed
        # token (check_after_gen).
        #
        # skip_feed: the parser is ALREADY at the post-commit state because
        # check_after_gen fed the shared prefix once and the caller rolled back to
        # that base+prefix checkpoint. We then only re-snapshot the memo instead of
        # feeding the same terminals a second time (option B). consume_prefix is
        # state-flag-invariant for terminals/next_state/remainder, so the raw
        # terminals recomputed here match the prefix that was fed.
        decoded = "".join(filter(lambda c: c in self.alphabets, decoded))
        # Advance the carried prefix-feasibility by the committed text: keep only
        # prefixes that start with `decoded` (the branch actually taken) and drop
        # that shared front. Everything else was about a continuation we did not
        # commit, so it no longer applies. (feed(S', P[len(c):]) == feed(S, P).)
        if decoded:
            self.cache = self.cache.advance(decoded)
            self.dead = self.dead.advance(decoded)
        terminals, next_state, _, remainder = self.transducer.consume_prefix(
            decoded,
            self.current_state,
            False,
        )

        if len(terminals) > 0:
            terminals[0].value = self.tmp_remainder + terminals[0].value
            self.tmp_remainder = remainder
        else:
            self.tmp_remainder += remainder

        self.current_state = next_state
        if len(terminals) == 0:
            # Acceptance still ends the analysis trial without a terminal feed.
            # Keep the old name handoff: its first terminal has not advanced.
            self.semantic_constrain.hand_off_analysis(self.tmp_remainder)
            return

        # Advance the real postlex state and get the token list the parser
        # actually consumes (postlex tokens injected; identity without one).
        # on_accept must see the SAME list so its terminal counting stays in
        # sync with the parser's terminal_index.
        fed_terminals = self.postlex_commit(terminals)

        if skip_feed:
            # self.incremental_parser.set_memo(include_attrs=True)
            pass
        else:
            self.incremental_parser.feed_tokens(fed_terminals)
        for term in terminals:
            if "```" in term.value:
                continue
            self.prompt += term.value
        on_accept_start = time.time()
        self.semantic_constrain.on_accept(
            TokenAttributeView(self.incremental_parser.get_parser_state()),
            fed_terminals,
        )
        self.statics["on_accept_time"] += time.time() - on_accept_start
        # Carry the just-used last-position analysis to the next step's first
        # position (the committed TN becomes that first terminal). Pass the
        # pending remainder so the constrain can analyze on the spot if it used
        # nothing this step.
        self._handoff = self.semantic_constrain.hand_off_analysis(self.tmp_remainder)


    def check_after_gen(self, token_id, _probe_chars=None):
        # Seed the constrain's first-position analysis with the last commit's
        # handoff (or, when None, the committed remainder to re-derive it).
        self.semantic_constrain.adopt_analysis(self._handoff, self.tmp_remainder)
        if _probe_chars is not None:
            decoded = _probe_chars
        else:
            decoded = self.surface_decode(token_id)
        # Same out-of-alphabet filter as the commit path (_commit_decoded).
        # Candidates are sampled before grammar checks; an unfiltered
        # consume_prefix would raise on them instead of judging the token.
        decoded = "".join(c for c in decoded if c in self.alphabets)
        # if self.incremental_parser.memo.get("include_attrs", False):
        #     self.incremental_parser.load_memo(include_attrs=True)

        if _probe_chars is None and token_id in self.eos_ids:
            try:
                terminals = list(self.incremental_parser.lex(self.tmp_remainder))
            except UnexpectedCharacters:
                return False
            remainder = ""
            realizable = [Token("$END", "")]
        else:
            try:
                terminals, _, realizable, remainder = self.transducer.consume_prefix(
                    decoded,
                    self.current_state,
                    True,
                )
            except ValueError:
                # A char that is consumable SOMEWHERE (anything_else inside
                # strings/comments, ce3ce15) but not at the CURRENT lexer state
                # -- e.g. U+D55C at a statement start. The vocab pre-mask bans it
                # per-state; candidates are sampled before grammar checks, so the
                # token is unlexable here, so judge it infeasible (same as the
                # indent syntax check's ValueError handling), don't crash.
                return False
            tmp_remainder = self.tmp_remainder
            if len(terminals) == 0:
                tmp_remainder += remainder

            # The re-lex below drops %ignore tokens (whitespace/comments) from the
            # pending text. Dropping the LEADING whitespace glues a pending module
            # name onto the preceding terminal in the LSP reconstruction
            # (`if String` -> `ifString`), so merlin cannot resolve the module and
            # every member access is wrongly rejected. Preserve the leading run.
            lead_ws = tmp_remainder[: len(tmp_remainder) - len(tmp_remainder.lstrip())]
            tmp_idx = 0
            try:
                tmp_terms = self.incremental_parser.lex(tmp_remainder, dont_ignore=True)
                tmp_remainder = ""
                for term in tmp_terms:
                    if term.type not in self.incremental_parser.base_parser.lexer_conf.ignore:
                        tmp_remainder += term.value
                    tmp_idx += len(term.value)
                tmp_remainder = lead_ws + tmp_remainder
            except UnexpectedCharacters:
                tmp_remainder += self.tmp_remainder[tmp_idx:]

            if len(terminals) > 0:
                terminals[0].value = tmp_remainder + terminals[0].value
            else:
                remainder = tmp_remainder

        # Postlex trial: the grammar layer may need to inject tokens (e.g.
        # _INDENT/_DEDENT) into what the parser is fed; None from postlex_feed
        # means the terminals are invalid under the postlex. Identity when the
        # grammar has no postlex -- this code stays agnostic.
        trial = self.postlex_trial()
        terminals = self.postlex_feed(trial, terminals)
        if terminals is None:
            if _probe_chars is not None:
                self.statics["semantic_reject"] += 1
            return False

        # Every realizable candidate shares the same leading `terminals`; feed
        # that common prefix once and checkpoint, then re-feed only the differing
        # last token per candidate instead of the whole sequence m times. This is
        # value-stack-safe because callbacks are disabled (parse_conf.callbacks={})
        # so value_stack is never read, and acceptance/attributes depend only on
        # state_stack/attribute_stack, both fully restored by the memo.
        # feed_start = time.time()
        # prefix_parser = self.incremental_parser.try_feed_tokens(
        #     terminals,
        #     update_attrs=True,
        # )
        if self.semantic_constrain.check_every_terminal:
            if not self.step(terminals):
                if _probe_chars is not None:
                    self.statics["semantic_reject"] += 1
                return False
        # self.statics["check_after_gen_feed_time"] += time.time() - feed_start
        # if prefix_parser is None:
        #     self.incremental_parser.restore_memo(base_memo, include_attrs=True)
        #     self.statics["semantic_reject"] += 1
        #     return False
        for term in realizable:
            last_token = Token(term.type, remainder)
            tail = self.postlex_fork(trial)
            if term.type == "$END":
                last_tokens = self.postlex_eos_tail(tail) + [last_token]
            else:
                last_tokens = self.postlex_feed(tail, [last_token])
                if last_tokens is None:
                    continue
            terminal_seq = terminals + last_tokens
            # self.incremental_parser.load_memo(include_attrs=True)  # roll back to base + prefix
            feed_start = time.time()
            tmp_parser = self.incremental_parser.try_feed_tokens(
                terminal_seq,
                update_attrs=True,
            )
            self.statics["check_after_gen_feed_time"] += time.time() - feed_start
            self.statics["check_after_gen_feed_count"] += 1
            if tmp_parser is None:
                continue

            sym_start = time.time()
            # last_tokens == [] iff the postlex DROPPED the still-forming
            # candidate (an in-bracket _NEWLINE/COMMENT line join): terminal_seq
            # then ends with a COMPLETED terminal, so the constraints' "last
            # element is still being typed" prefix leniency must not apply --
            # otherwise a just-completed undefined name is only prefix-checked
            # and never strictly checked again (escaped: BigCodeBench/655
            # `topics[:,i\n]` under ummacN-s2).
            symbols_to_check = self.semantic_constrain.symbols_to_check(
                TokenAttributeView(tmp_parser.parser_state),
                terminal_seq,
                last_forming=bool(last_tokens),
            )
            self.statics["symbols_to_check_time"] += time.time() - sym_start
            analyze_start = time.time()
            accepted = self.semantic_constrain.analyze(symbols_to_check)
            self.statics["analyze_time"] += time.time() - analyze_start
            if accepted:
                if _probe_chars is not None:
                    return True
                # Token confirmed -> commit it right here (advance the real parser
                # + on_accept), instead of deferring to the next step's
                # update_by_decoded.
                if token_id not in self.eos_ids:
                    # The base+prefix checkpoint (self.memo) IS the committed parser
                    # state, so roll back to it -- dropping this candidate's last
                    # token -- and commit without re-feeding the prefix (option B).
                    self.statics["decoded"] += 1
                    self._commit_decoded(decoded, skip_feed=False)
                return True

        self.statics["semantic_reject"] += 1
        return False
    
    def step(self, terminals):
        fed = []
        for i, t in enumerate(terminals):
            feed_start = time.time()
            step_parser = self.incremental_parser.try_feed_tokens(
                terminals[:i+1], update_attrs=True
            )
            self.statics["check_after_gen_feed_time"] += time.time() - feed_start
            if step_parser is None:
                # This completed prefix fails to parse -> no candidate can succeed.
                # self.incremental_parser.restore_memo(base_memo, include_attrs=True)
                return False
            fed.append(t)
            sym_start = time.time()
            step_symbols = self.semantic_constrain.symbols_to_check(
                TokenAttributeView(step_parser.parser_state),
                list(fed),
                last_forming=False,
            )
            self.statics["symbols_to_check_time"] += time.time() - sym_start
            analyze_start = time.time()
            step_ok = self.semantic_constrain.analyze(step_symbols)
            self.statics["analyze_time"] += time.time() - analyze_start
            if not step_ok:
                # self.incremental_parser.restore_memo(base_memo, include_attrs=True)
                return False
        return True

    def check_with_trie(self, token_id):
        # Judge the whole candidate first. A successful check commits it;
        # prefix probes are only used to widen the mask after a rejection.
        if self.check_after_gen(token_id):
            return []
        rejected_ids, _ = self.rejected_token_prefix_ids(token_id)
        return rejected_ids

    def rejected_token_prefix_ids(self, token_id):
        """Return (banned IDs, infeasible prefix) for an already rejected token.

        Keep the existing radix-trie probes and feasibility caches. Even the
        full surface is probed with _probe_chars, so this search never commits.
        Without an infeasible prefix, exclude only the already rejected ID.
        """
        if token_id in self.eos_ids:
            return [token_id], None

        decoded = self.surface_decode(token_id)
        node = self._char_trie
        prefix = ""
        s = decoded
        while s:
            edge = node[0].get(s[0])
            if edge is None:
                break  # off-trie (should not happen for a real vocab token)
            label, child = edge
            if not s.startswith(label):
                break  # diverges inside a label -> off-trie
            prefix += label
            s = s[len(label):]
            node = child
            if prefix in self.dead or (
                prefix not in self.cache
                and not self.check_after_gen(token_id, _probe_chars=prefix)
            ):
                self.dead.add(prefix)
                # pull() already collected the entire subtree at this node.
                rejected_ids = node[1]
                if token_id not in rejected_ids:
                    rejected_ids = rejected_ids + [token_id]
                return rejected_ids, prefix
            self.cache.add(prefix)
        return [token_id], None
