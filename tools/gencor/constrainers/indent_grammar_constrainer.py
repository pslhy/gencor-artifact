"""Indentation (postlex) support for sem-lark candidate checks.

GrammarConstrainer detects declared _INDENT/_DEDENT terminals and routes its
postlex hooks here. Trial feeds inject exact indentation tokens; commits use
the confirmed terminal sequence, and EOS drains trailing _DEDENTs.
"""

from lark import Token
from lark.indenter import DedentError


def grammar_uses_indenter(parse_table):
    """True when the LALR table acts on the declared _INDENT/_DEDENT terminals
    (they never appear in the lexer's terminal defs, so scan the table)."""
    return any(
        IndentState.INDENT_TYPE in actions or IndentState.DEDENT_TYPE in actions
        for actions in parse_table.states.values()
    )


class IndentState:
    """Deferred Python indenter: fed the transducer's terminals, it injects the
    _INDENT/_DEDENT tokens the parser needs. INDENT/DEDENT are resolved at the
    first real token of a line; blank/comment lines don't affect indentation;
    inside brackets indentation is frozen (implicit line join). Pure + copy()able
    so trial feeds can run on a throwaway copy."""

    NL_TYPE = "_NEWLINE"
    COMMENT_TYPE = "COMMENT"
    INDENT_TYPE = "_INDENT"
    DEDENT_TYPE = "_DEDENT"
    OPEN_PAREN = ("LPAR", "LSQB", "LBRACE")   # ( [ {
    CLOSE_PAREN = ("RPAR", "RSQB", "RBRACE")  # ) ] }
    TAB_LEN = 4

    def __init__(self, levels=None, pending=None, paren_level=0):
        self.levels = levels if levels is not None else [0]   # open-suite columns
        self.pending = pending          # last _NEWLINE's indent, awaiting settle
        self.paren_level = paren_level   # bracket nesting depth

    def copy(self):
        return IndentState(list(self.levels), self.pending, self.paren_level)

    @classmethod
    def _indent_of(cls, newline_value):
        tail = newline_value.rsplit("\n", 1)
        ws = tail[1] if len(tail) == 2 else ""
        return ws.count(" ") + ws.count("\t") * cls.TAB_LEN

    def _settle(self):
        """The _INDENT/_DEDENT tokens for the pending line indent (or []). Raises
        DedentError if the column matches no open level."""
        if self.pending is None:
            return []
        col, self.pending = self.pending, None
        if col > self.levels[-1]:
            self.levels.append(col)
            return [Token(self.INDENT_TYPE, "")]
        out = []
        while col < self.levels[-1]:
            self.levels.pop()
            out.append(Token(self.DEDENT_TYPE, ""))
        if col != self.levels[-1]:
            raise DedentError("dedent to column %s; open levels %s" % (col, self.levels))
        return out

    def feed(self, terminals):
        """Return `terminals` with _INDENT/_DEDENT injected. Mutates self; feed on
        a copy() when trialling. May raise DedentError."""
        out = []
        for tok in terminals:
            if tok.type in self.OPEN_PAREN:
                # A bracket opening a LINE is a real token: settle first (a
                # body may begin with `[`/`(`), THEN freeze indentation.
                if self.paren_level == 0:
                    out.extend(self._settle())
                self.paren_level += 1
                out.append(tok)
            elif tok.type in self.CLOSE_PAREN:
                if self.paren_level == 0:
                    out.extend(self._settle())
                self.paren_level = max(0, self.paren_level - 1)
                out.append(tok)
            elif self.paren_level > 0:
                # implicit line join: a _NEWLINE/COMMENT inside brackets is
                # insignificant, so DROP it -- the parser never sees it, so no
                # grammar _nls is needed for a mid-bracket line break. The
                # output text is rebuilt from the pre-postlex terminals (see
                # semantic_constrainer `for term in terminals`), so the dropped
                # characters are still emitted; only the parser view is trimmed.
                if tok.type not in (self.NL_TYPE, self.COMMENT_TYPE):
                    out.append(tok)                   # implicit line join
            elif tok.type == self.NL_TYPE:
                self.pending = self._indent_of(tok.value)
                out.append(tok)
            elif tok.type == self.COMMENT_TYPE:
                out.append(tok)
            else:
                out.extend(self._settle())            # first real token of the line
                out.append(tok)
        return out

    def close_all(self):
        """Trailing _DEDENTs to drain every open suite to column 0 (EOS)."""
        return [Token(self.DEDENT_TYPE, "") for _ in range(len(self.levels) - 1)]


def trial_feed(trial, terminals):
    """`terminals` with _INDENT/_DEDENT injected on a trial IndentState, or
    None when the indentation is invalid (mismatched dedent column)."""
    try:
        return trial.feed(list(terminals))
    except DedentError:
        return None


def commit_feed(indent_state, terminals):
    """Commit-time injection on the REAL IndentState. The terminals were already
    validated by a trial feed in check_after_gen, so injection succeeds; fall
    back to the raw terminals only for the one-time prompt commit (which has no
    preceding check) if it happens to be mis-indented."""
    try:
        return indent_state.feed(list(terminals))
    except DedentError:
        return list(terminals)
