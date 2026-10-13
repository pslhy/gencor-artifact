"""This module implements a LALR(1) Parser
"""
# Author: Erez Shinan (2017)
# Email : erezshin@gmail.com
from typing import Dict, Any, Optional
from ..lexer import Token, LexerThread
from ..utils import Serialize
from ..common import ParserConf, ParserCallbacks

from .lalr_analysis import LALR_Analyzer, IntParseTable, ParseTableBase
from .lalr_interactive_parser import InteractiveParser
from lark.exceptions import UnexpectedCharacters, UnexpectedInput, UnexpectedToken
from .lalr_parser_state import ParserState, ParseConf

###{standalone

class LALR_Parser(Serialize):
    def __init__(self, parser_conf: ParserConf, debug: bool=False, strict: bool=False):
        analysis = LALR_Analyzer(parser_conf, debug=debug, strict=strict)
        analysis.compute_lalr()
        callbacks = parser_conf.callbacks

        self._parse_table = analysis.parse_table
        self.parser_conf = parser_conf
        self.parser = _Parser(
            analysis.parse_table,
            callbacks,
            debug,
            parser_conf.default_sem_func,
            parser_conf.initial_sem_func,
            parser_conf.terminal_sem_funcs,
            parser_conf.accumulate_attrs,
            parser_conf.semantic_evaluator_kind,
        )

    @classmethod
    def deserialize(cls, data, memo, callbacks, debug=False, parser_conf=None):
        inst = cls.__new__(cls)
        inst._parse_table = IntParseTable.deserialize(data, memo)
        default_sem_func = parser_conf.default_sem_func if parser_conf is not None else None
        initial_sem_func = parser_conf.initial_sem_func if parser_conf is not None else None
        terminal_sem_funcs = parser_conf.terminal_sem_funcs if parser_conf is not None else None
        accumulate_attrs = parser_conf.accumulate_attrs if parser_conf is not None else None
        semantic_evaluator_kind = parser_conf.semantic_evaluator_kind if parser_conf is not None else None
        needs_semantic_state_map = bool(
            parser_conf is not None
            and (
                parser_conf.default_sem_func is not None
                or parser_conf.initial_sem_func is not None
                or parser_conf.terminal_sem_funcs
                or parser_conf.accumulate_attrs
                or parser_conf.semantic_evaluator_kind is not None
            )
        )
        if needs_semantic_state_map and not inst._parse_table.idx_to_state:
            analysis = LALR_Analyzer(parser_conf, debug=False)
            analysis.compute_lalr()
            assert isinstance(analysis.parse_table, IntParseTable)
            inst._parse_table.idx_to_state = analysis.parse_table.idx_to_state
        inst.parser_conf = parser_conf
        inst.parser = _Parser(inst._parse_table, callbacks, debug, default_sem_func, initial_sem_func, terminal_sem_funcs, accumulate_attrs, semantic_evaluator_kind)
        return inst

    def serialize(self, memo: Any = None) -> Dict[str, Any]:
        return self._parse_table.serialize(memo)

    def parse_interactive(self, lexer: LexerThread, start: str):
        return self.parser.parse(lexer, start, start_interactive=True)

    def parse(self, lexer, start, on_error=None):
        try:
            return self.parser.parse(lexer, start)
        except UnexpectedInput as e:
            if on_error is None:
                raise

            while True:
                if isinstance(e, UnexpectedCharacters):
                    s = e.interactive_parser.lexer_thread.state
                    p = s.line_ctr.char_pos

                if not on_error(e):
                    raise e

                if isinstance(e, UnexpectedCharacters):
                    # If user didn't change the character position, then we should
                    if p == s.line_ctr.char_pos:
                        s.line_ctr.feed(s.text.text[p:p+1])

                try:
                    return e.interactive_parser.resume_parse()
                except UnexpectedToken as e2:
                    if (isinstance(e, UnexpectedToken)
                        and e.token.type == e2.token.type == '$END'
                        and e.interactive_parser == e2.interactive_parser):
                        # Prevent infinite loop
                        raise e2
                    e = e2
                except UnexpectedCharacters as e2:
                    e = e2


class _Parser:
    parse_table: ParseTableBase
    callbacks: ParserCallbacks
    debug: bool

    def __init__(self, parse_table: ParseTableBase, callbacks: ParserCallbacks, debug: bool=False, default_sem_func=None, initial_sem_func=None, terminal_sem_funcs=None, accumulate_attrs=None, semantic_evaluator_kind=None):
        self.parse_table = parse_table
        self.callbacks = callbacks
        self.debug = debug
        self.default_sem_func = default_sem_func
        self.initial_sem_func = initial_sem_func
        self.terminal_sem_funcs = terminal_sem_funcs or {}
        self.accumulate_attrs = accumulate_attrs
        self.semantic_evaluator_kind = semantic_evaluator_kind

    def parse(self, lexer: LexerThread, start: str, value_stack=None, state_stack=None, start_interactive=False):
        parse_conf = ParseConf(
            self.parse_table,
            self.callbacks,
            start,
            self.default_sem_func,
            self.initial_sem_func,
            self.terminal_sem_funcs,
            self.accumulate_attrs,
            self.semantic_evaluator_kind,
        )
        parser_state = ParserState(
            parse_conf,
            lexer,
            state_stack,
            value_stack,
        )
        if start_interactive:
            return InteractiveParser(self, parser_state, parser_state.lexer)
        return self.parse_from_state(parser_state)


    def parse_from_state(self, state: ParserState, last_token: Optional[Token]=None):
        """Run the main LALR parser loop

        Parameters:
            state - the initial state. Changed in-place.
            last_token - Used only for line information in case of an empty lexer.
        """
        try:
            token = last_token
            for token in state.lexer.lex(state):
                assert token is not None
                state.feed_token(token)

            end_token = Token.new_borrow_pos('$END', '', token) if token else Token('$END', '', 0, 1, 1)
            return state.feed_token(end_token, True)
        except UnexpectedInput as e:
            try:
                e.interactive_parser = InteractiveParser(self, state, state.lexer)
            except NameError:
                pass
            raise e
        except Exception as e:
            if self.debug:
                print("")
                print("STATE STACK DUMP")
                print("----------------")
                for i, s in enumerate(state.state_stack):
                    print('%d)' % i , s)
                print("")

            raise
###}
