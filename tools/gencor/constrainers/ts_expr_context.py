"""Locate the active TypeScript expression prefix in generated source."""

from dataclasses import dataclass
from typing import Optional, Tuple

from constrainers.ts_expr_frontier import ExprTerminal, extract_frontier_chains


NON_CALLEE_KEYWORDS = {
    "await",
    "break",
    "case",
    "catch",
    "class",
    "const",
    "continue",
    "debugger",
    "default",
    "delete",
    "do",
    "else",
    "enum",
    "export",
    "extends",
    "false",
    "finally",
    "for",
    "function",
    "if",
    "implements",
    "in",
    "interface",
    "instanceof",
    "let",
    "new",
    "null",
    "of",
    "package",
    "private",
    "protected",
    "public",
    "return",
    "static",
    "switch",
    "throw",
    "true",
    "try",
    "typeof",
    "var",
    "void",
    "while",
    "with",
    "yield",
}

CALLABLE_KEYWORDS = {
    "import",
    "super",
    "this",
}

NON_CALLEE_KEYWORDS -= CALLABLE_KEYWORDS

SKIP_EXPECTED_TYPES = {"any", "unknown"}


@dataclass(frozen=True)
class ActiveTypeExprContext:
    code_before_expr: str
    expr_prefix: str
    expected_type: Optional[str]
    expected_source: Optional[str] = None
    expected_reason: Optional[str] = None
    start: int = 0
    terminals: Tuple[ExprTerminal, ...] = ()
    # None means this expression did not start with the parser's `(` terminal.
    # "open" means the leading paren is still unmatched; "closed" means that
    # leading paren has a matching `)` in the current terminal path.
    paren_cover_state: Optional[str] = None


def is_viable_active_expr_prefix(expr_prefix: str) -> bool:
    """Return true when a parser-tagged span looks like a live expression."""

    stripped_prefix = expr_prefix.lstrip()
    if not stripped_prefix:
        return False
    if stripped_prefix[0] in {")", "]", "}", ";", ","}:
        return False
    if _has_top_level_expr_separator_tail(expr_prefix):
        return False
    if _has_top_level_closing_delimiter_tail(expr_prefix):
        return False
    chains = extract_frontier_chains(expr_prefix)
    if not chains:
        return False
    if _has_completed_expr_tail(expr_prefix, chains):
        return False
    return True


def find_active_type_expr_context(ts_api, code: str) -> Optional[ActiveTypeExprContext]:
    """Find the innermost active expression that has a contextual type.

    The parser already guarantees syntactic viability.  This helper is a
    pragmatic bridge from a raw code prefix to the expression-frontier checker:
    it tries likely expression-start offsets from nearest to farthest and asks
    TypeScript whether that position has an expected type.
    """

    for start in candidate_expr_start_offsets(code):
        expr_prefix = code[start:]
        if not is_viable_active_expr_prefix(expr_prefix):
            continue

        context = ts_api.inspect(
            code[:start],
            include_completions=False,
            include_symbols=False,
            include_diagnostics=False,
        )
        expected_type = context.get("expectedType")
        if not expected_type or expected_type in SKIP_EXPECTED_TYPES:
            continue

        return ActiveTypeExprContext(
            code_before_expr=code[:start],
            expr_prefix=expr_prefix,
            expected_type=expected_type,
            expected_source=context.get("expectedTypeSource"),
            expected_reason=context.get("expectedTypeReason"),
            start=start,
        )

    return None


def _has_completed_expr_tail(expr_prefix: str, chains) -> bool:
    """Return true when the candidate expression has already ended.

    A code prefix such as ``const xs: number[] = [];\nfor`` should not keep the
    assignment RHS context alive after the semicolon.  Complete expressions with
    no trailing source are still useful, and incomplete/member/frontier chains
    continue to flow through the reachability checker.
    """

    for chain in chains:
        if chain.frontier.kind != "complete_expr":
            return False
        if not expr_prefix[chain.frontier.end :].strip():
            return False
    return True


