"""Extract active frontiers from partial TypeScript expressions.

This module is intentionally syntax-only.  It does not ask TypeScript for
types; it answers a smaller question that the type layer can use later:

    where can the next characters attach, and what expression contexts surround
    that leaf position?

The returned frame order is leaf-to-root.  For example, in
``a + (b + c`` the leaf is ``c`` and the frames are
``BinaryRhs -> Group -> BinaryRhs``.  Frontier splitting scans expression
terminals, not raw characters, so ``1.0`` is one number token rather than a
member ``.``.  Postfix pieces such as member access, calls, and bracket access
stay inside the frontier text; callers can inspect ``Frontier.base_*`` on the
final frontier if they need the active postfix base.
"""

from dataclasses import dataclass, field, replace
import re
from typing import List, Optional, Sequence, Tuple


_IDENT_RE = re.compile(r"[A-Za-z_$][0-9A-Za-z_$]*")
_NUMBER_RE = re.compile(
    r"(?:0[xX][0-9A-Fa-f]+n?|0[bB][01]+n?|0[oO][0-7]+n?|"
    r"(?:\d+\.\d*|\.\d+|\d+)(?:[eE][+-]?\d+)?n?)"
)

_OPERATORS = (
    "=>",
    ">>>=",
    ">>>",
    "**=",
    "===",
    "!==",
    "?.",
    "&&=",
    "&&",
    "||=",
    "||",
    "??=",
    "??",
    "**",
    "<<=",
    "<<",
    ">>=",
    ">>",
    "<=",
    ">=",
    "==",
    "!=",
    "+=",
    "+",
    "-=",
    "-",
    "*=",
    "*",
    "/=",
    "/",
    "%=",
    "%",
    "<",
    ">",
    "&=",
    "&",
    "^=",
    "^",
    "|=",
    "|",
    "?",
    ":",
    ",",
    ".",
    "(",
    ")",
    "[",
    "]",
    "{",
    "}",
    "!",
    "=",
)

_BINARY_PRECEDENCE = {
    ",": 1,
    "||": 3,
    "??": 3,
    "&&": 4,
    "|": 5,
    "^": 6,
    "&": 7,
    "==": 8,
    "!=": 8,
    "===": 8,
    "!==": 8,
    "<": 9,
    "<=": 9,
    ">": 9,
    ">=": 9,
    "<<": 10,
    ">>": 10,
    ">>>": 10,
    "+": 11,
    "-": 11,
    "*": 12,
    "/": 12,
    "%": 12,
    "**": 13,
}

_CONDITIONAL_PRECEDENCE = 2
_AS_PRECEDENCE = 0   # user design: lowest -- `as` owns the whole window
_ASSIGNMENT_PRECEDENCE = 2
_ASSIGNMENT_OPERATORS = {
    "=",
    "+=",
    "-=",
    "*=",
    "/=",
    "%=",
    "**=",
    "<<=",
    ">>=",
    ">>>=",
    "&=",
    "^=",
    "|=",
    "&&=",
    "||=",
    "??=",
}

_RIGHT_ASSOC = {"**"}
_DEFAULT_LHS_SENTINEL = -1
_UNARY_PREFIX_OPERATORS = {"+", "-", "!", "~"}
# Keyword-form unary prefix operators (need a trailing word boundary, see
# _leading_unary_prefix). Each maps its operand to a FIXED result type regardless of
# the operand: `typeof` -> string, `void` -> undefined, `delete` -> boolean (handled in
# inverse_prefix_goal). `await` is deliberately excluded -- its result unwraps the
# operand's Promise, so it has no fixed type; it stays a complete_expr (status quo).
_KEYWORD_PREFIX_OPERATORS = ("typeof", "void", "delete")


@dataclass(frozen=True)
class Frontier:
    kind: str
    text: str = ""
    start: int = 0
    end: int = 0
    base_text: Optional[str] = None
    base_kind: Optional[str] = None
    base_start: Optional[int] = None
    base_end: Optional[int] = None
    prefix: str = ""
    literal_type: Optional[str] = None
    prefix_operator: Optional[str] = None
    prefix_start: Optional[int] = None
    prefix_end: Optional[int] = None


@dataclass(frozen=True)
class ExprTerminal:
    kind: str
    value: str
    start: int
    end: int


@dataclass(frozen=True)
class FrontierBaseInfo:
    kind: Optional[str] = None
    marker: Optional[str] = None
    marker_start: Optional[int] = None
    marker_end: Optional[int] = None
    base_text: Optional[str] = None
    base_start: Optional[int] = None
    base_end: Optional[int] = None


@dataclass(frozen=True)
class FrontierFrame:
    kind: str
    start: int = 0
    end: int = 0
    lhs_text: Optional[str] = None
    lhs_start: Optional[int] = None
    lhs_end: Optional[int] = None
    op: Optional[str] = None
    base_text: Optional[str] = None
    true_text: Optional[str] = None
    base_start: Optional[int] = None


@dataclass(frozen=True)
class FrontierChain:
    frontier: Frontier
    frames: Tuple[FrontierFrame, ...] = field(default_factory=tuple)

    def with_frame(self, frame: FrontierFrame) -> "FrontierChain":
        return FrontierChain(self.frontier, self.frames + (frame,))


@dataclass(frozen=True)
class ActiveFrontier:
    """One open expression frontier, ordered from leaf to root.

    ``inner_frames`` are the frames below this frontier. ``outer_frames`` are
    the frames above it.  For ``a+(b+c`` the active frontiers are ``c`` and
    ``(b+c``; the latter has the inner ``b + _`` frame and the outer ``a + _``
    frame.
    """

    kind: str
    text: str
    start: int
    end: int
    frontier: Frontier
    inner_frames: Tuple[FrontierFrame, ...] = field(default_factory=tuple)
    outer_frames: Tuple[FrontierFrame, ...] = field(default_factory=tuple)
    starts_with_paren: bool = False
    postfix_after_close: bool = False


_BOOLEAN_LITERAL_TERMINALS = {"TRUE", "FALSE"}
_NULL_LITERAL_TERMINALS = {"NULL"}
_UNDEFINED_LITERAL_TERMINALS = {"UNDEFINED"}
_NUMBER_LITERAL_TERMINALS = {"NUMBER"}
_BIGINT_LITERAL_TERMINALS = {"BIGINT"}
_STRING_LITERAL_TERMINALS = {
    "SINGLE_QUOTED_STRING",
    "DOUBLE_QUOTED_STRING",
    "TEMPLATE_STRING",
    "STRING",
}
_REGEX_LITERAL_TERMINALS = {"REGEX_LITERAL"}
_IDENT_TERMINALS = {"IDENT"}


def expr_terminal_from_parser_terminal(
    terminal_type: str,
    terminal_text: str,
    start: int,
    end: int,
) -> ExprTerminal:
    """Convert one parser terminal with span into the frontier scanner token.

    The scanner uses parser terminal types for literals and normalized ``OP``
    tokens for infix/postfix punctuation.  This preserves distinctions that
    raw text loses, e.g. ``NUMBER("1.0")`` versus ``DOT``.
    """

    kind = _normalize_parser_terminal_kind(terminal_type, terminal_text)
    return ExprTerminal(kind, terminal_text, start, end)


def _normalize_parser_terminal_kind(terminal_type: str, terminal_text: str) -> str:
    if terminal_type in (
        _BOOLEAN_LITERAL_TERMINALS
        | _NULL_LITERAL_TERMINALS
        | _UNDEFINED_LITERAL_TERMINALS
        | _NUMBER_LITERAL_TERMINALS
        | _BIGINT_LITERAL_TERMINALS
        | _STRING_LITERAL_TERMINALS
        | _REGEX_LITERAL_TERMINALS
        | _IDENT_TERMINALS
    ):
        return terminal_type
    if terminal_text in _OPERATORS:
        return "OP"
    return terminal_type or "UNKNOWN"