def _has_top_level_expr_separator_tail(expr_prefix: str) -> bool:
    depth = 0
    i = 0
    while i < len(expr_prefix):
        next_i = _skip_ignored(expr_prefix, i)
        if next_i != i:
            i = next_i
            continue

        char = expr_prefix[i]
        if char in "([{":
            depth += 1
        elif char in ")]}":
            if depth > 0:
                depth -= 1
        elif char in {";", ","} and depth == 0:
            return True

        i += 1

    return False


def _has_top_level_closing_delimiter_tail(expr_prefix: str) -> bool:
    depth = 0
    i = 0
    while i < len(expr_prefix):
        next_i = _skip_ignored(expr_prefix, i)
        if next_i != i:
            i = next_i
            continue

        char = expr_prefix[i]
        if char in "([{":
            depth += 1
        elif char in ")]}":
            if depth == 0:
                # A top-level close with NO matching open in this prefix belongs to an
                # ENCLOSING construct, not this expr -- whether or not more follows.
                # e.g. `s=>s.length>0)` (the `)` is the enclosing `.filter(`'s): the
                # active span is spurious and its completed type is wrong (`string[]`),
                # so it must not be checked. (Previously only caught with a trailing
                # tail, missing the common end-of-span unmatched close.)
                return True
            depth -= 1

        i += 1

    return False


def candidate_expr_start_offsets(code: str) -> Tuple[int, ...]:
    starts = set()
    i = 0
    while i < len(code):
        next_i = _skip_ignored(code, i)
        if next_i != i:
            i = next_i
            continue

        if _keyword_at(code, i, "return"):
            starts.add(_skip_space_forward(code, i + len("return")))
            i += len("return")
            continue

        if code.startswith("=>", i):
            starts.add(_skip_space_forward(code, i + 2))
            i += 2
            continue

        char = code[i]
        if char == "=" and _is_assignment_equal(code, i):
            starts.add(_skip_space_forward(code, i + 1))
        elif char == "(" and _looks_like_call_open(code, i):
            starts.add(_skip_space_forward(code, i + 1))
        elif char == "[":
            starts.add(_skip_space_forward(code, i + 1))
        elif char in {",", "?"}:
            starts.add(_skip_space_forward(code, i + 1))
        elif char == ":" and _colon_starts_expression(code, i):
            starts.add(_skip_space_forward(code, i + 1))

        i += 1

    starts.add(_skip_space_forward(code, 0))
    return tuple(sorted((start for start in starts if start <= len(code)), reverse=True))


def _skip_ignored(code: str, start: int) -> int:
    char = code[start]
    if char in {"'", '"', "`"}:
        return _skip_string(code, start)
    if code.startswith("//", start):
        newline = code.find("\n", start + 2)
        return len(code) if newline < 0 else newline + 1
    if code.startswith("/*", start):
        end = code.find("*/", start + 2)
        return len(code) if end < 0 else end + 2
    return start


def _skip_string(code: str, start: int) -> int:
    quote = code[start]
    i = start + 1
    escaped = False
    while i < len(code):
        char = code[i]
        i += 1
        if escaped:
            escaped = False
            continue
        if char == "\\":
            escaped = True
            continue
        if char == quote:
            break
    return i


def _skip_space_forward(code: str, start: int) -> int:
    while start < len(code) and code[start].isspace():
        start += 1
    return start


def _keyword_at(code: str, start: int, keyword: str) -> bool:
    if not code.startswith(keyword, start):
        return False
    before = code[start - 1] if start > 0 else ""
    after_idx = start + len(keyword)
    after = code[after_idx] if after_idx < len(code) else ""
    return not _is_ident_char(before) and not _is_ident_char(after)


def _is_ident_char(char: str) -> bool:
    return char == "$" or char == "_" or char.isalnum()


def _is_assignment_equal(code: str, idx: int) -> bool:
    prev_char = _prev_nonspace_char(code, idx)
    next_char = _next_nonspace_char(code, idx)
    if prev_char in {"=", "!", "<", ">", "+", "-", "*", "/", "%", "&", "|", "^"}:
        return False
    if next_char in {"=", ">"}:
        return False
    return True