def extract_frontier_chains(
    expr_prefix: str,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> List[FrontierChain]:
    """Return active frontier chains for a partial expression prefix.

    The current implementation is deterministic for the supported TypeScript
    subset, so it returns either one chain or an empty list.  The list shape is
    deliberate: ambiguous identifier/member states can be added without
    changing callers.
    """

    chain = _build_scan_frontier_chain(expr_prefix, 0, len(expr_prefix), terminals)
    if (chain is not None and chain.frames
            and chain.frames[0].kind == "as_rhs"
            and chain.frontier.kind in ("ident_prefix", "empty_expr")):
        # the leaf after `as` is a TYPE name, not a value -- mark it so the
        # candidate layer checks TYPE names (direct assignability), not value
        # completions.
        import dataclasses as _dc
        chain = FrontierChain(_dc.replace(chain.frontier, kind="type_prefix",
                                          prefix=chain.frontier.prefix
                                          if chain.frontier.kind == "ident_prefix" else ""),
                              chain.frames)
    return [chain] if chain is not None else []


def extract_active_frontiers(
    expr_prefix: str,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> List[ActiveFrontier]:
    """Return every active expression frontier, leaf-to-root.

    Leaf frontiers are where the next characters attach immediately. Composite
    frontiers are nested binary/grouping/call/index expressions whose type
    goals can be propagated down to the leaf.
    """

    frontiers = []
    for chain in extract_frontier_chains(expr_prefix, terminals):
        frontiers.extend(active_frontiers_for_chain(expr_prefix, chain))
    return frontiers


def active_frontiers_for_chain(
    source: str,
    chain: FrontierChain,
) -> List[ActiveFrontier]:
    leaf_text = _leaf_frontier_text(source, chain.frontier)
    active = [
        ActiveFrontier(
            chain.frontier.kind,
            leaf_text,
            chain.frontier.start,
            chain.frontier.end,
            chain.frontier,
            (),
            chain.frames,
            _starts_with_paren(leaf_text),
            _starts_with_paren(leaf_text),
        )
    ]

    active_end = chain.frontier.end
    for idx, frame in enumerate(chain.frames):
        kind = None
        start = None
        if frame.kind == "binary_rhs":
            if frame.lhs_start is None or active_end <= frame.end:
                continue
            # A closed binary root without any outer frame is already the
            # current whole expression.  It cannot receive member/call postfix
            # without a grouping frame, so keep only nested binary frontiers.
            if not chain.frames[idx + 1 :]:
                continue
            kind = "binary_expr"
            start = frame.lhs_start
        elif frame.kind == "group":
            kind = "group_expr"
            start = frame.start
        elif frame.kind in {"conditional_true", "conditional_false"}:
            if frame.lhs_start is None or active_end <= frame.end:
                continue
            if not chain.frames[idx + 1 :]:
                continue
            kind = "conditional_expr"
            start = frame.lhs_start

        if kind is None or start is None:
            continue

        text = source[start:active_end]
        inner_frames = chain.frames[:idx]
        if frame.kind == "binary_rhs":
            inner_frames = chain.frames[: idx + 1]
        active.append(
            ActiveFrontier(
                kind,
                text,
                start,
                active_end,
                Frontier(kind, text, start, active_end),
                inner_frames,
                chain.frames[idx + 1 :],
                _starts_with_paren(text),
                kind == "group_expr",
            )
        )

    return active


def _leaf_frontier_text(source: str, frontier: Frontier) -> str:
    if frontier.kind == "empty_expr":
        return ""
    if frontier.start < frontier.end:
        return source[frontier.start : frontier.end]
    return frontier.text


def _starts_with_paren(text: str) -> bool:
    return text.lstrip().startswith("(")


_OPEN_TO_CLOSE = {"(": ")", "[": "]", "{": "}"}
_CLOSE_TO_OPEN = {value: key for key, value in _OPEN_TO_CLOSE.items()}
_PREFIX_SEPARATORS = set("([{:?,=+-*/%<>!&|^~")


def extract_frontier_base_info(
    frontier_text: str,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> FrontierBaseInfo:
    """Return the active postfix base inside a final frontier.

    Frontier splitting itself is intentionally infix-only.  This helper only
    records whether the final frontier is currently inside a call, bracket
    access/literal, or member access so the type layer can decide how to ask
    for the current type later.  It scans expression terminals, pushes only
    postfix markers, and classifies the remaining stack by preferring the first
    still-open call/index marker from the bottom.  A member marker is active
    only when no open call/index marker remains.
    """

    start, end = _trim_span(frontier_text, 0, len(frontier_text))
    stack = []
    for token in _terminals_in_span(frontier_text, start, end, terminals):
        if token.value in {".", "?."}:
            _push_base_marker(
                stack,
                frontier_text,
                start,
                token.start,
                token.end,
                "member",
                token.value,
            )
            continue

        if token.value == "(":
            _push_base_marker(
                stack,
                frontier_text,
                start,
                token.start,
                token.end,
                "call",
                "(",
            )
            continue

        if token.value == "[":
            _push_base_marker(
                stack,
                frontier_text,
                start,
                token.start,
                token.end,
                "index",
                "[",
            )
            continue

        if token.value == ")":
            _pop_base_marker(stack, "(")
            continue

        if token.value == "]":
            _pop_base_marker(stack, "[")
            continue

    marker = _select_active_base_marker(stack)
    if marker is None:
        return FrontierBaseInfo()

    return FrontierBaseInfo(
        kind=marker["kind"],
        marker=marker["marker"],
        marker_start=marker["marker_start"],
        marker_end=marker["marker_end"],
        base_text=marker["base_text"],
        base_start=marker["base_start"],
        base_end=marker["base_end"],
    )


def _select_active_base_marker(stack):
    for marker in stack:
        if marker["marker"] == "[" and not marker["base_text"]:
            continue
        if marker["marker"] in {"(", "["}:
            return marker
    for marker in reversed(stack):
        if marker["kind"] == "member":
            return marker
    return None


def _push_base_marker(
    stack,
    source: str,
    start: int,
    marker_start: int,
    marker_end: int,
    kind: str,
    marker: str,
) -> None:
    base_start = _find_base_start(source, start, marker_start)
    base_start, base_end = _trim_span(source, base_start, marker_start)
    stack.append(
        {
            "kind": kind,
            "marker": marker,
            "marker_start": marker_start,
            "marker_end": marker_end,
            "base_text": source[base_start:base_end],
            "base_start": base_start,
            "base_end": base_end,
        }
    )


def _pop_base_marker(stack, marker: str) -> None:
    for idx in range(len(stack) - 1, -1, -1):
        if stack[idx]["marker"] == marker:
            del stack[idx:]
            while stack and stack[-1]["kind"] == "member":
                stack.pop()
            return


def _build_scan_frontier_chain(
    source: str,
    start: int,
    end: int,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> Optional[FrontierChain]:
    raw_end = end
    start, end = _trim_span(source, start, end)
    if start >= end:
        return FrontierChain(Frontier("empty_expr", start=end, end=end))

    new_prefix = _leading_new_prefix(source, start, end, terminals)
    if new_prefix is not None:
        new_start, new_end = new_prefix
        child = _build_scan_frontier_chain(source, new_end, raw_end, terminals)
        if child is None:
            child = FrontierChain(Frontier("empty_expr", start=new_end, end=new_end))
        return _with_prefix_operator(child, "new", new_start, new_end)

    # A unary prefix (`!`/`-`/`+`/`~`, prec 14) binds TIGHTER than every binary
    # operator (max `**` = 13), so `!p % 2` is `(!p) % 2`, NOT `!(p % 2)`. Do the
    # top-level binary split FIRST -- the prefix then lives inside the split's
    # leftmost operand (lhs_text) and is typed there (`!p` -> boolean), so
    # `!p % 2` rejects AT `%` (2362) instead of leaking to the reduce. The
    # leading-prefix strip (below) runs only when NO top-level binary remains
    # (a bare `!p`, or the prefix's own operand `!(a + b)` where `+` is grouped).
    reset = _last_top_level_binary_reset(source, start, end, terminals)
    if reset is not None:
        (
            op_start,
            op_end,
            op,
            rhs_start,
            prec,
            frame_kind,
            true_start,
            true_end,
            lhs_override_start,
            lhs_override_end,
        ) = reset
        if (
            lhs_override_start == _DEFAULT_LHS_SENTINEL
            and lhs_override_end == _DEFAULT_LHS_SENTINEL
        ):
            lhs_start, lhs_end = _trim_span(source, start, op_start)
        elif lhs_override_start is None or lhs_override_end is None:
            lhs_start, lhs_end = None, None
        else:
            lhs_start, lhs_end = lhs_override_start, lhs_override_end
        if frame_kind == "as_rhs":
            # the RHS of `as` is a TYPE, not a value expression -- do NOT recurse
            # into value-operator frames (`|`/`&` are type union/intersection
            # here, `[]` an array constructor, etc.). Take the WHOLE remaining
            # span as one type leaf (the asserted type being typed); its validity
            # + overlap-with-lhs (2352) is decided by the leaf/@TBOUND layer.
            t_start, t_end = _trim_span(source, rhs_start, raw_end)
            t_text = source[t_start:t_end]
            child = FrontierChain(
                Frontier("type_prefix", text=t_text, prefix=t_text,
                         start=t_start, end=t_end)
            )
        else:
            child = _build_scan_frontier_chain(source, rhs_start, raw_end, terminals)
        if child is None:
            child = FrontierChain(Frontier("empty_expr", start=rhs_start, end=rhs_start))
        return child.with_frame(
            FrontierFrame(
                frame_kind,
                start=op_start,
                end=op_end,
                lhs_text=source[lhs_start:lhs_end]
                if lhs_start is not None and lhs_end is not None
                else None,
                lhs_start=lhs_start,
                lhs_end=lhs_end,
                op=op,
                true_text=source[true_start:true_end] if true_start is not None else None,
            )
        )

    prefix = _leading_unary_prefix(source, start, end)
    if prefix is not None:
        op_start, op_end, op = prefix
        child = _build_scan_frontier_chain(source, op_end, raw_end, terminals)
        if child is None:
            child = FrontierChain(Frontier("empty_expr", start=op_end, end=op_end))
        return child.with_frame(FrontierFrame("prefix", op_start, op_end, op=op))

    leading_group = _leading_unclosed_group_start_from_terminals(source, start, end, terminals)
    if leading_group is not None:
        open_start = leading_group
        open_end = open_start + 1
        child = _build_scan_frontier_chain(source, open_end, end, terminals)
        if child is None:
            child = FrontierChain(Frontier("empty_expr", start=end, end=end))
        return child.with_frame(FrontierFrame("group", open_start, open_end))

    text = source[start:end]
    local_terminals = _local_terminals(source, start, end, terminals)
    base_info = extract_frontier_base_info(text, local_terminals)
    frontier_start = start
    frontier_base_start = (
        frontier_start + base_info.base_start
        if base_info.base_start is not None
        else None
    )
    frontier_base_end = (
        frontier_start + base_info.base_end
        if base_info.base_end is not None
        else None
    )
    literal_type = _literal_frontier_type(text, local_terminals)
    if literal_type is not None:
        return FrontierChain(
            Frontier(
                "literal",
                text,
                start,
                end,
                base_text=base_info.base_text,
                base_kind=base_info.kind,
                base_start=frontier_base_start,
                base_end=frontier_base_end,
                prefix=text,
                literal_type=literal_type,
            )
        )

    if _IDENT_RE.fullmatch(text):
        return FrontierChain(
            Frontier(
                "ident_prefix",
                text,
                start,
                end,
                base_text=base_info.base_text,
                base_kind=base_info.kind,
                base_start=frontier_base_start,
                base_end=frontier_base_end,
                prefix=text,
            )
        )
    return FrontierChain(
        Frontier(
            "complete_expr",
            text,
            start,
            end,
            base_text=base_info.base_text,
            base_kind=base_info.kind,
            base_start=frontier_base_start,
            base_end=frontier_base_end,
            prefix=text,
        )
    )


def _trim_span(source: str, start: int, end: int) -> Tuple[int, int]:
    while start < end and source[start].isspace():
        start += 1
    while end > start and source[end - 1].isspace():
        end -= 1
    return start, end


def _is_quoted_string(text: str) -> bool:
    return len(text) >= 2 and text[0] in {"'", '"', "`"} and text[-1] == text[0]


def _literal_frontier_type(
    text: str,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> Optional[str]:
    stripped = (text or "").strip()
    if not stripped:
        return None
    terminal_type = _literal_terminal_type(terminals)
    if terminal_type is not None:
        return terminal_type
    if stripped.startswith("["):
        return "any[]"
    if stripped in {"null"}:
        return "null"
    if stripped in {"undefined"}:
        return "undefined"
    if stripped in {"true", "false"}:
        return "boolean"
    if _NUMBER_RE.fullmatch(stripped):
        return "bigint" if stripped.endswith("n") else "number"
    if _string_literal_prefix(stripped):
        return "string"
    return None


def _literal_terminal_type(
    terminals: Optional[Sequence[ExprTerminal]],
) -> Optional[str]:
    if not terminals:
        return None
    live = [terminal for terminal in terminals if terminal.value.strip()]
    if not live:
        return None
    first = live[0]
    if first.value == "[":
        return "any[]"
    if len(live) != 1:
        return None
    if first.kind in _BOOLEAN_LITERAL_TERMINALS:
        return "boolean"
    if first.kind in _NULL_LITERAL_TERMINALS:
        return "null"
    if first.kind in _UNDEFINED_LITERAL_TERMINALS:
        return "undefined"
    if first.kind in _NUMBER_LITERAL_TERMINALS:
        return "number"
    if first.kind in _BIGINT_LITERAL_TERMINALS:
        return "bigint"
    if first.kind in _STRING_LITERAL_TERMINALS:
        return "string"
    if first.kind in _REGEX_LITERAL_TERMINALS:
        return "RegExp"
    return None


def _string_literal_prefix(text: str) -> bool:
    if not text or text[0] not in {"'", '"', "`"}:
        return False

    quote = text[0]
    escaped = False
    for idx, char in enumerate(text[1:], start=1):
        if escaped:
            escaped = False
            continue
        if char == "\\":
            escaped = True
            continue
        if char == quote:
            return not text[idx + 1 :].strip()
    return True


def _last_top_level_binary_reset(
    source: str,
    start: int,
    end: int,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> Optional[
    Tuple[
        int,
        int,
        str,
        int,
        int,
        str,
        Optional[int],
        Optional[int],
        Optional[int],
        Optional[int],
    ]
]:
    depth = 0
    current_prec = None
    reset = None
    reset_prec = None   # prec of the CURRENT reset owner (loosest op so far) --
                        # current_prec tracks the LAST op and cannot guard window
                        # ownership (`= ... === ... ?` bumped it to 8, letting '?'
                        # steal the assignment's window with a garbage condition)
    pending_conditional = None
    nested_conditionals = 0
    prev_top_value = None   # previous TOP-LEVEL token value (for `):` return-type colon)

    for token in _terminals_in_span(source, start, end, terminals):
        op = token.value
        if op in _OPEN_TO_CLOSE:
            depth += 1
            continue
        if op in _CLOSE_TO_OPEN:
            if depth > 0:
                depth -= 1
            if depth == 0:
                prev_top_value = op   # a close that RETURNS to top level (e.g. the
                                      # arrow param list's `)`) is the next token's
                                      # top-level predecessor
            continue
        if depth:
            continue
        prev_for_this = prev_top_value
        prev_top_value = op

        if op == ":" and pending_conditional is not None:
            if nested_conditionals > 0:
                nested_conditionals -= 1
                continue
            question_start, condition_start, condition_end, true_start = pending_conditional
            rhs_start, _ = _trim_span(source, token.end, end)
            true_start, true_end = _trim_span(source, true_start, token.start)
            reset = (
                question_start,
                token.end,
                "?:",
                rhs_start,
                _CONDITIONAL_PRECEDENCE,
                "conditional_false",
                true_start,
                true_end,
                condition_start,
                condition_end,
            )
            pending_conditional = None
            reset_prec = _CONDITIONAL_PRECEDENCE
            continue

        if op == ":":
            # A bare top-level colon right after `)` is an ARROW RETURN-TYPE
            # annotation (`(num: number): boolean => ...`), NOT a conditional-false
            # branch. Resetting here made the frontier base start at the TYPE name
            # (`boolean=>{...}`), whose oracle lookup fails -> the whole arrow body
            # false-rejected (`(n: number): boolean => { if` rejected `if`). Skip:
            # the arrow is then scanned like its return-type-less form, which the
            # frontier already handles.
            if prev_for_this == ")":
                continue
            # PRECEDENCE guard (user fix, HE/115 shape): a bare ':' is a
            # CONDITIONAL-precedence event -- reset only when it binds looser-or-
            # equal than the current frame, like every operator. Without this,
            # `filled[i][j] = grid[i][j] === 1 ? true :` let the ':' OVERWRITE
            # the assignment frame with a conditional_false whose lhs swallowed
            # the '=' (garbage condition text -> the API mistyped it); the '?:'
            # belongs to the RHS window, which the recursion handles with the
            # proper condition + true_text pieces.
            if reset_prec is not None and reset_prec <= _CONDITIONAL_PRECEDENCE:
                continue
            rhs_start, _ = _trim_span(source, token.end, end)
            true_start, true_end = _trim_span(source, start, token.start)
            reset = (
                token.start,
                token.end,
                "?:",
                rhs_start,
                _CONDITIONAL_PRECEDENCE,
                "conditional_false",
                true_start,
                true_end,
                None,
                None,
            )
            current_prec = _CONDITIONAL_PRECEDENCE
            reset_prec = _CONDITIONAL_PRECEDENCE
            continue

        if op == "as":
            # user design: `as` is the LOWEST-precedence operator -- it owns any
            # window it appears in (`1 + a as` -> lhs `1 + a`); the whole expr's
            # type becomes the ASSERTED type, so the expected-type check is a
            # DIRECT assignability test (no reachability) -- see as_rhs handling.
            prec = _AS_PRECEDENCE
            if reset_prec is None or reset_prec >= prec:
                rhs_start, _ = _trim_span(source, token.end, end)
                reset = (
                    token.start,
                    token.end,
                    "as",
                    rhs_start,
                    prec,
                    "as_rhs",
                    None,
                    None,
                    _DEFAULT_LHS_SENTINEL,
                    _DEFAULT_LHS_SENTINEL,
                )
                reset_prec = prec
            current_prec = prec
            continue

        if op == "?":
            prec = _CONDITIONAL_PRECEDENCE
            if pending_conditional is not None:
                nested_conditionals += 1
            elif ((current_prec is None or prec < current_prec)
                  and (reset_prec is None or reset_prec > prec)):
                rhs_start, _ = _trim_span(source, token.end, end)
                lhs_start, lhs_end = _trim_span(source, start, token.start)
                reset = (
                    token.start,
                    token.end,
                    "?",
                    rhs_start,
                    prec,
                    "conditional_true",
                    None,
                    None,
                    lhs_start,
                    lhs_end,
                )
                pending_conditional = (token.start, lhs_start, lhs_end, rhs_start)
                reset_prec = prec
            current_prec = prec
            continue

        if token.kind != "OP":
            continue
        # `as` RHS is a TYPE: `|` / `&` are type UNION / INTERSECTION
        # constructors there, NOT value bitwise ops -- while an `as` reset is
        # active they must NOT split the frontier out of the `as` window (user
        # design: treat them as LOWER precedence than `as`, so
        # `5 as string | number | boolean` keeps the whole union as one asserted
        # type). Only VALUE operators (+, *, ...) terminate the type.
        if reset_prec == _AS_PRECEDENCE and op in ("|", "&"):
            continue
        if op in _UNARY_PREFIX_OPERATORS and _is_unary_prefix_position(
            source, start, token.start
        ):
            continue
        if op in _ASSIGNMENT_OPERATORS:
            prec = _ASSIGNMENT_PRECEDENCE
            frame_kind = "assignment_rhs"
        else:
            prec = _BINARY_PRECEDENCE.get(op)
            frame_kind = "binary_rhs"
        if prec is not None:
            # a VALUE operator right after `as <type>` TERMINATES the asserted
            # type and takes the whole cast as its lhs (`5 as number + ""` ->
            # `(5 as number) + ""`). `as` is precedence 0 (lowest), so it would
            # otherwise swallow the operator -- force the reset here. (`|`/`&`
            # already `continue`d above as type constructors.)
            force_as_terminate = reset_prec == _AS_PRECEDENCE
            if force_as_terminate or current_prec is None or prec <= current_prec:
                rhs_start, _ = _trim_span(source, token.end, end)
                reset = (
                    token.start,
                    token.end,
                    op,
                    rhs_start,
                    prec,
                    frame_kind,
                    None,
                    None,
                    _DEFAULT_LHS_SENTINEL,
                    _DEFAULT_LHS_SENTINEL,
                )
                reset_prec = prec
            current_prec = prec
    return reset


def _leading_unclosed_group_start_from_terminals(
    source: str,
    start: int,
    end: int,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> Optional[int]:
    if start >= end or source[start] != "(":
        return None

    tokens = _terminals_in_span(source, start, end, terminals)
    if not tokens or tokens[0].start != start or tokens[0].value != "(":
        return None

    depth = 0
    for token in tokens:
        if token.value == "(":
            depth += 1
            continue
        if token.value == ")":
            depth -= 1
            if depth == 0:
                return None
            continue
    return start


def _leading_new_prefix(
    source: str,
    start: int,
    end: int,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> Optional[Tuple[int, int]]:
    tokens = _terminals_in_span(source, start, end, terminals)
    if not tokens:
        return None
    first = tokens[0]
    if first.start != start:
        return None
    if first.kind == "NEW" or (first.kind == "IDENT" and first.value == "new"):
        return first.start, first.end
    return None


def _with_prefix_operator(
    chain: FrontierChain,
    operator: str,
    start: int,
    end: int,
) -> FrontierChain:
    return FrontierChain(
        replace(
            chain.frontier,
            prefix_operator=operator,
            prefix_start=start,
            prefix_end=end,
        ),
        chain.frames,
    )


def _leading_unary_prefix(
    source: str,
    start: int,
    end: int,
) -> Optional[Tuple[int, int, str]]:
    for op in sorted(_UNARY_PREFIX_OPERATORS, key=len, reverse=True):
        if source.startswith(op, start):
            if source.startswith(op + "=", start):
                continue
            if source.startswith(op + op, start):
                continue
            return start, start + len(op), op
    # KEYWORD unary prefixes (`typeof`/`void`/`delete`/`await`): strip them like the
    # symbol operators so the trailing ident is extracted and filled from scope
    # (`typeof test_` -> `test_` -> the in-scope `test_tuple`), instead of the whole
    # `typeof <ident>` collapsing to a complete_expr that only the exact-text fallback
    # judges (which false-rejects a still-growing operand). A trailing WORD BOUNDARY is
    # required so `typeofX` (an identifier) is not mistaken for the operator.
    for op in _KEYWORD_PREFIX_OPERATORS:
        if source.startswith(op, start):
            after = start + len(op)
            if after < end and (source[after].isalnum() or source[after] in "_$"):
                continue
            return start, after, op
    return None


def _is_unary_prefix_position(source: str, start: int, pos: int) -> bool:
    idx = pos - 1
    while idx >= start and source[idx].isspace():
        idx -= 1
    if idx < start:
        return True
    return source[idx] in _PREFIX_SEPARATORS


def _match_operator(source: str, pos: int) -> Optional[str]:
    for op in _OPERATORS:
        if source.startswith(op, pos):
            return op
    return None


def _expr_terminals(source: str, start: int, end: int) -> List[ExprTerminal]:
    """Tokenize the supported expression prefix into grammar-like terminals."""

    terminals = []
    pos = start
    while pos < end:
        char = source[pos]
        if char.isspace():
            pos += 1
            continue

        if char in {"'", '"', "`"}:
            token_end = min(_scan_string(source, pos), end)
            terminals.append(ExprTerminal("STRING", source[pos:token_end], pos, token_end))
            pos = token_end
            continue

        number = _NUMBER_RE.match(source, pos)
        if number is not None and number.end() <= end:
            terminals.append(
                ExprTerminal("NUMBER", number.group(0), pos, number.end())
            )
            pos = number.end()
            continue

        ident = _IDENT_RE.match(source, pos)
        if ident is not None and ident.end() <= end:
            terminals.append(ExprTerminal("IDENT", ident.group(0), pos, ident.end()))
            pos = ident.end()
            continue

        op = _match_operator(source, pos)
        if op is not None and pos + len(op) <= end:
            terminals.append(ExprTerminal("OP", op, pos, pos + len(op)))
            pos += len(op)
            continue

        terminals.append(ExprTerminal("UNKNOWN", char, pos, pos + 1))
        pos += 1

    return terminals


def _terminals_in_span(
    source: str,
    start: int,
    end: int,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> List[ExprTerminal]:
    if terminals is None:
        return _expr_terminals(source, start, end)

    result = []
    for terminal in terminals:
        token_start = max(start, terminal.start)
        token_end = min(end, terminal.end)
        if token_end <= token_start:
            continue
        result.append(
            ExprTerminal(
                terminal.kind,
                source[token_start:token_end],
                token_start,
                token_end,
            )
        )
    return result


def _local_terminals(
    source: str,
    start: int,
    end: int,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> Optional[Tuple[ExprTerminal, ...]]:
    if terminals is None:
        return None
    local = []
    for terminal in _terminals_in_span(source, start, end, terminals):
        local.append(
            ExprTerminal(
                terminal.kind,
                terminal.value,
                terminal.start - start,
                terminal.end - start,
            )
        )
    return tuple(local)


def _find_base_start(source: str, start: int, open_pos: int) -> int:
    idx = open_pos - 1
    while idx >= start and source[idx].isspace():
        idx -= 1
    depth = 0
    while idx >= start:
        char = source[idx]
        if char in {")", "]", "}"}:
            depth += 1
            idx -= 1
            continue
        if char in {"(", "[", "{"}:
            if depth > 0:
                depth -= 1
                idx -= 1
                continue
            break
        if depth == 0 and char in _PREFIX_SEPARATORS:
            break
        idx -= 1
    return idx + 1


def _scan_string(source: str, start: int) -> int:
    quote = source[start]
    pos = start + 1
    escaped = False
    while pos < len(source):
        char = source[pos]
        pos += 1
        if escaped:
            escaped = False
            continue
        if char == "\\":
            escaped = True
            continue
        if char == quote:
            break
    return pos