def _looks_like_call_open(code: str, idx: int) -> bool:
    prev_idx = _prev_nonspace_index(code, idx)
    if prev_idx is None:
        return False
    prev_char = code[prev_idx]
    if prev_char in {")", "]", ">"}:
        return True
    if not _is_ident_char(prev_char):
        return False
    word = _word_ending_at(code, prev_idx)
    return _word_can_end_callee_expression(word)


def _word_can_end_callee_expression(word: str) -> bool:
    return bool(word) and word not in NON_CALLEE_KEYWORDS


def _colon_starts_expression(code: str, idx: int) -> bool:
    return _is_ternary_branch_colon(code, idx) or _is_object_value_colon(code, idx)


def _is_ternary_branch_colon(code: str, idx: int) -> bool:
    stack = [{"opener": "", "ternary": 0}]
    i = 0
    while i < idx:
        next_i = _skip_ignored(code, i)
        if next_i != i:
            i = next_i
            continue

        char = code[i]
        if char in "([{":
            stack.append({"opener": char, "ternary": 0})
        elif char in ")]}":
            if len(stack) > 1:
                stack.pop()
        elif char == "?":
            if code.startswith("?.", i) or code.startswith("??", i) or _is_optional_type_marker(code, i):
                pass
            else:
                stack[-1]["ternary"] += 1
        elif char == ":":
            if stack[-1]["ternary"] > 0:
                stack[-1]["ternary"] -= 1

        i += 1

    return stack[-1]["ternary"] > 0


def _is_optional_type_marker(code: str, idx: int) -> bool:
    return _is_ident_char(_prev_nonspace_char(code, idx)) and _next_nonspace_char(code, idx) == ":"


def _is_object_value_colon(code: str, idx: int) -> bool:
    stack = _delimiter_stack_before(code, idx)
    if not stack or stack[-1][0] != "{":
        return False
    return _brace_opens_expression_object(code, stack[-1][1])


def _delimiter_stack_before(code: str, idx: int):
    stack = []
    i = 0
    while i < idx:
        next_i = _skip_ignored(code, i)
        if next_i != i:
            i = next_i
            continue

        char = code[i]
        if char in "([{":
            stack.append((char, i))
        elif char in ")]}":
            if stack:
                stack.pop()
        i += 1
    return stack


def _brace_opens_expression_object(code: str, idx: int) -> bool:
    prev_idx = _prev_nonspace_index(code, idx)
    if prev_idx is None:
        return True

    prev_char = code[prev_idx]
    if prev_char in {"(", "[", "=", ",", ":", "?", "!", "~", "+", "-", "*", "/", "%", "&", "|", "^"}:
        return not _is_type_alias_object_literal(code, idx)
    if prev_char == ">":
        return False
    if prev_char == "}":
        return False
    if _is_ident_char(prev_char):
        word = _word_ending_at(code, prev_idx)
        return word in {"return", "yield"}
    return False


def _is_type_alias_object_literal(code: str, idx: int) -> bool:
    prefix = code[:idx].rstrip()
    eq_idx = prefix.rfind("=")
    if eq_idx < 0:
        return False
    statement_start = max(prefix.rfind(";"), prefix.rfind("\n")) + 1
    head = prefix[statement_start:eq_idx].strip()
    return head.startswith("type ") or head.startswith("interface ")


def _word_ending_at(code: str, idx: int) -> str:
    start = idx
    while start >= 0 and _is_ident_char(code[start]):
        start -= 1
    return code[start + 1 : idx + 1]


def _prev_nonspace_index(code: str, idx: int) -> Optional[int]:
    idx -= 1
    while idx >= 0 and code[idx].isspace():
        idx -= 1
    return idx if idx >= 0 else None


def _prev_nonspace_char(code: str, idx: int) -> str:
    prev = _prev_nonspace_index(code, idx)
    return code[prev] if prev is not None else ""


def _next_nonspace_char(code: str, idx: int) -> str:
    idx += 1
    while idx < len(code) and code[idx].isspace():
        idx += 1
    return code[idx] if idx < len(code) else ""
