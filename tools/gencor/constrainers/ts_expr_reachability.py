"""Type reachability over partial TypeScript expression frontiers.

The frontier extractor answers a syntax question:

    where does the next token attach, and which parent contexts contain it?

This module answers the next type question:

    if the frontier can complete to these typed candidates, what whole
    expression types can those candidates produce after flowing through the
    parent frames?

The implementation is deliberately table-driven and conservative.  If a fixed
non-frontier expression has no trustworthy type, or a frame/operator has no
supported transition for a candidate type, that branch is treated as a type
error and is pruned.
"""

from dataclasses import dataclass, field
from functools import lru_cache
import re
import time
from typing import Iterable, List, Optional, Sequence, Tuple

from constrainers.ts_expr_frontier import (
    ActiveFrontier,
    ExprTerminal,
    Frontier,
    FrontierChain,
    FrontierFrame,
    active_frontiers_for_chain,
    extract_frontier_chains,
)
from lsp.ts_reachability import (
    ArrayPType,
    BigIntPType,
    BooleanPType,
    FunctionPType,
    GenericPType,
    IndexSignaturePType,
    NullPType,
    NumberPType,
    PrimitivePType,
    StringPType,
    TuplePType,
    TypeParameterPType,
    UndefinedPType,
    UnionPType,
    binary_operator_candidates,
    call_reachable_types,
    computed_member_access_reachable_types,
    ptype_from_ts_type,
    reachable as _ts_type_reachable,
    ARITHMETIC_OP_PRECEDENCE,
    MAX_OPERATOR_PRECEDENCE,
    MIN_OPERATOR_PRECEDENCE,
    OPERATOR_PRECEDENCES,
    OPERATOR_ASSOCIATIVITY,
)
from lsp.ts_types_base import AnyPType, PType


FATAL_DIAGNOSTIC_CODES = {
    2304,  # Cannot find name
    2322,  # Type is not assignable (e.g. compound `+=` whose concat RESULT is not
           # assignable back to the target; only counted when it STARTS inside the
           # reduced expr's own span, so it never blames the outer assignment)
    2339,  # Property does not exist
    2349,  # This expression is not callable
    2351,  # This expression is not constructable
    2352,  # Suspicious type assertion between non-overlapping types
    2356,  # Arithmetic operand must be number/bigint/any/enum (e.g. `b++` on bool)
    2362,  # LHS of arithmetic operation
    2363,  # RHS of arithmetic operation
    2365,  # Operator cannot be applied
    2367,  # Comparison appears unintentional; no type overlap
    2538,  # Type cannot be used as an index type
    2551,  # Property does not exist; did you mean ...
    2552,  # Cannot find name; did you mean ...
    2554,  # Expected N arguments
    2693,  # 'X' only refers to a type, but is being used as a value here
    2769,  # No overload matches this call
    18050, # The value 'null'/'undefined' cannot be used here (operand of an
           # arithmetic / bitwise / shift / relational operator)
    2488,  # Type must have a '[Symbol.iterator]()' method -- spreading / for-of
           # over a NON-iterable (observed live, sem_none mbpp/397:
           # `[...(a, b, c)]` spreads a COMMA expression whose value is a bare
           # number; the array literal's completed probe captured the 2488 but
           # it was not fatal -> the ill-typed program was fully ACCEPTED).
    2588,  # Cannot assign to 'X' because it is a constant -- observed live
           # (type-s0 HumanEval/114). The (0c) const gate rejects the '=' itself;
           # this FATAL is the reduce-side backstop (e.g. multi-token settles).
    2531,  # Object is possibly 'null' -- e.g. a PARENTHESISED null operand `( null )
           # * 2` (the bare literal is 18050, but grouping retypes it to `null` and TS
           # switches to 2531). Real strict-mode error: null used where non-null is
           # required (operand / member / call). Under the oracle's compiler options
           # (strict:true, NO noUncheckedIndexedAccess) `arr[i]` is not possibly-undef,
           # so this does not false-reject plain indexing.
    2532,  # Object is possibly 'undefined' -- the undefined counterpart of 2531
           # (`( undefined ) * 2`). Same rationale.
    2533,  # Object is possibly 'null' or 'undefined'
}

_AS_BUILTIN_TYPE_NAMES = (
    "string", "number", "boolean", "any", "unknown", "never", "void",
    "null", "undefined", "object", "bigint", "symbol",
)

ARITHMETIC_OPERATORS = {"+", "-", "*", "**", "/", "%", "<<", ">>", ">>>", "&", "|", "^"}
RELATIONAL_OPERATORS = {"<", "<=", ">", ">="}
EQUALITY_OPERATORS = {"==", "!=", "===", "!=="}
LOGICAL_OPERATORS = {"&&", "||", "??"}
COMMA_OPERATORS = {","}
SUPPORTED_BINARY_OPERATORS = (
    ARITHMETIC_OPERATORS
    | RELATIONAL_OPERATORS
    | EQUALITY_OPERATORS
    | LOGICAL_OPERATORS
    | COMMA_OPERATORS
)
BINARY_PRECEDENCE = {
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
CONDITIONAL_PRECEDENCE = 2
INFIX_EXTENSION_PRECEDENCE = {
    **BINARY_PRECEDENCE,
    "?": CONDITIONAL_PRECEDENCE,
}
_IDENT_TEXT_RE = re.compile(r"^[A-Za-z_$][0-9A-Za-z_$]*$")
_NUMERIC_LITERAL_PREFIX_RE = re.compile(
    r"^(?:"
    r"0[xX][0-9A-Fa-f]*n?|"
    r"0[bB][01]*n?|"
    r"0[oO][0-7]*n?|"
    r"(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+-]?\d*)?n?"
    r")$"
)
_PREFIX_OPERATOR_CHARS = {"+", "-", "!", "~"}
_PREFIX_CONTEXT_SEPARATORS = set("([{:?,=+-*/%<>!&|^~")


@dataclass(frozen=True)
class TypeLookup:
    """A type query for an already-fixed expression fragment."""

    type_text: Optional[str]
    diagnostics: Tuple[dict, ...] = field(default_factory=tuple)
    reason: str = ""

    @property
    def ok(self) -> bool:
        if not self.type_text:
            return False
        errors = _diagnostic_errors(self.diagnostics)
        # 7006 (parameter implicitly has an `any` type) is NOT an error under
        # the established ALLOW-UNTYPED-PARAMS policy: an untyped arrow/function
        # param is legal here and simply types as `any`. Counting it made the
        # completed-type probe of `test_tup.some(value => ...)` (any receiver,
        # so the param cannot be contextually typed) fail via the `any` +
        # errors rule below -- a false-reject (observed mbpp/744).
        errors = [item for item in errors if item.get("code") != 7006]
        if _has_fatal_diagnostic(errors):
            return False
        # `any` plus diagnostics is usually TypeScript recovering from an
        # already-broken fragment.  Treat that as a hard type error for fixed
        # non-frontier parts.
        if self.type_text == "any" and errors:
            return False
        return True


@dataclass(frozen=True)
class TypedCandidate:
    """One concrete frontier completion candidate with its current type."""

    text: str
    type_text: str
    source: str = ""


@dataclass(frozen=True)
class IndexAccessOption:
    """One base[index] typing branch."""

    key_types: Tuple[str, ...]
    result_type: str
    source: str = "index_access"


@dataclass(frozen=True)
class ReachabilityState:
    """A live partial-expression branch while flowing upward through frames."""

    text: str
    type_text: str
    source: str = ""


@dataclass(frozen=True)
class ReachabilityError:
    reason: str
    detail: str = ""
    frame: Optional[FrontierFrame] = None
    candidate: Optional[ReachabilityState] = None


@dataclass(frozen=True)
class TypeGoal:
    """A top-down set of accepted current types.

    ``postfix_steps`` means a candidate of type T is accepted if T can become
    one of ``target_types`` through that many local member/call/index steps.
    This is the compact form of the "preimage" set we discussed.
    """

    target_types: Tuple[str, ...]
    postfix_steps: int = 0
    accepts_any: bool = False
    conditional_escape: bool = False
    # `as`-frame channel (user design): the FIXED lhs type of an `x as T`
    # position -- a candidate type T must OVERLAP it (either direction
    # assignable; TS 2352 semantics) in addition to the normal accept.
    as_lhs_type: Optional[str] = None

    def with_postfix_steps(self, steps: int) -> "TypeGoal":
        return TypeGoal(
            self.target_types,
            max(self.postfix_steps, steps),
            self.accepts_any,
            self.conditional_escape,
            self.as_lhs_type,
        )

    def accepts(self, type_text: str) -> bool:
        if self.as_lhs_type is not None and not _types_overlap(self.as_lhs_type, type_text):
            return False   # `as` requires OVERLAP with the fixed lhs (2352 semantics)
        if self.accepts_any:
            return _ptype(type_text) is not None
        # `never` TARGET is the bottom type: only `never` is assignable to it.
        # `_ptype('never')` mis-parses to `any`, so `_goal_accepts_type` would
        # accept EVERY source -- the same FALSE-ACCEPT fixed in _goal_reachable_deep
        # / assignable, and the reason `x: never = c ? true : false` was not caught
        # at the `:` (conditional-true check, HumanEval/115). A pure-never goal
        # rejects a non-never source; a union goal keeps its non-never members.
        if any(_is_never_type_text(t) for t in self.target_types):
            if _is_never_type_text(type_text):
                return True
            non_never = tuple(t for t in self.target_types
                              if not _is_never_type_text(t))
            if not non_never:
                return False
            return _goal_accepts_type_cached(non_never, self.postfix_steps, type_text)
        return _goal_accepts_type(self, type_text)


@dataclass(frozen=True)
class FrontierGoalStep:
    """Expected type goal at one active frontier, ordered top-down."""

    frontier: ActiveFrontier
    goal: TypeGoal


@dataclass(frozen=True)
class ReachabilityResult:
    reachable: bool
    final_types: Tuple[str, ...]
    frontier_candidates: Tuple[TypedCandidate, ...]
    states: Tuple[ReachabilityState, ...]
    errors: Tuple[ReachabilityError, ...]
    expected_type: Optional[str] = None
    frontier_goal: Optional[TypeGoal] = None
    frontier_goal_steps: Tuple[FrontierGoalStep, ...] = field(default_factory=tuple)


class FrontierTypeOracle:
    """Interface used by the checker.

    Tests can provide a tiny fake oracle.  Production code can use
    ``TypeScriptFrontierTypeOracle`` below, which delegates to
    ``TypeScriptCompilerAPI``.
    """

    def type_of_expr(self, expr_text: str) -> TypeLookup:
        raise NotImplementedError

    def actual_type_of_expr(self, expr_text: str) -> TypeLookup:
        return self.type_of_expr(expr_text)

    def completed_type_of_expr(self, expr_text: str) -> TypeLookup:
        return self.type_of_expr(expr_text)

    def candidates_for_frontier(
        self,
        frontier: Frontier,
        expr_prefix: str,
    ) -> Iterable[TypedCandidate]:
        raise NotImplementedError

    def assignable(self, source_type: str, target_type: str) -> bool:
        # RegExpExecArray TARGET (at any array depth): lib.es5 declares its
        # `index`/`input` members as REQUIRED (unlike RegExpMatchArray, where
        # they are optional), so only an exec result satisfies it --
        # `string[]`/match arrays do NOT (tsc 2345; hunter-found
        # false-accepts: string[] arg into a RegExpExecArray param, and
        # string[][] into RegExpExecArray[] which the lattice's opaque-element
        # over-approximation accepted). Checked on the RAW texts BEFORE the
        # string[]-alias normalization below, which is sound only in the
        # SOURCE direction for RegExpExecArray.
        raw_source = (source_type or "").strip()
        exec_depth = _exec_array_target_depth((target_type or "").strip())
        if exec_depth is not None:
            return _exec_array_target_admits(raw_source, exec_depth)
        source_type = _normalize_lib_type_text(source_type)
        target_type = _normalize_lib_type_text(target_type, as_target=True)
        source = _ptype(source_type)
        target = _ptype(target_type)
        if source is None or target is None:
            return False
        # `any`/`unknown` as the TARGET accept EVERY source (both are TS top types
        # for assignment INTO). Handle it up front so ARRAY sources (`any[]`, `X[]`,
        # `never[]`) reach it too -- the array-specific branches below only match
        # array TARGETS, so `any[] -> any` (and `-> unknown`) was wrongly FALSE, which
        # false-rejected the `;`/`}` closing an `: any`-returning fn whose body is
        # `return arr.map(...)` (its completed type is `any[]`) -> whitespace-loop
        # derailment (mbpp/587). Placed after the unknown-SOURCE nuance is moot here
        # (unknown source -> any/unknown target is also True; -> concrete still hits
        # the guard below since concrete targets skip this).
        if _is_any_type_text(target_type) or _is_unknown_type_text(target_type):
            return True
        # UNION source: TS rule -- a union is assignable to T iff EVERY member
        # is. Decomposing routes each member through the text guards below
        # (`RegExpMatchArray | never[]` into `string[]` needs the never[] guard
        # on the second member, defeated when checking the whole text; observed
        # false-reject mbpp/563). On member failure fall through: the lattice
        # may still relate the union as a whole, so nothing previously accepted
        # is lost.
        union_members = _top_level_union_member_texts(source_type)
        if union_members is not None:
            # DEFINITIVE: a union source is assignable to T iff EVERY member is
            # -- return the result, do NOT fall through. Falling through let the
            # EXISTENTIAL `_any_array_assignable_to_array` below accept a union
            # whose only assignable member is one array branch: `number |
            # number[]` was wrongly accepted into `(number | number[])[]` (its
            # `number` member is not), so `rec(data_list[i])` (mbpp/65) missed
            # its 2345. Decomposition still routes each member through the text
            # guards (the `RegExpMatchArray | never[]` -> `string[]` case,
            # mbpp/563, stays accepted because BOTH members pass their guards).
            return all(self.assignable(m, target_type) for m in union_members)
        # `unknown` is the top type for assignment INTO (everything is assignable to
        # `unknown`) but the bottom for assignment FROM: `unknown` is assignable ONLY
        # to `unknown`/`any`, NOT to a concrete type. It parses to AnyPType in the
        # ptype lattice, so guard it explicitly BEFORE the AnyPType short-circuit;
        # otherwise `let n: number = u` (u: unknown) is wrongly accepted though TS
        # rejects it (error 2322). (audit finding: unknown->any false-accept.)
        if _is_unknown_type_text(source_type):
            return _is_unknown_type_text(target_type) or _is_any_type_text(target_type)
        # `never` is the bottom type -- assignable to EVERY type. In practice this
        # arises from the empty array literal `[]`, whose inferred type is `never[]`,
        # assignable to any `T[]` (`const x: T[] = []`, `return []`, accumulator
        # inits -- all accepted by TS). Without this the extremely common empty-array
        # init/return is FALSE-REJECTED: `never` parses to a plain object type (not a
        # lattice bottom), so `string[] >= never[]` is False. never <: T for all T,
        # so never[] <: T[]; the empty array is NOT assignable to a fixed-length
        # tuple (TS requires the exact arity), so tuple targets are excluded.
        if _is_never_type_text(source_type):
            return True
        # `never` TARGET is the bottom type: NOTHING is assignable to it except
        # `never` itself (a never source already returned True above). It parses
        # to AnyPType, which would accept EVERY source via the lattice
        # `any >= source` -- a FALSE-ACCEPT (`let x: never = true/5/"a"`, and the
        # reduce side of HumanEval/115 where `fg[i][j]` is never). Guard it, the
        # target-direction dual of the never-source rule above.
        if _is_never_type_text(target_type):
            return False
        if _is_never_array_type_text(source_type):
            return (
                _target_admits_never_array(target)
                or _is_arraylike_named_target_text(target_type)
            )
        # `any[]` (e.g. `new Array(n)`, whose TS type is `any[]`) is assignable to
        # ANY array target (`any` element is bidirectionally compatible), but the
        # ptype lattice parses the `any` element as a plain object type so
        # `number[] >= any[]` is False -> the very common
        # `const dp: number[] = new Array(n)` was FALSE-REJECTED (observed live,
        # mbpp/306). Same shape as the never[] guard: array/union-of-array targets
        # only; NOT tuples (TS: any[] into [number, number] is a real 2322 -- the
        # arity is unknown) and NOT non-array targets (any[] into number is 2322).
        if _is_any_array_type_text(source_type):
            return (
                _target_admits_never_array(target)
                or _is_arraylike_named_target_text(target_type)
            )
        # BUILT-IN constructor passed as a CALLBACK (`xs.map(Number)` -- a common
        # TS idiom): `Number`'s type text is `NumberConstructor`, which the ptype
        # lattice cannot relate to the expected callback type -> false-reject at
        # the call's `)`. Number/String/Boolean are CALLABLE (conversion
        # functions); model them by their call signature and recurse.
        src = (source_type or "").strip()
        _CTOR_CALL_SIGS = {
            "NumberConstructor": "(value: any) => number",
            "StringConstructor": "(value: any) => string",
            "BooleanConstructor": "(value: any) => boolean",
        }
        if src in _CTOR_CALL_SIGS and "=>" in (target_type or ""):
            return self.assignable(_CTOR_CALL_SIGS[src], target_type)
        # TUPLE -> ARRAY: TS infers a spread array literal as a TUPLE
        # (`Math.min(...[1, 2])` types `[1,2]` as `[number, number]`), and a tuple
        # IS assignable to an array whose element admits every tuple element
        # (`let a: number[] = t` with t: [number, number] is legal TS). The ptype
        # lattice treats them as unrelated -> the spread operand was false-rejected
        # at the call's `)`. Element-wise recursive check keeps soundness:
        # `[number, string]` into `number[]` still rejects.
        elems = _tuple_element_texts(source_type)
        if elems is not None:
            # TUPLE -> TUPLE: TS tuples are covariant element-wise, so recurse
            # per element when the arities MATCH -- each element then hits the
            # established guards (`[number, any[]]` into `[number, number[]]`
            # needs the any[] guard on element 2, unreachable when comparing
            # the whole tuples in the lattice; observed false-reject mbpp/393).
            # Arity mismatch falls through to the lattice (which rejects).
            tgt_elems = _tuple_element_texts(target_type)
            if (
                tgt_elems is not None
                and len(tgt_elems) == len(elems)
                and all(self.assignable(s, t) for s, t in zip(elems, tgt_elems))
            ):
                return True
            tgt = (target_type or "").strip()
            if tgt.endswith("[]"):
                elem_target = tgt[:-2].strip()
                if elem_target.startswith("(") and elem_target.endswith(")"):
                    elem_target = elem_target[1:-1].strip()
                if elem_target and all(self.assignable(e, elem_target) for e in elems):
                    return True
        # ARRAY -> ARRAY: TS arrays are covariant, so strip one `[]` layer from
        # BOTH sides and recurse -- an array-of-tuples source (`[number,
        # number][]` into `number[][]`, observed false-reject mbpp/630) only
        # reaches the tuple->array guard through this recursion. On failure
        # fall through to the lattice (no previously-accepted case is lost).
        src_elem = _array_element_text(source_type)
        tgt_elem = _array_element_text(target_type)
        if (
            src_elem is not None
            and tgt_elem is not None
            and self.assignable(src_elem, tgt_elem)
        ):
            return True
        # ConcatArray<T> TARGET: array-like (length, numeric index, join,
        # slice), so a source is assignable iff it has array structure with a
        # T-assignable element -- arrays/tuples element-wise, Concat/Readonly/
        # Array<S> by argument. A source with NO array structure (scalars) is
        # NOT assignable; without this rule the ptype lattice's opaque-object
        # over-approximation accepted ANY source (hunter-found false-accept:
        # `const c: ConcatArray<string> = Array(1, 2)` -- Array(1,2) infers
        # number[]). The earlier any[]/never[] guards return before this.
        tgt_ca = _generic_head_and_args(target_type)
        if tgt_ca is not None and tgt_ca[0] == "ConcatArray" and len(tgt_ca[1]) == 1:
            elem_t = tgt_ca[1][0]
            src_ca = _generic_head_and_args(source_type)
            if (
                src_ca is not None
                and src_ca[0] in ("ConcatArray", "ReadonlyArray", "Array")
                and len(src_ca[1]) == 1
            ):
                return self.assignable(src_ca[1][0], elem_t)
            if elems is not None:
                return all(self.assignable(e, elem_t) for e in elems)
            if src_elem is not None:
                return self.assignable(src_elem, elem_t)
            return False
        # FUNCTION -> FUNCTION: decompose so NESTED `any` reaches the guards
        # (`() => any[]` into `(value: any, ...) => number[]` fell to the
        # lattice, whose ArrayPType comparison rejects the nested any --
        # observed live, sem_none mbpp/247 `.map(() => Array(n).fill(0))`).
        # Return types recurse covariantly (the any[] guard then applies);
        # parameters must be equal-text / `any` on either side / contravariant
        # via recursion -- the STRICTER of TS's two regimes, so no
        # false-accept; the source may take FEWER params (TS rule). Rest
        # params or unparsable texts fall through to the lattice unchanged.
        src_fn = _fn_type_parts(source_type)
        tgt_fn = _fn_type_parts(target_type)
        if (
            src_fn is not None
            and tgt_fn is not None
            and len(src_fn[0]) <= len(tgt_fn[0])
            and all(
                s == t or s == "any" or t == "any" or self.assignable(t, s)
                for s, t in zip(src_fn[0], tgt_fn[0])
            )
            and self.assignable(src_fn[1], tgt_fn[1])
        ):
            return True
        # GENERIC with `any` type args: `new Map()` completes as `Map<any, any>`
        # while the annotation says `Map<number, number>` -- TS accepts (`any`
        # is bidirectionally compatible as a type argument) but the lattice
        # rejects (observed false-reject mbpp/754). Narrowest sound rule: same
        # head, same arity, and every argument pair is either textually equal
        # or has `any` on one side (generic params are invariant in general, so
        # non-`any` pairs must match exactly); anything else falls through.
        src_generic = _generic_head_and_args(source_type)
        tgt_generic = _generic_head_and_args(target_type)
        if (
            src_generic is not None
            and tgt_generic is not None
            and src_generic[0] == tgt_generic[0]
            and len(src_generic[1]) == len(tgt_generic[1])
        ):
            pairs = list(zip(src_generic[1], tgt_generic[1]))
            if any(s == "any" or t == "any" for s, t in pairs) and all(
                s == t or s == "any" or t == "any" for s, t in pairs
            ):
                return True
        return isinstance(source, AnyPType) or target >= source


def source_backed_frontier_type_spans(
    expr_prefix: str,
    terminals: Optional[Sequence[ExprTerminal]] = None,
) -> Tuple[Tuple[int, int], ...]:
    """Return local source spans that ``check()`` may type directly.

    The result mirrors only current-type lookups whose legacy fragment is the
    exact source slice at that position. Synthetic completions, reconstructed
    regex callees, and fragments evaluated under an altered arrow/``new``
    context are deliberately omitted; those keep using their established
    probes. This lets the caller pre-plan a shared TypeScript Program without
    changing what any individual lookup means.
    """

    spans = set()

    def add(start, end):
        if start is None or end is None or end <= start:
            return
        if not (0 <= start < end <= len(expr_prefix)):
            return
        spans.add((start, end))

    for chain in extract_frontier_chains(expr_prefix, terminals):
        # Goal inversion asks fixed operand types before it asks for a leaf
        # candidate. The root oracle evaluates ``lhs_text`` immediately after
        # code_before_expr, so only an lhs beginning at local offset zero is an
        # exact source-backed request. Inner lhs/true-branch probes intentionally
        # retain their legacy fragment context.
        for frame in chain.frames:
            if (
                frame.kind in {
                    "assignment_rhs",
                    "as_rhs",
                    "conditional_true",
                    "conditional_false",
                    "binary_rhs",
                }
                and frame.lhs_text
                and frame.lhs_start == 0
            ):
                add(frame.lhs_start, frame.lhs_end)

        frontier = chain.frontier
        if frontier.kind == "complete_expr":
            if frontier.base_kind in {"call", "member", "index"}:
                # ``new Foo(`` probes bare ``Foo`` from before ``new``; a call
                # containing an arrow header similarly prepends synthetic
                # context. Neither is equivalent to an exact source-slice ask.
                if frontier.prefix_operator == "new":
                    continue
                if (
                    frontier.base_kind == "call"
                    and _arrow_header_prefix(frontier.text or "")
                ):
                    continue
                if (
                    frontier.base_start == frontier.start
                    and frontier.base_end is not None
                ):
                    add(frontier.base_start, frontier.base_end)
                continue
            add(frontier.start, frontier.end)
            continue

        if frontier.kind == "ident_prefix":
            # A trailing whitespace finalizes the identifier, so candidate
            # completion is skipped and its current type is queried directly.
            tail = expr_prefix[frontier.end :]
            if tail and not tail.strip():
                add(frontier.start, frontier.end)

    return tuple(sorted(spans))


class TypeScriptFrontierTypeOracle(FrontierTypeOracle):
    """Best-effort TypeScript-backed oracle for fixed fragments and frontiers."""

    def __init__(
        self,
        ts_api,
        code_before_expr: str = "",
        check_call_excess: bool = True,
        span_snapshot=None,
    ):
        self.ts = ts_api
        self.code_before_expr = code_before_expr
        self.check_call_excess = check_call_excess
        self.span_snapshot = span_snapshot

    def _snapshot_type_of_expr(self, expr_text: str, completed: bool) -> Optional[TypeLookup]:
        snapshot = self.span_snapshot
        if not snapshot or not expr_text:
            return None
        source = snapshot.get("source") or ""
        start = len(self.code_before_expr)
        end = start + len(expr_text)
        if end > len(source) or source[start:end] != expr_text:
            return None
        type_text = snapshot.get("types", {}).get((start, end))
        if not type_text:
            return None

        if "flat_diagnostics" not in snapshot:
            snapshot["flat_diagnostics"] = _flatten_diagnostics(
                snapshot.get("diagnostics", {})
            )
        diagnostics = snapshot["flat_diagnostics"]
        if completed:
            diagnostics = _diagnostics_starting_in_span(diagnostics, start, end)
            reason = "span-batch; completed-local-diagnostics"
        else:
            diagnostics = _diagnostics_overlapping_span(diagnostics, start, end)
            reason = "span-batch"
        # A diagnostic from the full incomplete program can belong to an outer
        # expression while starting on this child (for example an assignment
        # error reported on its LHS). The legacy fragment probe is the source of
        # truth for diagnostic attribution, so retain the batched type only for
        # clean spans and fall back whenever attribution is ambiguous.
        if diagnostics:
            return None
        return TypeLookup(type_text, (), reason=reason)

    def type_of_expr(self, expr_text: str) -> TypeLookup:
        if not expr_text:
            return TypeLookup(None, reason="empty-expression")
        snapshot_lookup = self._snapshot_type_of_expr(expr_text, completed=False)
        if snapshot_lookup is not None:
            return snapshot_lookup
        expr_text = _wrap_leading_regex(expr_text)
        with self.ts.probe_tag("typeof"):
            data, closure = self.ts.inspect_frontier_probe(
                self.code_before_expr,
                expr_text,
                prefer_syntactic_clean=False,
            )
        diagnostics = _flatten_diagnostics(data.get("diagnostics", {}))
        diagnostics = _diagnostics_overlapping_span(
            diagnostics,
            len(self.code_before_expr),
            len(self.code_before_expr) + len(expr_text),
        )
        reason = "closure=%r" % closure
        return TypeLookup(data.get("currentType"), tuple(diagnostics), reason=reason)

    def completed_type_of_expr(self, expr_text: str) -> TypeLookup:
        """Return a reduced expr's type without blaming parent-context errors.

        The completion probe may add a synthetic closure after ``expr_text``.
        That can create diagnostics in the parent expression that merely overlap
        the completed child span, such as ``number === Set`` before a following
        ``.size`` is generated.  For a reduced child expr, keep diagnostics that
        start inside the child expression; outer diagnostics are checked when the
        outer expr itself completes.
        """

        if not expr_text:
            return TypeLookup(None, reason="empty-expression")
        snapshot_lookup = self._snapshot_type_of_expr(expr_text, completed=True)
        if snapshot_lookup is not None:
            return snapshot_lookup
        expr_text = _wrap_leading_regex(expr_text)
        with self.ts.probe_tag("completed"):
            data, closure = self.ts.inspect_frontier_probe(
                self.code_before_expr,
                expr_text,
                prefer_syntactic_clean=False,
            )
        diagnostics = _flatten_diagnostics(data.get("diagnostics", {}))
        diagnostics = _diagnostics_starting_in_span(
            diagnostics,
            len(self.code_before_expr),
            len(self.code_before_expr) + len(expr_text),
        )
        reason = "closure=%r; completed-local-diagnostics" % closure
        return TypeLookup(data.get("currentType"), tuple(diagnostics), reason=reason)

    def actual_type_of_expr(self, expr_text: str) -> TypeLookup:
        """Return the expression's actual type for partial frontier plumbing.

        Closure probes are useful for recovering a currentType from incomplete
        code, but their semantic diagnostics can describe the parent context that
        the closure invented.  For fixed sub-parts such as a binary LHS we keep
        only diagnostics that still exist after masking the whole expression as
        any, plus stable excess-argument errors.
        """

        lookup = self.type_of_expr(expr_text)
        if not lookup.type_text or not lookup.diagnostics:
            return lookup

        masked_fragment = _mask_expr_as_any(expr_text)
        if masked_fragment == expr_text:
            return lookup

        with self.ts.probe_tag("actual-masked"):
            data, closure = self.ts.inspect_frontier_probe(
                self.code_before_expr,
                masked_fragment,
                prefer_syntactic_clean=False,
            )
        masked_diagnostics = _flatten_diagnostics(data.get("diagnostics", {}))
        masked_diagnostics = _diagnostics_overlapping_span(
            masked_diagnostics,
            len(self.code_before_expr),
            len(self.code_before_expr) + len(masked_fragment),
        )
        hard_diagnostics = _partial_actual_hard_diagnostics(
            lookup.diagnostics,
            masked_diagnostics,
        )
        # Same attribution rule as completed_type_of_expr: only diagnostics
        # that START in the probed expr span are the expr's own; one that
        # starts in the committed text blames the still-open PARENT context
        # (e.g. 2367 no-overlap on an incomplete `===` whose RHS is exactly
        # the expr being probed -- the mask keeps it because masking the
        # fragment cannot fix the parent; observed false-reject mbpp/438).
        # The parent is checked when its own expr completes. Excess-argument
        # 2554 stays unconditional.
        hard_diagnostics = tuple(
            item
            for item in hard_diagnostics
            if item.get("code") == 2554
            or not _diag_start_before(item, len(self.code_before_expr))
        )
        reason = "%s; actual_mask_closure=%r" % (lookup.reason, closure)
        if hard_diagnostics:
            return TypeLookup(None, tuple(hard_diagnostics), reason=reason)
        return TypeLookup(lookup.type_text, (), reason=reason)

    def candidates_for_frontier(
        self,
        frontier: Frontier,
        expr_prefix: str,
    ) -> Iterable[TypedCandidate]:
        if frontier.kind == "literal":
            literal_type = frontier.literal_type or _literal_prefix_type(frontier.text)
            if literal_type is not None:
                yield TypedCandidate(
                    frontier.text,
                    literal_type,
                    "literal_prefix",
                )
            return

        if frontier.kind == "complete_expr":
            # This is still a partial frontier leaf, not a reduced expr@TYPE
            # boundary.  Query its actual local type and let the surrounding
            # frames decide whether it can flow to the contextual type.
            if frontier.base_kind == "call":
                yield from self._call_base_candidates(frontier, expr_prefix)
                return
            if frontier.base_kind == "member":
                yield from self._member_base_candidates(frontier, expr_prefix)
                return
            if frontier.base_kind == "index":
                yield from self._index_base_candidates(frontier, expr_prefix)
                return

            literal_type = frontier.literal_type or _literal_prefix_type(frontier.text)
            if literal_type is not None:
                yield TypedCandidate(
                    frontier.text,
                    literal_type,
                    "literal_prefix",
                )

            oracle = self
            if frontier.start > 0:
                oracle = TypeScriptFrontierTypeOracle(
                    self.ts,
                    self.code_before_expr + expr_prefix[: frontier.start],
                    check_call_excess=self.check_call_excess,
                    span_snapshot=self.span_snapshot,
                )
            lookup = oracle.actual_type_of_expr(frontier.text)
            if lookup.ok:
                yield TypedCandidate(frontier.text, lookup.type_text, "complete_expr")
            return

        completion_context_start = frontier.start
        if frontier.prefix_operator == "new" and frontier.prefix_start is not None:
            completion_context_start = frontier.prefix_start
        code_at_frontier = self.code_before_expr + expr_prefix[:completion_context_start]

        if frontier.kind == "type_prefix":
            # TYPE position after `as` (user design): the asserted type is NOT a
            # reachability concern. @TBOUND already enforces "a type position
            # needs a type name" at the name level, and the type is freely
            # extendable (`| U` union, `[]` array), so its overlap-with-lhs (2352)
            # and assignability are left to the cast's REDUCE. Accept it here
            # unconditionally -- this also removes the premature reject of valid
            # unions (`5 as string | number`, where `string` alone did not
            # overlap number but the completed union does).
            yield TypedCandidate(frontier.text or "any", "any", "type_name")
            return

        if frontier.kind in {"ident_prefix", "empty_expr"}:
            prefix = frontier.prefix if frontier.kind == "ident_prefix" else ""
            if frontier.kind == "ident_prefix":
                tail = expr_prefix[frontier.end:]
                if tail and not tail.strip():
                    # The ident is FINALIZED by trailing whitespace -- it can no
                    # longer grow, so do NOT fill completions; its own completed
                    # type decides (user design: "if the last terminal is WS, query
                    # the current type without filling"). A name-resolution error (2304/2552/2593/
                    # 2448) makes the lookup not-ok -> zero candidates -> reject,
                    # which also steers the model back to growing the ident
                    # instead of committing a dead `test ` prefix.
                    oracle = self._oracle_at_frontier(frontier, expr_prefix)
                    lookup = oracle.actual_type_of_expr(frontier.text)
                    if lookup.ok:
                        yield TypedCandidate(
                            frontier.text, lookup.type_text, "complete_expr")
                    return
            keyword_literal = _keyword_literal_prefix_completion(prefix)
            if keyword_literal is not None:
                literal_text, literal_type = keyword_literal
                yield TypedCandidate(literal_text, literal_type, "literal_prefix")
            # SELF-REFERENCE candidate filter (user design "when filling and checking candidates,
            # exclude self-references"): the const/let being DECLARED shows up in
            # its own initializer's completions looking perfectly normal --
            # completion metadata cannot reveal it. So EVERY filled candidate is
            # probed once (completed type + diagnostics) and dropped when the
            # probe reports 2448 (TDZ) / 7022 (own-initializer implicit any).
            # Deferred contexts (`const f = () => ... f`) probe clean and are
            # kept, so recursion via a function body still works.
            yielded = set()
            self_ref_probed = {}
            for suggestion_code in _completion_codes_for_frontier(
                self.code_before_expr,
                expr_prefix,
                completion_context_start,
                code_at_frontier,
            ):
                for item in self.ts.iter_typed_variable_suggestions(suggestion_code, prefix=prefix):
                    name = item.get("name")
                    typ = item.get("type")
                    if not name:
                        continue
                    if name not in self_ref_probed:
                        self_ref_probed[name] = self._self_ref_completion_blocked(
                            frontier, expr_prefix, name)
                    if self_ref_probed[name]:
                        continue
                    source = item.get("kind") or "completion"
                    if frontier.prefix_operator == "new" and source == "class":
                        typ = name
                        source = "class_constructor"
                    if not typ:
                        continue
                    key = (name, typ, source)
                    if key in yielded:
                        continue
                    yielded.add(key)
                    yield TypedCandidate(name, typ, source)
            if frontier.kind == "empty_expr":
                for literal_text, literal_type in _empty_prefix_literal_seeds(
                    expr_prefix,
                    frontier.start,
                ):
                    yield TypedCandidate(literal_text, literal_type, "literal_prefix")
            return

    def _self_ref_completion_blocked(self, frontier, expr_prefix, name):
        """True iff completing ``name`` HERE is a self-reference (2448 TDZ /
        7022 own-initializer implicit-any) -- probed on the actual context so a
        DEFERRED reference (`const f = () => ... f`, legal recursion) stays
        usable while the direct `const x = ... x` candidate is dropped."""
        import os as _os
        if _os.environ.get("GENCOR_NO_SELFREF"):
            # timing ablation ONLY: skip the probe entirely (candidates are
            # never self-ref-blocked). NOT sound as a default -- mbpp/278-type
            # self-initializers would slip through.
            return False
        oracle = self._oracle_at_frontier(frontier, expr_prefix)
        with oracle.ts.probe_tag("selfref"):
            lookup = oracle.completed_type_of_expr(name)
        return any(
            (d.get("code") if isinstance(d, dict) else getattr(d, "code", None))
            in (2448, 7022)
            for d in (getattr(lookup, "diagnostics", ()) or ()))

    def _oracle_at_frontier(
        self,
        frontier: Frontier,
        expr_prefix: str,
    ) -> "TypeScriptFrontierTypeOracle":
        if frontier.prefix_operator == "new" and frontier.prefix_start is not None:
            return TypeScriptFrontierTypeOracle(
                self.ts,
                self.code_before_expr + expr_prefix[: frontier.prefix_start],
                check_call_excess=self.check_call_excess,
                span_snapshot=self.span_snapshot,
            )
        if frontier.start <= 0:
            return self
        return TypeScriptFrontierTypeOracle(
            self.ts,
            self.code_before_expr + expr_prefix[: frontier.start],
            check_call_excess=self.check_call_excess,
            span_snapshot=self.span_snapshot,
        )

    def _call_base_candidates(
        self,
        frontier: Frontier,
        expr_prefix: str,
    ) -> Iterable[TypedCandidate]:
        oracle = self._oracle_at_frontier(frontier, expr_prefix)
        text = frontier.text
        base_text = frontier.base_text or ""
        candidate_text = text
        if base_text.startswith(".") and "(" in text:
            # The terminal-path frontier drops a leading LITERAL from the base
            # (`/[a-z]/ .test(` yields base `.test` -- probing `return .test`
            # fails -> zero candidates -> the call open was false-rejected).
            # Reconstruct the full callee from the frontier text.
            base_text = text[: text.rfind("(")].rstrip()
        if frontier.prefix_operator == "new":
            if "." not in base_text:
                # direct construct frontier: `new X(` -- construct signatures.
                yield from self._new_call_base_candidates(oracle, frontier)
                return
            # A member/call CHAIN on a completed construct: `new Array(n).fill(`.
            # The `new` applies to `Array` only, but the new-excluded frontier makes
            # the whole chain the base (`Array(n).fill`) -- routing that through the
            # construct path finds no construct signature on the member's FUNCTION
            # type -> zero candidates -> the `.fill(` open was false-rejected
            # (observed live, mbpp/306). Treat it as a normal call frontier with the
            # `new` restored in the probed text (the oracle's code_before already
            # stops BEFORE the `new`).
            text = "new " + text
            base_text = "new " + base_text
            candidate_text = text

        if oracle.check_call_excess:
            with oracle.ts.probe_tag("memberbase"):
                data, _closure = oracle.ts.inspect_frontier_probe(
                    oracle.code_before_expr,
                    _wrap_leading_regex(text),
                    prefer_syntactic_clean=False,
                )
            diagnostics = _flatten_diagnostics(data.get("diagnostics", {}))
            if _has_excess_argument_count_diagnostic(diagnostics):
                return

        # The base callee (`s.includes` in `s=>s.includes(`) may reference an arrow
        # parameter bound by the header INSIDE frontier.text; that header is not in
        # oracle.code_before_expr, so type it with the header prepended (only for the
        # base lookup -- the whole-text probe above keeps the original context).
        base_oracle = oracle
        header = _arrow_header_prefix(text or "")
        if header:
            base_oracle = TypeScriptFrontierTypeOracle(
                oracle.ts,
                oracle.code_before_expr + header,
                check_call_excess=oracle.check_call_excess,
                span_snapshot=oracle.span_snapshot,
            )
        lookup = base_oracle.actual_type_of_expr(base_text)
        if not lookup.ok:
            # The frontier's base_text can be a corrupted slice of the callee
            # (e.g. `/ab+/g.test(` -- the regex flags fuse into the base) --
            # retry with the callee reconstructed from the frontier text itself.
            retry = text[: text.rfind("(")].rstrip() if "(" in text else ""
            if retry and retry != base_text:
                lookup = base_oracle.actual_type_of_expr(retry)
            if not lookup.ok:
                return
        base_type_text = (lookup.type_text or "").strip()
        # TS rule: a callee of type `any` is callable and the call result is
        # `any` (no diagnostic). call_reachable_types models only
        # FunctionPType, so `test_tup.some(` with `test_tup: any` had ZERO
        # candidates and the call open was false-rejected (mbpp/744).
        if base_type_text == "any":
            yield TypedCandidate(candidate_text, "any", "call_return")
            return
        # Built-in constructor OBJECTS are callable values with verified lib
        # return types (`Array(n)` -> any[]; Number/String/Boolean convert).
        # Their ptype is an opaque object with no call signature -> zero
        # candidates -> `concat(Array(n)...` was false-rejected (mbpp/632).
        ctor_call_return = _CTOR_VALUE_CALL_RETURNS.get(base_type_text)
        if ctor_call_return is not None:
            yield TypedCandidate(candidate_text, ctor_call_return, "call_return")
            return
        callee = _ptype(lookup.type_text)
        return_types = call_reachable_types(callee)
        if not return_types:
            return
        for return_type in return_types:
            yield TypedCandidate(
                candidate_text,
                str(return_type),
                "call_return",
            )

    def _new_call_base_candidates(
        self,
        oracle: "TypeScriptFrontierTypeOracle",
        frontier: Frontier,
    ) -> Iterable[TypedCandidate]:
        lookup = oracle.actual_type_of_expr(frontier.base_text or "")
        if lookup.ok:
            for return_type in construct_reachable_type_texts(
                lookup.type_text,
                frontier.base_text,
            ):
                yield TypedCandidate(
                    "new " + frontier.text,
                    return_type,
                    "new_call_return",
                )

    def _member_base_candidates(
        self,
        frontier: Frontier,
        expr_prefix: str,
    ) -> Iterable[TypedCandidate]:
        oracle = self._oracle_at_frontier(frontier, expr_prefix)
        prefix, prefix_start = _member_prefix_info(frontier)
        text = frontier.text
        # TS rule: member access on an `any` base is legal for ANY member name
        # and yields `any` (no diagnostic) -- same policy as the any-callee call
        # path (user rule: "always accept when the base type is any"). Completions on `any` are
        # EMPTY, so the fill below can never validate a member name; without this
        # every member growth on an any chain (`test_tuple.valueOf`) had zero
        # candidates and was false-rejected.
        base_lookup = oracle.actual_type_of_expr(frontier.base_text or "")
        if base_lookup.ok and (base_lookup.type_text or "").strip() == "any":
            yield TypedCandidate(text, "any", "member_expr")
            return
        # TS rule: a NULLABLE base (union with null/undefined) admits member
        # access only through `?.` -- a plain `.` is 18047/18048 for EVERY
        # member until narrowed (user check: "'.' is also invalid on
        # a string|null union"). The LS completion list is LENIENT (it offers the string
        # members on `string | null`), so the fill below false-accepted
        # `sn.length`. Flow-narrowed accesses are unaffected (the base lookup
        # returns the narrowed type); the ternary-true case the lookup does NOT
        # reflect is narrowed here exactly as in the index path (mbpp/725).
        if base_lookup.ok and base_lookup.type_text:
            nb = base_lookup.type_text
            if _ternary_true_narrows_base(oracle.code_before_expr, frontier.base_text or ""):
                nb = _strip_null_undefined_members(nb) or nb
            marker_seg = text[:prefix_start].rstrip()
            # _strip_null_undefined_members returns None when nothing strips --
            # i.e. non-None means the base DOES carry a null/undefined member.
            if (_strip_null_undefined_members(nb) is not None
                    and not marker_seg.endswith("?.")):
                return
        if frontier.prefix_operator == "new":
            # A member frontier on a construct chain (`new Set(xs).has`): the
            # new-excluded oracle stops BEFORE `new`, so probing the bare
            # `Set(xs).` calls the class without `new` (TS 2348) and the member
            # lookup fails -> the member name was false-rejected. Restore the
            # `new ` in the probed text (same as the call-frontier chain case).
            text = "new " + text
            prefix_start += len("new ")
        wrapped = _wrap_leading_regex(text)
        if wrapped != text:
            prefix_start += len(wrapped) - len(text)   # '(' + ')' around the regex
            text = wrapped
        member_code = oracle.code_before_expr + text[:prefix_start]
        yielded = set()
        for item in oracle.ts.iter_typed_variable_suggestions(member_code, prefix=prefix):
            name = item.get("name")
            typ = item.get("type")
            if not name or not typ:
                continue
            member_expr = text[:prefix_start] + name
            key = (member_expr, typ, item.get("kind") or "member")
            if key in yielded:
                continue
            yielded.add(key)
            yield TypedCandidate(member_expr, typ, item.get("kind") or "member")

        if prefix:
            with oracle.ts.probe_tag("memberfill"):
                data, _closure = oracle.ts.inspect_frontier_probe(
                    oracle.code_before_expr,
                    text,
                prefer_syntactic_clean=False,
            )
            type_text = data.get("currentType")
            diagnostics = _flatten_diagnostics(data.get("diagnostics", {}))
            lookup = TypeLookup(type_text, tuple(diagnostics), reason="member_expr")
            typ = _ptype(lookup.type_text)
            if lookup.ok and typ is not None:
                yield TypedCandidate(text, type_text, "member_expr")
                if isinstance(typ, FunctionPType):
                    for return_type in call_reachable_types(typ):
                        yield TypedCandidate(
                            text + "(...)",
                            str(return_type),
                            "member_call_return",
                        )

    def _index_base_candidates(
        self,
        frontier: Frontier,
        expr_prefix: str,
    ) -> Iterable[TypedCandidate]:
        oracle = self._oracle_at_frontier(frontier, expr_prefix)
        lookup = oracle.actual_type_of_expr(frontier.base_text or "")
        if not lookup.ok:
            return
        base_type_text = lookup.type_text
        # TS rule: `unknown` supports NO operation before narrowing -- indexing
        # errors 18046 for EVERY key (member/call bases already reject through
        # their own paths). But _ptype('unknown') is an AnyPType, so the
        # any_index option below wrongly opened `u[` (user check: "also reject
        # `[` on unknown"). Distinguish by the type TEXT, same as the
        # any-vs-unknown split in _expected_allows_function.
        if (base_type_text or "").strip() == "unknown":
            return
        # Ternary truthiness narrowing: when the indexed base is EXACTLY the
        # condition whose TRUE branch it sits in (`match ? match[`), TS's flow
        # analysis narrows `X | null | undefined` to `X` -- the base lookup
        # returns the un-narrowed declared type, so the very common nullable
        # match-result index access was false-rejected (mbpp/725). Only the
        # null/undefined members are dropped (exactly what truthiness proves).
        if _ternary_true_narrows_base(oracle.code_before_expr, frontier.base_text or ""):
            narrowed = _strip_null_undefined_members(base_type_text)
            if narrowed:
                base_type_text = narrowed
        base = _ptype(base_type_text)
        if base is None:
            return
        index_prefix, index_prefix_start = _index_prefix_info(frontier.text)
        options = _index_access_options(base)
        options = _index_options_allowed_by_prefix(
            self,
            base,
            options,
            frontier,
            expr_prefix,
            index_prefix,
            index_prefix_start,
        )
        for option in options:
            yield TypedCandidate(
                frontier.text + "]",
                option.result_type,
                option.source,
            )


def _index_access_options(base: Optional[PType]) -> Tuple[IndexAccessOption, ...]:
    if base is None:
        return ()
    if type(base) is AnyPType:
        # TS rule: indexing an `any` value with ANY key is allowed and yields
        # `any` (no diagnostic). Returning zero options false-rejected the `[`
        # after an `any`-typed base (observed mbpp/725: the incomplete-ternary
        # closure probe recovers the base as `any`). Exact-type check:
        # TypeParameterPType subclasses AnyPType and its indexability is not a
        # TS rule.
        return (
            IndexAccessOption(("number", "string"), "any", "any_index"),
        )
    if isinstance(base, AnyPType):
        return ()

    if isinstance(base, ArrayPType):
        if isinstance(base.element_type, GenericPType):
            return ()
        return (
            IndexAccessOption(("number",), str(base.element_type), "array_index"),
        )

    if isinstance(base, TuplePType):
        return tuple(
            IndexAccessOption(("number",), str(element), "tuple_index")
            for element in base.types
        )

    if isinstance(base, StringPType):
        return (
            IndexAccessOption(("number",), "string", "string_index"),
        )

    if isinstance(base, IndexSignaturePType):
        key_types = _index_signature_key_type_names(base.key_type)
        if not key_types:
            return ()
        return (
            IndexAccessOption(key_types, str(base.value_type), "index_signature"),
        )

    if isinstance(base, UnionPType):
        option_groups = [
            _index_access_options(part)
            for part in base.types
        ]
        if not option_groups or any(not group for group in option_groups):
            return ()

        common_key_types = set(option_groups[0][0].key_types)
        for group in option_groups[1:]:
            group_keys = set().union(*(option.key_types for option in group))
            common_key_types &= group_keys
        if not common_key_types:
            return ()

        result_types = computed_member_access_reachable_types(base)
        return tuple(
            IndexAccessOption(
                tuple(sorted(common_key_types)),
                str(result_type),
                "union_index",
            )
            for result_type in result_types
        )

    return ()


def _index_signature_key_type_names(key_type: PType) -> Tuple[str, ...]:
    if isinstance(key_type, AnyPType) or isinstance(key_type, GenericPType):
        return ("number", "string")
    if isinstance(key_type, StringPType):
        # JavaScript coerces numeric property keys to strings, and TypeScript
        # accepts numeric indexing through a string index signature.
        return ("number", "string")
    if isinstance(key_type, NumberPType):
        return ("number",)
    if isinstance(key_type, UnionPType):
        names = []
        for part in key_type.types:
            names.extend(_index_signature_key_type_names(part))
        return _unique_sorted(names)
    return ()


def _index_options_allowed_by_prefix(
    oracle: TypeScriptFrontierTypeOracle,
    base: PType,
    options: Sequence[IndexAccessOption],
    frontier: Frontier,
    expr_prefix: str,
    index_prefix: str,
    index_prefix_start: int,
) -> Tuple[IndexAccessOption, ...]:
    if not index_prefix.strip():
        return tuple(options)

    property_options = _string_literal_property_index_options(base, options, index_prefix)
    if property_options:
        return property_options

    key_start = frontier.start + index_prefix_start
    code_before_key = oracle.code_before_expr + expr_prefix[:key_start]
    allowed = []
    for option in options:
        if _index_prefix_reaches_key_types(
            oracle.ts,
            code_before_key,
            index_prefix,
            option.key_types,
        ):
            allowed.append(option)
    return tuple(_dedupe_index_options(allowed))


def _index_prefix_reaches_key_types(
    ts_api,
    code_before_key: str,
    index_prefix: str,
    key_types: Sequence[str],
) -> bool:
    if not key_types:
        return False

    checker = PartialExprTypeReachability(
        TypeScriptFrontierTypeOracle(ts_api, code_before_key)
    )
    for key_type in key_types:
        result = checker.check(
            index_prefix,
            expected_type=key_type,
        )
        if result.frontier_goal is None:
            reachable_types = result.final_types
        else:
            reachable_types = tuple(
                typ
                for typ in result.final_types
                if result.frontier_goal.accepts(typ)
            )
        if reachable_types:
            return True
    return False


def _string_literal_property_index_options(
    base: PType,
    index_options: Sequence[IndexAccessOption],
    index_prefix: str,
) -> Tuple[IndexAccessOption, ...]:
    key = _bare_string_literal_key_prefix(index_prefix)
    if key is None:
        return ()

    key_prefix, closed = key
    options = []

    for option in index_options:
        if "string" in option.key_types:
            options.append(option)
        elif "number" in option.key_types and _numeric_string_key_possible(key_prefix, closed):
            options.append(option)

    if not isinstance(base, AnyPType):
        for name, (attr_type, _is_method) in sorted(base.attributes.items()):
            if closed:
                if name != key_prefix:
                    continue
            elif not name.startswith(key_prefix):
                continue
            options.append(
                IndexAccessOption(
                    ("string",),
                    str(attr_type),
                    "string_property_index",
                )
            )

    return tuple(_dedupe_index_options(options))


def _bare_string_literal_key_prefix(index_prefix: str) -> Optional[Tuple[str, bool]]:
    stripped = index_prefix.lstrip()
    if not stripped or stripped[0] not in {"'", '"'}:
        return None

    quote = stripped[0]
    chars = []
    escaped = False
    for idx, char in enumerate(stripped[1:], start=1):
        if escaped:
            chars.append(char)
            escaped = False
            continue
        if char == "\\":
            escaped = True
            continue
        if char == quote:
            if stripped[idx + 1 :].strip():
                return None
            return "".join(chars), True
        chars.append(char)

    return "".join(chars), False


def _numeric_string_key_possible(key_prefix: str, closed: bool) -> bool:
    if not key_prefix:
        return not closed
    if closed:
        return bool(re.fullmatch(r"\d+", key_prefix))
    return bool(re.fullmatch(r"\d*", key_prefix))


def _literal_prefix_type(text: str) -> Optional[str]:
    """Return the type for a single literal prefix that TS cannot inspect yet."""

    stripped = (text or "").strip()
    if not stripped:
        return None
    if stripped.startswith("["):
        return "any[]"
    if stripped == "null":
        return "null"
    if stripped == "undefined":
        return "undefined"
    if stripped in {"true", "false"}:
        return "boolean"
    if _regex_literal_prefix(stripped):
        return "RegExp"
    if _single_quoted_string_literal_prefix(stripped):
        return "string"
    numeric_type = _numeric_literal_prefix_type(stripped)
    if numeric_type is not None:
        return numeric_type
    return None


def _keyword_literal_prefix_completion(text: str) -> Optional[Tuple[str, str]]:
    stripped = (text or "").strip()
    if not stripped:
        return None
    if "true".startswith(stripped):
        return "true", "boolean"
    if "false".startswith(stripped):
        return "false", "boolean"
    if "null".startswith(stripped):
        return "null", "null"
    if "undefined".startswith(stripped):
        return "undefined", "undefined"
    return None


def _completion_codes_for_frontier(
    code_before_expr: str,
    expr_prefix: str,
    frontier_start: int,
    default_code: str,
) -> Tuple[str, ...]:
    codes = [default_code]
    alternate = _completion_code_before_trailing_prefix_operator(
        code_before_expr,
        expr_prefix,
        frontier_start,
    )
    if alternate is not None and alternate not in codes:
        codes.append(alternate)
    return tuple(codes)


def _completion_code_before_trailing_prefix_operator(
    code_before_expr: str,
    expr_prefix: str,
    frontier_start: int,
) -> Optional[str]:
    context = expr_prefix[:frontier_start]
    stripped = context.rstrip()
    if not stripped or stripped[-1] not in _PREFIX_OPERATOR_CHARS:
        return None

    op_pos = len(stripped) - 1
    before = stripped[:op_pos]
    idx = len(before) - 1
    while idx >= 0 and before[idx].isspace():
        idx -= 1
    if idx >= 0 and before[idx] not in _PREFIX_CONTEXT_SEPARATORS:
        return None
    return code_before_expr + before


def _empty_prefix_literal_seeds(
    expr_prefix: str,
    frontier_start: int,
) -> Tuple[Tuple[str, str], ...]:
    op = _trailing_prefix_operator(expr_prefix, frontier_start)
    if op in {"+", "-"}:
        return (("0", "number"), ("0n", "bigint"))
    if op == "~":
        return (("0", "number"), ("0n", "bigint"))
    if op == "!":
        return (("true", "boolean"),)
    return ()


def _trailing_prefix_operator(
    expr_prefix: str,
    frontier_start: int,
) -> Optional[str]:
    context = expr_prefix[:frontier_start]
    stripped = context.rstrip()
    if not stripped:
        return None
    op = stripped[-1]
    if op not in _PREFIX_OPERATOR_CHARS:
        return None
    before = stripped[:-1]
    idx = len(before) - 1
    while idx >= 0 and before[idx].isspace():
        idx -= 1
    if idx >= 0 and before[idx] not in _PREFIX_CONTEXT_SEPARATORS:
        return None
    return op


def _single_quoted_string_literal_prefix(text: str) -> bool:
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


def _regex_literal_prefix(text: str) -> bool:
    return len(text) >= 2 and text[0] == "/" and "/" in text[1:]


def _numeric_literal_prefix_type(text: str) -> Optional[str]:
    if not _NUMERIC_LITERAL_PREFIX_RE.fullmatch(text):
        return None
    if text.endswith("n"):
        if "." in text or "e" in text.lower():
            return None
        return "bigint"
    return "number"


def _index_prefix_info(frontier_text: str) -> Tuple[str, int]:
    open_idx = _last_unclosed_bracket_index(frontier_text)
    if open_idx is None:
        return "", len(frontier_text)
    return frontier_text[open_idx + 1 :], open_idx + 1


def _member_prefix_info(frontier: Frontier) -> Tuple[str, int]:
    if frontier.base_end is None:
        return "", len(frontier.text)

    suffix_start = max(0, frontier.base_end - frontier.start)
    suffix = frontier.text[suffix_start:]
    if suffix.startswith("?."):
        prefix_start = suffix_start + 2
        return frontier.text[prefix_start:], prefix_start
    if suffix.startswith("."):
        prefix_start = suffix_start + 1
        return frontier.text[prefix_start:], prefix_start

    optional_dot = frontier.text.rfind("?.")
    plain_dot = frontier.text.rfind(".")
    if optional_dot >= plain_dot and optional_dot >= 0:
        prefix_start = optional_dot + 2
        return frontier.text[prefix_start:], prefix_start
    if plain_dot >= 0:
        prefix_start = plain_dot + 1
        return frontier.text[prefix_start:], prefix_start
    return "", len(frontier.text)


def _last_unclosed_bracket_index(text: str) -> Optional[int]:
    stack = []
    quote = ""
    escaped = False
    for idx, char in enumerate(text):
        if quote:
            if escaped:
                escaped = False
            elif char == "\\":
                escaped = True
            elif char == quote:
                quote = ""
            continue

        if char in {"'", '"', "`"}:
            quote = char
        elif char == "[":
            stack.append(idx)
        elif char == "]" and stack:
            stack.pop()

    return stack[-1] if stack else None


def _dedupe_index_options(
    options: Iterable[IndexAccessOption],
) -> List[IndexAccessOption]:
    seen = set()
    result = []
    for option in options:
        key = (option.key_types, option.result_type, option.source)
        if key in seen:
            continue
        seen.add(key)
        result.append(option)
    return result


class PartialExprTypeReachability:
    """Compute possible whole-expression types for a partial expression prefix."""

    def __init__(
        self,
        oracle: FrontierTypeOracle,
        frontier_extension_steps: int = 1,
        goal_extension_steps: int = 2,
    ):
        self.oracle = oracle
        self.frontier_extension_steps = max(0, frontier_extension_steps)
        self.goal_extension_steps = max(0, goal_extension_steps)

    def check(
        self,
        expr_prefix: str,
        expected_type: Optional[str] = None,
        accepts_any_goal: bool = False,
        terminals: Optional[Sequence[ExprTerminal]] = None,
    ) -> ReachabilityResult:
        _ts = getattr(self.oracle, "ts", None)
        _t0 = time.perf_counter()
        chains = extract_frontier_chains(expr_prefix, terminals)
        if _ts is not None:
            _ts.frontier_time += time.perf_counter() - _t0
            _ts.frontier_count += 1
        if not chains:
            error = ReachabilityError("no-frontier-chain", expr_prefix)
            return ReachabilityResult(
                False,
                (),
                (),
                (),
                (error,),
                expected_type,
            )

        all_candidates = []
        all_states = []
        all_errors = []
        all_frontier_goal_steps = []
        frontier_goal = None

        for chain in chains:
            result = self._check_chain(
                chain,
                expr_prefix,
                expected_type,
                accepts_any_goal,
            )
            all_candidates.extend(result.frontier_candidates)
            all_states.extend(result.states)
            all_errors.extend(result.errors)
            all_frontier_goal_steps.extend(result.frontier_goal_steps)
            frontier_goal = frontier_goal or result.frontier_goal

        final_states = _dedupe_states(all_states)
        final_types = _unique_sorted(state.type_text for state in final_states)
        return ReachabilityResult(
            bool(final_states),
            final_types,
            tuple(_dedupe_candidates(all_candidates)),
            tuple(final_states),
            tuple(all_errors),
            expected_type,
            frontier_goal,
            tuple(all_frontier_goal_steps),
        )

    def _check_chain(
        self,
        chain: FrontierChain,
        expr_prefix: str,
        expected_type: Optional[str],
        accepts_any_goal: bool,
    ) -> ReachabilityResult:
        errors = []
        frontier_goal = None
        frontier_goal_steps = ()
        if accepts_any_goal:
            frontier_goal, goal_errors, frontier_goal_steps = self._any_frontier_goal(
                chain,
                expr_prefix,
            )
            errors.extend(goal_errors)
        elif expected_type:
            frontier_goal, goal_errors, frontier_goal_steps = self._frontier_goal(
                chain,
                expr_prefix,
                expected_type,
            )
            errors.extend(goal_errors)
        if accepts_any_goal or expected_type:
            if frontier_goal is None:
                return ReachabilityResult(
                    False,
                    (),
                    (),
                    (),
                    tuple(errors),
                    expected_type,
                    frontier_goal,
                    frontier_goal_steps,
                )
            frontier_goal = frontier_goal.with_postfix_steps(self.goal_extension_steps)
            frontier_goal_steps = _with_leaf_goal(
                frontier_goal_steps,
                frontier_goal,
            )

        raw_candidates = tuple(self.oracle.candidates_for_frontier(chain.frontier, expr_prefix))
        candidate_goal = frontier_goal
        raw_candidates = _seed_generic_return_candidates(raw_candidates, candidate_goal)
        # FINAL leaf reachability (user-scoped fix): keep the goal-inversion above
        # as-is, but decide "can this candidate's current type reach the (inverted)
        # expected type" with TCG's faithful deep reachable() BFS -- same pruning,
        # default depth 5 -- instead of the shallow ~2-step _expand_frontier_candidates.
        # reachable() covers member(p.x)/index(p[])/call(p()) + operators, so this is
        # a faithful superset of the old expansion's coverage at greater depth.
        # The extension-operator FLOOR comes from the innermost operator frame:
        # under `lhs op ▢` only tighter-binding operators extend the fragment.
        leaf_min_prec = _leaf_min_operator_prec(chain)
        _ts = getattr(self.oracle, "ts", None)
        _t0 = time.perf_counter()
        candidates = tuple(
            candidate
            for candidate in raw_candidates
            if _goal_reachable_deep(candidate_goal, candidate.type_text, leaf_min_prec)
            # `as` overlap (user design): under an `x as T` frame the asserted
            # type T (the candidate here -- as_rhs carries no extension steps) is
            # the whole expression's type, so it must OVERLAP the fixed lhs (TS
            # 2352). _goal_reachable_deep only knows target-type reachability, not
            # this per-candidate overlap, so apply it here -- otherwise the active
            # frontier accepts `"s" as number` (string vs number, no overlap) and
            # the reject falls to the reduce a token late (type-s0 HumanEval/81:
            # `"..." as a...` grew unchecked to timeout).
            and (candidate_goal is None or candidate_goal.as_lhs_type is None
                 or _types_overlap(candidate_goal.as_lhs_type, candidate.type_text))
        )
        if _ts is not None:
            _ts.reachability_time += time.perf_counter() - _t0
            _ts.reachability_count += 1
        if not candidates:
            errors.append(ReachabilityError("no-frontier-candidates", chain.frontier.kind))

        states = tuple(
            ReachabilityState(candidate.text, candidate.type_text, candidate.source)
            for candidate in candidates
            if _ptype(candidate.type_text) is not None
        )

        for candidate in candidates:
            if _ptype(candidate.type_text) is None:
                errors.append(
                    ReachabilityError(
                        "unsupported-frontier-type",
                        "%s: %s" % (candidate.text, candidate.type_text),
                    )
                )

        final_types = _unique_sorted(state.type_text for state in states)
        return ReachabilityResult(
            bool(states),
            final_types,
            candidates,
            states,
            tuple(errors),
            expected_type,
            frontier_goal,
            frontier_goal_steps,
        )

    def _frontier_goal(
        self,
        chain: FrontierChain,
        expr_prefix: str,
        expected_type: str,
    ) -> Tuple[Optional[TypeGoal], Tuple[ReachabilityError, ...], Tuple[FrontierGoalStep, ...]]:
        if _ptype(expected_type) is None:
            return None, (ReachabilityError("unsupported-expected-type", expected_type),), ()

        goal = _goal_with_conditional_escape(TypeGoal((expected_type,), 0))
        errors = []
        goal_steps = []
        active_frontiers = list(reversed(active_frontiers_for_chain(expr_prefix, chain)))
        for frame in reversed(chain.frames):
            goal, frame_errors = self._inverse_frame_goal(frame, goal)
            errors.extend(frame_errors)
            if goal is None or (not goal.target_types and not goal.accepts_any):
                return None, tuple(errors), ()

        for frontier in active_frontiers:
            frontier_goal, frame_errors = self._goal_after_outer_frames(
                frontier.outer_frames,
                expected_type,
            )
            if frontier_goal is None:
                continue
            if frontier.postfix_after_close:
                frontier_goal = frontier_goal.with_postfix_steps(
                    self.goal_extension_steps
                )
            goal_steps.append(FrontierGoalStep(frontier, frontier_goal))

        return goal, tuple(errors), tuple(goal_steps)

    def _any_frontier_goal(
        self,
        chain: FrontierChain,
        expr_prefix: str,
    ) -> Tuple[Optional[TypeGoal], Tuple[ReachabilityError, ...], Tuple[FrontierGoalStep, ...]]:
        goal = _any_valid_goal()
        errors = []
        goal_steps = []
        active_frontiers = list(reversed(active_frontiers_for_chain(expr_prefix, chain)))
        for frame in reversed(chain.frames):
            goal, frame_errors = self._inverse_frame_goal(frame, goal)
            errors.extend(frame_errors)
            if goal is None or (not goal.target_types and not goal.accepts_any):
                return None, tuple(errors), ()

        for frontier in active_frontiers:
            frontier_goal, frame_errors = self._any_goal_after_outer_frames(frontier.outer_frames)
            errors.extend(frame_errors)
            if frontier_goal is None:
                continue
            if frontier.postfix_after_close:
                frontier_goal = frontier_goal.with_postfix_steps(
                    self.goal_extension_steps
                )
            goal_steps.append(FrontierGoalStep(frontier, frontier_goal))

        return goal, tuple(errors), tuple(goal_steps)

    def _any_goal_after_outer_frames(
        self,
        outer_frames: Sequence[FrontierFrame],
    ) -> Tuple[Optional[TypeGoal], Tuple[ReachabilityError, ...]]:
        goal = _any_valid_goal()
        errors = []
        for frame in reversed(outer_frames):
            goal, frame_errors = self._inverse_frame_goal(frame, goal)
            errors.extend(frame_errors)
            if goal is None or (not goal.target_types and not goal.accepts_any):
                return None, tuple(errors)
        return goal, tuple(errors)

    def _goal_after_outer_frames(
        self,
        outer_frames: Sequence[FrontierFrame],
        expected_type: str,
    ) -> Tuple[Optional[TypeGoal], Tuple[ReachabilityError, ...]]:
        goal = _goal_with_conditional_escape(TypeGoal((expected_type,), 0))
        errors = []
        for frame in reversed(outer_frames):
            goal, frame_errors = self._inverse_frame_goal(frame, goal)
            errors.extend(frame_errors)
            if goal is None or (not goal.target_types and not goal.accepts_any):
                return None, tuple(errors)
        return goal, tuple(errors)

    def _inverse_frame_goal(
        self,
        frame: FrontierFrame,
        parent_goal: TypeGoal,
    ) -> Tuple[Optional[TypeGoal], Tuple[ReachabilityError, ...]]:
        if frame.kind == "group":
            return _goal_with_conditional_escape(
                parent_goal.with_postfix_steps(self.goal_extension_steps)
            ), ()

        if frame.kind == "assignment_rhs":
            lookup = self._fixed_type(frame.lhs_text)
            if not lookup.ok:
                return None, (
                    ReachabilityError(
                        "fixed-assignment-lhs-type-error",
                        frame.lhs_text or "",
                        frame=frame,
                    ),
                )
            if not parent_goal.accepts(lookup.type_text):
                return None, (
                    ReachabilityError(
                        "assignment-result-cannot-reach-goal",
                        "%s -> %s"
                        % (lookup.type_text, "|".join(parent_goal.target_types)),
                        frame=frame,
                    ),
                )
            # Keep the ternary escape on the RHS goal, exactly as the
            # top-level and group goal paths do: the RHS of `=` is an
            # AssignmentExpression position where a later `?` binds the whole
            # current partial expr as a CONDITION (`dp[i][j] = (i-j) > 2 ?
            # ... : ...` -- the `>` was false-rejected because the derived
            # goal dropped the escape; observed sem_none mbpp/247). The exact
            # expected-type check still happens at the assignment's REDUCE.
            return _goal_with_conditional_escape(
                _derived_goal((lookup.type_text,), parent_goal)
            ), ()

        if frame.kind == "as_rhs":
            # user design: `as` -- look at the LHS only. The asserted TYPE (the
            # leaf) is NOT a reachability concern: its NAME is @TBOUND's job and
            # its overlap/assignability is the cast's REDUCE (the type is freely
            # extendable -- `| U` / `[]` -- so nothing to decide mid-type). What
            # DOES get checked is the LHS: it must type (R55 discipline) AND its
            # type must REACH the expected. Reachability is used, not direct
            # assignability, because `as` is lowest-precedence so the cast may
            # still extend toward the goal (`5 as number + ""`); blocking `number`
            # outright would FR that. A lhs that cannot reach the expected AT ALL
            # is dead and rejected here at the split; exact assignability
            # (`5 as number` alone vs string -> 2322) is the reduce's backstop.
            # When split by a NON-`as` operator instead, the whole cast becomes
            # that operator's lhs_text and is typed there
            # (`_binary_lhs_type('5 as number')` -> number).
            lookup = self._fixed_type(frame.lhs_text)
            if not lookup.ok:
                return None, (
                    ReachabilityError(
                        "fixed-as-lhs-type-error",
                        frame.lhs_text or "",
                        frame=frame,
                    ),
                )
            # Same extension rule as every other leaf, with ONE narrowing that
            # the splitting operator being `as` justifies: reachability admits
            # operators binding at-or-tighter than the frame's operator. `as` is
            # the LOWEST precedence, so the FLOOR (default MIN) already admits
            # every operator -- but the CEILING must drop the postfix band
            # (member / index / call, `++`), because those cannot extend a bare
            # cast (`5 as number.foo` binds `.foo` to the type; the parenthesized
            # `(5 as number).foo` is a GROUP frame that carries the postfix
            # itself). So `5 as number` still reaches string via `+ ""` (a binary
            # extension) while a lhs that reaches the goal ONLY through a postfix
            # step -- e.g. `arr as number[]` toward number, reachable only via
            # `.length` -- is rejected here at the split instead of leaking to the
            # reduce.
            if not _goal_reachable_deep(
                parent_goal,
                lookup.type_text,
                max_operator_prec=_AS_LHS_MAX_OPERATOR_PREC,
            ):
                return None, (
                    ReachabilityError(
                        "as-lhs-cannot-reach-goal",
                        "%s -> %s"
                        % (lookup.type_text, "|".join(parent_goal.target_types)),
                        frame=frame,
                    ),
                )
            return TypeGoal((), 0, True, False, None), ()

        if frame.kind == "conditional_true":
            if frame.lhs_text is not None:
                lookup = self._condition_type(frame.lhs_text)
                if not lookup.ok:
                    return None, (
                        ReachabilityError(
                            "fixed-conditional-condition-type-error",
                            frame.lhs_text or "",
                            frame=frame,
                        ),
                    )
            return parent_goal, ()

        if frame.kind == "conditional_false":
            if frame.lhs_text is not None:
                lookup = self._condition_type(frame.lhs_text)
                if not lookup.ok:
                    return None, (
                        ReachabilityError(
                            "fixed-conditional-condition-type-error",
                            frame.lhs_text or "",
                            frame=frame,
                        ),
                    )
            true_lookup = self._fixed_type(frame.true_text)
            if not true_lookup.ok:
                return None, (
                    ReachabilityError(
                        "fixed-conditional-true-type-error",
                        frame.true_text or "",
                        frame=frame,
                    ),
                )
            # The true-branch is FINALIZED by the ':' -- nothing binds looser than
            # ':' (outside parens), so it cannot extend further (user rule: at ':'
            # no extension is possible -> assignability only). The
            # conditional_escape relaxation (accepts_any) only justifies an OPEN
            # leaf that might still become a FUTURE ternary condition; a closed
            # true-branch never will. So when a CONCRETE expected target exists,
            # check the branch STRICTLY against it (accepts_any / postfix stripped).
            # Without this, `x: never = c ? true : false` slipped past the ':'
            # (the escaped goal accepted boolean) and only the whole-statement
            # REDUCE caught it -- too late, so the model derailed (HE/115).
            true_goal = parent_goal
            if parent_goal.target_types:
                true_goal = TypeGoal(
                    parent_goal.target_types,
                    0,
                    False,
                    False,
                    parent_goal.as_lhs_type,
                )
            if not true_goal.accepts(true_lookup.type_text):
                return None, (
                    ReachabilityError(
                        "conditional-true-cannot-reach-goal",
                        "%s -> %s"
                        % (true_lookup.type_text, "|".join(parent_goal.target_types)),
                        frame=frame,
                    ),
                )
            return parent_goal, ()


        if frame.kind == "binary_rhs":
            lookup = self._binary_lhs_type(frame.lhs_text)
            if not lookup.ok:
                return None, (
                    ReachabilityError(
                        "fixed-expression-type-error",
                        frame.lhs_text or "",
                        frame=frame,
                    ),
                )
            rhs_goal = inverse_binary_rhs_type_goal(
                lookup.type_text,
                frame.op,
                parent_goal,
            )
            if rhs_goal is None or (not rhs_goal.target_types and not rhs_goal.accepts_any):
                return None, (
                    ReachabilityError(
                        "no-inverse-binary-branches",
                        "%s %s -> %s"
                        % (
                            lookup.type_text,
                            frame.op,
                            "|".join(parent_goal.target_types),
                        ),
                        frame=frame,
                    ),
                )
            return rhs_goal, ()

        if frame.kind == "prefix":
            child_types = inverse_prefix_goal(frame.op, parent_goal)
            if not child_types:
                return None, (
                    ReachabilityError(
                        "no-inverse-prefix-branches",
                        "%s -> %s" % (frame.op, "|".join(parent_goal.target_types)),
                        frame=frame,
                    ),
                )
            return _derived_goal(child_types, parent_goal), ()

        return None, (ReachabilityError("unsupported-frame", frame.kind, frame=frame),)

    def _binary_lhs_type(self, expr_text: Optional[str]) -> TypeLookup:
        lookup = self._actual_type(expr_text, missing_reason="missing-binary-lhs")
        if lookup.ok:
            return lookup
        # A NAME-RESOLUTION failure (2304/2552, the 2593 test-runner variant, or
        # a 2448 TDZ self-reference) on the fixed LHS is the ident's OWN,
        # context-independent error -- the operand can never resolve, so the
        # chain must FAIL here (user rule: "if querying the LHS type reports an error
        # reject"). The old blanket 'unknown' fallback revived an undefined
        # bare-ident LHS as a typable operand (`isFinit && ...` passed the value
        # path via `unknown && X`, hiding the 2552 until the R53 name check).
        # Non-name failures (probe artifacts) keep the fallback.
        if any((d.get("code") if isinstance(d, dict) else getattr(d, "code", None))
               in (2304, 2552, 2448, 2593)
               for d in (lookup.diagnostics or ())):
            return lookup
        if expr_text and _IDENT_TEXT_RE.fullmatch(expr_text.strip()):
            return TypeLookup("unknown", reason="unresolved-binary-lhs")
        return lookup

    def _actual_type(
        self,
        expr_text: Optional[str],
        missing_reason: str = "missing-fixed-expression",
    ) -> TypeLookup:
        if not expr_text:
            return TypeLookup(None, reason=missing_reason)
        lookup = self.oracle.actual_type_of_expr(expr_text)
        if not lookup.ok:
            return lookup
        if _ptype(lookup.type_text) is None:
            return TypeLookup(
                None,
                lookup.diagnostics,
                reason="unsupported-type: %s" % lookup.type_text,
            )
        return lookup

    def _condition_type(self, expr_text: Optional[str]) -> TypeLookup:
        if not expr_text:
            return TypeLookup(None, reason="missing-condition-expression")
        return self.oracle.type_of_expr(expr_text)

    def _fixed_type(self, expr_text: Optional[str]) -> TypeLookup:
        if not expr_text:
            return TypeLookup(None, reason="missing-fixed-expression")
        lookup = self.oracle.type_of_expr(expr_text)
        if not lookup.ok:
            return lookup
        if _ptype(lookup.type_text) is None:
            return TypeLookup(
                None,
                lookup.diagnostics,
                reason="unsupported-type: %s" % lookup.type_text,
            )
        return lookup


def _types_overlap(a_text: str, b_text: str) -> bool:
    """TS 2352 semantics: `x as T` is fine iff either side is assignable to the
    other. Unparseable side -> not our call here (no soft answer either way:
    the reduce's 2352 FATAL backstops)."""
    a, b = _ptype(a_text), _ptype(b_text)
    if a is None or b is None:
        return True
    try:
        return bool(a >= b or b >= a)
    except Exception:
        return True


def _derived_goal(
    target_types: Sequence[str],
    parent_goal: TypeGoal,
    accepts_any: bool = False,
) -> TypeGoal:
    return TypeGoal(
        tuple(target_types),
        parent_goal.postfix_steps,
        accepts_any,
        parent_goal.conditional_escape,
    )


def _any_valid_goal(postfix_steps: int = 0) -> TypeGoal:
    return TypeGoal((), postfix_steps, True, True)


def _merge_goals(*goals: Optional[TypeGoal]) -> Optional[TypeGoal]:
    live = [goal for goal in goals if goal is not None]
    if not live:
        return None
    return TypeGoal(
        _unique_sorted(
            target
            for goal in live
            for target in goal.target_types
        ),
        max(goal.postfix_steps for goal in live),
        any(goal.accepts_any for goal in live),
        any(goal.conditional_escape for goal in live),
    )


def _goal_with_conditional_escape(goal: TypeGoal) -> TypeGoal:
    """Also allow this expression to become a future ternary condition.

    A later ``?`` binds to the current whole expression, not necessarily to the
    leaf frontier.  When that is syntactically possible, the current expression
    only needs to be a valid condition; the true/false branches can later
    provide the expected type.
    """

    return _merge_goals(goal, _any_valid_goal(goal.postfix_steps))


def binary_result_types(lhs_type: str, op: Optional[str], rhs_type: str) -> Tuple[str, ...]:
    """Return result types for one concrete binary operator branch."""

    if op not in SUPPORTED_BINARY_OPERATORS:
        return ()

    lhs = _ptype(lhs_type)
    rhs = _ptype(rhs_type)
    if lhs is None or rhs is None:
        return ()

    if isinstance(lhs, UnionPType):
        return _unique_sorted(
            result
            for part in lhs.types
            for result in binary_result_types(str(part), op, rhs_type)
        )
    if isinstance(rhs, UnionPType):
        return _unique_sorted(
            result
            for part in rhs.types
            for result in binary_result_types(lhs_type, op, str(part))
        )

    if isinstance(lhs, AnyPType) or isinstance(rhs, AnyPType):
        return _any_binary_result_types(op, lhs_type, rhs_type)

    if op in COMMA_OPERATORS:
        return (rhs_type,)

    if op in ARITHMETIC_OPERATORS:
        return _arithmetic_result_types(lhs, op, rhs)

    if op in RELATIONAL_OPERATORS:
        if _same_primitive_family(lhs, rhs, (NumberPType, StringPType, BigIntPType)):
            return ("boolean",)
        return ()

    if op in EQUALITY_OPERATORS:
        return ("boolean",) if _equality_types_overlap(lhs, rhs) else ()

    if op in LOGICAL_OPERATORS:
        # Over-approximate value-sensitive logical typing as a union of possible
        # carried values.  This preserves reachability without pretending we know
        # the exact falsy/truthy literal subset.
        return _unique_sorted((str(lhs), str(rhs)))

    return ()


def inverse_binary_rhs_goal(
    lhs_type: str,
    op: Optional[str],
    parent_goal: TypeGoal,
) -> Tuple[str, ...]:
    goal = inverse_binary_rhs_type_goal(lhs_type, op, parent_goal)
    if goal is None:
        return ()
    return goal.target_types


def inverse_binary_rhs_type_goal(
    lhs_type: str,
    op: Optional[str],
    parent_goal: TypeGoal,
) -> Optional[TypeGoal]:
    if op not in SUPPORTED_BINARY_OPERATORS:
        return None

    lhs = _ptype(lhs_type)
    if lhs is None:
        return None

    if isinstance(lhs, UnionPType):
        goals = [
            goal
            for part in lhs.types
            for goal in (inverse_binary_rhs_type_goal(str(part), op, parent_goal),)
            if goal is not None
        ]
        return _merge_goals(*goals)

    if parent_goal.accepts_any:
        return _valid_binary_rhs_goal(lhs, op, parent_goal)

    if isinstance(lhs, AnyPType):
        if op in COMMA_OPERATORS:
            return _derived_goal(parent_goal.target_types, parent_goal)
        if op in EQUALITY_OPERATORS or op in RELATIONAL_OPERATORS:
            return (
                _derived_goal(("unknown",), parent_goal)
                if parent_goal.accepts("boolean")
                else None
            )
        if op in LOGICAL_OPERATORS:
            return _derived_goal(parent_goal.target_types or ("unknown",), parent_goal)
        if op in ARITHMETIC_OPERATORS:
            return _derived_goal(("unknown",), parent_goal)
        return None

    if op in ARITHMETIC_OPERATORS:
        rhs_types = []
        for candidate in binary_operator_candidates(lhs, op):
            if parent_goal.accepts(str(candidate.result_type)):
                rhs_types.append(str(candidate.rhs_type))
            # The still-open `lhs op rhs` node can itself be EXTENDED by a
            # LOWER-precedence infix operator that retypes it before the
            # parent goal applies: `result = current % base + result` is
            # number % number = number, then number + string = string --
            # legal TS (observed false-reject sem_none HumanEval/44 at the
            # `%`). Admit the candidate when its result reaches a parent
            # target through operators bounded by prec(op); the rhs leaf
            # goal itself stays exact (`n % "x"` still rejects at the
            # string), and a node CLOSED without the extension is still
            # checked at REDUCE -- no false-accept.
            elif _binary_result_extends_to_goal(
                str(candidate.result_type), op, parent_goal
            ):
                rhs_types.append(str(candidate.rhs_type))
        return _derived_goal(_unique_sorted(rhs_types), parent_goal)

    if op in COMMA_OPERATORS:
        return _derived_goal(parent_goal.target_types, parent_goal)

    if op in RELATIONAL_OPERATORS:
        if not parent_goal.accepts("boolean"):
            return None
        if isinstance(lhs, NumberPType):
            return _derived_goal(("number",), parent_goal)
        if isinstance(lhs, StringPType):
            return _derived_goal(("string",), parent_goal)
        if isinstance(lhs, BigIntPType):
            return _derived_goal(("bigint",), parent_goal)
        # TS comparability: a relational compare of two operands of the SAME
        # (mutually assignable) type is legal for arrays/objects/booleans/
        # functions alike (verified vs tsc: `number[] < number[]`, `{a} < {a}`,
        # `true < false`, `fn < fn` all clean; `number[] < 5` is 2365).
        # `ranges[mid] < ranges[left]` on a number[][] base was false-rejected
        # here (observed sem_none mbpp/304). Mixed operands still reject: the
        # rhs goal is exactly the lhs's own type.
        return _derived_goal((lhs_type,), parent_goal)

    if op in EQUALITY_OPERATORS:
        if not parent_goal.accepts("boolean"):
            return None
        return _equality_rhs_goal(lhs, parent_goal)

    if op in LOGICAL_OPERATORS:
        if parent_goal.accepts(str(lhs)):
            return _derived_goal(parent_goal.target_types, parent_goal)
        return None

    return None


def _binary_result_extends_to_goal(
    result_type: str,
    op: str,
    parent_goal: TypeGoal,
) -> bool:
    """True when the binary node's RESULT type can reach a parent target via
    infix operators of precedence <= prec(op) -- i.e. continuations that bind
    the whole `lhs op rhs` node as their left operand."""
    return _binary_result_extends_cached(
        result_type, op, tuple(parent_goal.target_types)
    )


@lru_cache(maxsize=8192)
def _binary_result_extends_cached(
    result_type: str,
    op: str,
    target_types: Tuple[str, ...],
) -> bool:
    prec = ARITHMETIC_OP_PRECEDENCE.get(op)
    if prec is None:
        return False
    result_t = _ptype(result_type)
    if result_t is None:
        return False
    for target in target_types:
        target_t = _ptype(target)
        if target_t is None:
            continue
        if _ts_type_reachable(
            result_t,
            target_t,
            MIN_OPERATOR_PRECEDENCE,
            prec,
            [],
            [],
            [],
        ):
            return True
    return False


def _valid_binary_rhs_goal(
    lhs: PType,
    op: Optional[str],
    parent_goal: TypeGoal,
) -> Optional[TypeGoal]:
    if isinstance(lhs, AnyPType):
        return _any_valid_goal(parent_goal.postfix_steps)

    if op in ARITHMETIC_OPERATORS:
        rhs_types = _unique_sorted(
            str(candidate.rhs_type)
            for candidate in binary_operator_candidates(lhs, op)
        )
        return _derived_goal(rhs_types, parent_goal)

    if op in COMMA_OPERATORS:
        return _any_valid_goal(parent_goal.postfix_steps)

    if op in RELATIONAL_OPERATORS:
        if isinstance(lhs, NumberPType):
            return _derived_goal(("number",), parent_goal)
        if isinstance(lhs, StringPType):
            return _derived_goal(("string",), parent_goal)
        if isinstance(lhs, BigIntPType):
            return _derived_goal(("bigint",), parent_goal)
        # TS comparability (same rule as the target-typed branch above):
        # SAME-type non-primitive operands compare legally, so the rhs goal
        # is the lhs's own type (mixed operands still reject downstream).
        return _derived_goal((str(lhs),), parent_goal)

    if op in EQUALITY_OPERATORS:
        if not parent_goal.accepts("boolean"):
            return None
        return _equality_rhs_goal(lhs, parent_goal)

    if op in LOGICAL_OPERATORS:
        return _any_valid_goal(parent_goal.postfix_steps)

    return None


# Keyword unary prefixes with a FIXED, non-extendable result type (see inverse_prefix_goal
# and ts_expr_frontier._KEYWORD_PREFIX_OPERATORS).
_KEYWORD_PREFIX_RESULT_TYPE = {"typeof": "string", "void": "undefined", "delete": "boolean"}


def inverse_prefix_goal(op: Optional[str], parent_goal: TypeGoal) -> Tuple[str, ...]:
    # Keyword prefixes map their operand to a FIXED result type independent of the
    # operand, so the operand can be ANYTHING ("unknown" -- every type reaches it) as
    # long as the parent goal accepts that fixed result. This lets a still-growing
    # operand be filled from scope (`typeof test_` -> `test_tuple`) instead of the whole
    # `typeof <ident>` collapsing to a complete_expr. `accepts` is the same optimistic
    # (postfix-allowing) check the other prefix ops use -- a genuine type mismatch
    # (`let n: number = typeof x`, string not assignable to number) is caught at the
    # statement REDUCE (2322), not here.
    if op in _KEYWORD_PREFIX_RESULT_TYPE:
        return ("unknown",) if parent_goal.accepts(_KEYWORD_PREFIX_RESULT_TYPE[op]) else ()
    if op == "!":
        return ("unknown",) if parent_goal.accepts("boolean") else ()
    if op == "+":
        return ("number", "string", "boolean") if parent_goal.accepts("number") else ()
    if op == "-":
        result = []
        if parent_goal.accepts("number"):
            result.append("number")
        if parent_goal.accepts("bigint"):
            result.append("bigint")
        return tuple(result)
    if op == "~":
        result = []
        if parent_goal.accepts("number"):
            result.append("number")
        if parent_goal.accepts("bigint"):
            result.append("bigint")
        return tuple(result)
    return ()


def _expand_frontier_candidates(
    candidates: Sequence[TypedCandidate],
    max_steps: int,
    goal: Optional[TypeGoal] = None,
    infix_min_precedence: Optional[int] = None,
    allow_infix_extensions: bool = True,
) -> Tuple[TypedCandidate, ...]:
    current = tuple(_dedupe_candidates(candidates))
    seen = {(candidate.text, candidate.type_text) for candidate in current}
    result = [
        candidate
        for candidate in current
        if goal is None or goal.accepts(candidate.type_text)
    ]

    for _ in range(max_steps):
        next_candidates = []
        for candidate in current:
            for extension in _one_step_frontier_extensions(
                candidate,
                goal=goal,
                infix_min_precedence=infix_min_precedence,
                allow_infix_extensions=allow_infix_extensions,
            ):
                key = (extension.text, extension.type_text)
                if key in seen:
                    continue
                seen.add(key)
                next_candidates.append(extension)
                if goal is None or goal.accepts(extension.type_text):
                    result.append(extension)
        current = tuple(next_candidates)
        if not current:
            break

    return tuple(result)


def _seed_generic_return_candidates(
    candidates: Sequence[TypedCandidate],
    goal: Optional[TypeGoal],
) -> Tuple[TypedCandidate, ...]:
    if goal is None or not goal.target_types:
        return tuple(candidates)

    seeded = list(candidates)
    for candidate in candidates:
        if not _is_generic_return_candidate(candidate):
            continue
        for target_type in goal.target_types:
            if _ptype(target_type) is None:
                continue
            seeded.append(
                TypedCandidate(
                    candidate.text,
                    target_type,
                    candidate.source + "_goal_instantiated",
                )
            )
    return tuple(_dedupe_candidates(seeded))


def _is_generic_return_candidate(candidate: TypedCandidate) -> bool:
    if candidate.source not in {
        "call_return",
        "member_call_return",
        "new_call_return",
    }:
        return False
    return _contains_type_parameter(_ptype(candidate.type_text))


def _contains_type_parameter(typ: Optional[PType]) -> bool:
    if isinstance(typ, TypeParameterPType):
        return True
    if isinstance(typ, UnionPType):
        return any(_contains_type_parameter(part) for part in typ.types)
    if isinstance(typ, ArrayPType):
        return _contains_type_parameter(typ.element_type)
    if isinstance(typ, TuplePType):
        return any(_contains_type_parameter(part) for part in typ.types)
    if isinstance(typ, FunctionPType):
        return (
            any(_contains_type_parameter(part) for part in typ.call_signature)
            or _contains_type_parameter(typ.return_type)
        )
    if isinstance(typ, IndexSignaturePType):
        return (
            _contains_type_parameter(typ.key_type)
            or _contains_type_parameter(typ.value_type)
        )
    return False


def _expand_postfix_states(
    states: Sequence[ReachabilityState],
    max_steps: int,
) -> Tuple[ReachabilityState, ...]:
    current = tuple(_dedupe_states(states))
    seen = {(state.text, state.type_text) for state in current}
    result = list(current)

    for _ in range(max_steps):
        next_states = []
        for state in current:
            candidate = TypedCandidate(state.text, state.type_text, state.source)
            for extension in _one_step_frontier_extensions(candidate):
                key = (extension.text, extension.type_text)
                if key in seen:
                    continue
                seen.add(key)
                next_state = ReachabilityState(
                    extension.text,
                    extension.type_text,
                    extension.source,
                )
                next_states.append(next_state)
                result.append(next_state)
        current = tuple(next_states)
        if not current:
            break

    return tuple(result)


def _one_step_frontier_extensions(
    candidate: TypedCandidate,
    goal: Optional[TypeGoal] = None,
    infix_min_precedence: Optional[int] = None,
    allow_infix_extensions: bool = True,
) -> Tuple[TypedCandidate, ...]:
    typ = _ptype(candidate.type_text)
    if typ is None or isinstance(typ, AnyPType):
        return ()
    if "infix_extension" in (candidate.source or ""):
        return ()

    base_text = _postfix_base_text(candidate.text, candidate.source)
    source = (candidate.source + "+frontier_extension") if candidate.source else "frontier_extension"
    extensions = []
    max_depth = typ.nesting_depth
    root_types = frozenset(typ.root_values)

    if isinstance(typ, FunctionPType) and _callable_without_args(typ):
        for result_type in call_reachable_types(typ):
            if not _productive_type_extension(result_type, max_depth, root_types):
                continue
            extensions.append(
                TypedCandidate(
                    "%s()" % base_text,
                    str(result_type),
                    source,
                )
            )

    if isinstance(typ, FunctionPType):
        return tuple(_dedupe_candidates(extensions))

    for attr_name, (member_type, _is_method) in sorted(typ.attributes.items()):
        if not _IDENT_TEXT_RE.match(attr_name):
            continue
        if not _productive_type_extension(member_type, max_depth, root_types):
            continue
        member_text = "%s.%s" % (base_text, attr_name)
        extensions.append(TypedCandidate(member_text, str(member_type), source))
        if isinstance(member_type, FunctionPType) and _callable_without_args(member_type):
            member_depth = (
                max(member_type.nesting_depth[0], max_depth[0]),
                max(member_type.nesting_depth[1], max_depth[1]),
            )
            member_roots = frozenset(member_type.root_values | root_types)
            if not _productive_type_extension(
                member_type.return_type,
                member_depth,
                member_roots,
            ):
                continue
            extensions.append(
                TypedCandidate(
                    member_text + "()",
                    str(member_type.return_type),
                    source,
                )
            )

    for result_type in computed_member_access_reachable_types(typ):
        if not _productive_type_extension(result_type, max_depth, root_types):
            continue
        extensions.append(
            TypedCandidate(
                "%s[0]" % base_text,
                str(result_type),
                source,
            )
        )

    if allow_infix_extensions:
        extensions.extend(
            _one_step_infix_extensions(candidate, typ, base_text, goal, infix_min_precedence)
        )

    return tuple(_dedupe_candidates(extensions))


def _one_step_infix_extensions(
    candidate: TypedCandidate,
    lhs: PType,
    base_text: str,
    goal: Optional[TypeGoal],
    min_precedence: Optional[int],
) -> Tuple[TypedCandidate, ...]:
    if goal is None:
        return ()
    if "infix_extension" in (candidate.source or ""):
        return ()

    source = (candidate.source + "+infix_extension") if candidate.source else "infix_extension"
    extensions = []
    lhs_type = candidate.type_text
    for op, precedence in sorted(
        INFIX_EXTENSION_PRECEDENCE.items(),
        key=lambda item: item[1],
        reverse=True,
    ):
        if min_precedence is not None and precedence <= min_precedence:
            continue

        if op == "?":
            for target_type in goal.target_types:
                if _ptype(target_type) is None:
                    continue
                extensions.append(
                    TypedCandidate(
                        "%s ? <then:%s> : <else:%s>" % (
                            base_text,
                            target_type,
                            target_type,
                        ),
                        target_type,
                        source,
                    )
                )
            continue

        for rhs_type, result_type in _infix_result_branches(lhs, lhs_type, op, goal):
            if not _goal_accepts_direct_type(goal, result_type):
                continue
            extensions.append(
                TypedCandidate(
                    "%s %s <rhs:%s>" % (base_text, op, rhs_type),
                    result_type,
                    source,
                )
            )

    return tuple(_dedupe_candidates(extensions))


def _infix_result_branches(
    lhs: PType,
    lhs_type: str,
    op: str,
    goal: TypeGoal,
) -> Tuple[Tuple[str, str], ...]:
    if op in ARITHMETIC_OPERATORS:
        return tuple(
            (str(candidate.rhs_type), str(candidate.result_type))
            for candidate in binary_operator_candidates(lhs, op)
        )

    if op in RELATIONAL_OPERATORS:
        if isinstance(lhs, NumberPType):
            return (("number", "boolean"),)
        if isinstance(lhs, StringPType):
            return (("string", "boolean"),)
        if isinstance(lhs, BigIntPType):
            return (("bigint", "boolean"),)
        return ()

    if op in EQUALITY_OPERATORS:
        if not goal.accepts("boolean"):
            return ()
        rhs_types = _equality_rhs_type_names(lhs)
        if rhs_types is None:
            rhs_types = _rhs_seed_types(goal)
        return tuple((rhs_type, "boolean") for rhs_type in rhs_types)

    result = []
    for rhs_type in _rhs_seed_types(goal):
        for result_type in binary_result_types(lhs_type, op, rhs_type):
            result.append((rhs_type, result_type))
    return tuple(_unique_pairs(result))


def _rhs_seed_types(goal: TypeGoal) -> Tuple[str, ...]:
    return _unique_sorted(
        tuple(goal.target_types)
        + ("number", "string", "boolean", "bigint")
    )


def _goal_accepts_direct_type(goal: TypeGoal, type_text: str) -> bool:
    if goal.target_types:
        return any(_type_assignable(type_text, target_type) for target_type in goal.target_types)
    return goal.accepts_any and _ptype(type_text) is not None


def _frontier_infix_min_precedence(chain: FrontierChain) -> Optional[int]:
    for frame in chain.frames:
        if frame.kind == "binary_rhs":
            return BINARY_PRECEDENCE.get(frame.op)
        if frame.kind in {
            "group",
            "conditional_true",
            "conditional_false",
            "assignment_rhs",
            "as_rhs",
        }:
            return None
    return None


def _postfix_base_text(text: str, source: Optional[str] = None) -> str:
    stripped = (text or "").strip()
    if source and source.startswith("call_return"):
        return "%s)" % (text or "").rstrip()
    if _IDENT_TEXT_RE.match(stripped):
        return stripped
    if stripped.endswith((")", "]")):
        return stripped
    if "." in stripped and " " not in stripped:
        return stripped
    return "(%s)" % stripped


def _callable_without_args(typ: FunctionPType) -> bool:
    return len(typ.call_signature) - typ.optional_args <= 0


def _productive_type_extension(
    typ: PType,
    max_depth: Tuple[int, int],
    root_types,
) -> bool:
    return (
        typ.nesting_depth[0] <= max_depth[0]
        and typ.nesting_depth[1] <= max_depth[1]
    ) or bool(typ.root_values - root_types)


def prefix_result_types(op: Optional[str], child_type: str) -> Tuple[str, ...]:
    child = _ptype(child_type)
    if child is None:
        return ()
    if isinstance(child, AnyPType):
        return ("any",)
    if op == "!":
        return ("boolean",)
    if op == "+":
        if isinstance(child, (NumberPType, StringPType, BooleanPType)):
            return ("number",)
        return ()
    if op == "-":
        if isinstance(child, NumberPType):
            return ("number",)
        if isinstance(child, BigIntPType):
            return ("bigint",)
        return ()
    if op == "~":
        if isinstance(child, NumberPType):
            return ("number",)
        if isinstance(child, BigIntPType):
            return ("bigint",)
        return ()
    return ()


def _arithmetic_result_types(lhs: PType, op: str, rhs: PType) -> Tuple[str, ...]:
    results = []
    for candidate in binary_operator_candidates(lhs, op):
        if candidate.rhs_type >= rhs:
            results.append(str(candidate.result_type))
    return _unique_sorted(results)


def _any_binary_result_types(op: str, lhs_type: str, rhs_type: str) -> Tuple[str, ...]:
    if op in COMMA_OPERATORS:
        return (rhs_type,)
    if op in EQUALITY_OPERATORS or op in RELATIONAL_OPERATORS:
        return ("boolean",)
    if op in LOGICAL_OPERATORS:
        return _unique_sorted((lhs_type, rhs_type, "any"))
    if op == "+":
        if rhs_type == "string" or lhs_type == "string":
            return ("string",)
        return ("any",)
    if op in ARITHMETIC_OPERATORS:
        return ("any",)
    return ()


def _equality_rhs_goal(lhs: PType, parent_goal: TypeGoal) -> Optional[TypeGoal]:
    rhs_types = _equality_rhs_type_names(lhs)
    if rhs_types is None:
        return _any_valid_goal(parent_goal.postfix_steps)
    return _derived_goal(rhs_types, parent_goal)


def _equality_rhs_type_names(lhs: PType) -> Optional[Tuple[str, ...]]:
    if isinstance(lhs, AnyPType):
        return None
    if isinstance(lhs, UnionPType):
        names = []
        for part in lhs.types:
            part_names = _equality_rhs_type_names(part)
            if part_names is None:
                return None
            names.extend(part_names)
        return _unique_sorted(names)

    family = _equality_primitive_family(lhs)
    if family is None:
        return None
    return (family,)


def _equality_types_overlap(lhs: PType, rhs: PType) -> bool:
    if isinstance(lhs, AnyPType) or isinstance(rhs, AnyPType):
        return True
    if isinstance(lhs, UnionPType):
        return any(_equality_types_overlap(part, rhs) for part in lhs.types)
    if isinstance(rhs, UnionPType):
        return any(_equality_types_overlap(lhs, part) for part in rhs.types)

    lhs_family = _equality_primitive_family(lhs)
    rhs_family = _equality_primitive_family(rhs)
    if lhs_family is not None and rhs_family is not None:
        return lhs_family == rhs_family
    if isinstance(lhs, PrimitivePType) and isinstance(rhs, PrimitivePType):
        return lhs.__class__ == rhs.__class__
    return True


def _equality_primitive_family(typ: PType) -> Optional[str]:
    if isinstance(typ, StringPType):
        return "string"
    if isinstance(typ, NumberPType):
        return "number"
    if isinstance(typ, BooleanPType):
        return "boolean"
    if isinstance(typ, BigIntPType):
        return "bigint"
    if isinstance(typ, NullPType):
        return "null"
    if isinstance(typ, UndefinedPType):
        return "undefined"
    return None


def _same_primitive_family(lhs: PType, rhs: PType, families) -> bool:
    return any(isinstance(lhs, family) and isinstance(rhs, family) for family in families)


def _leaf_min_operator_prec(chain) -> "OperatorPrecedence":
    """Precedence FLOOR for operators that may still extend the leaf fragment
    ITSELF -- the fragment side of the precedence split (the whole-node side is
    the inversion's max bound, see _binary_result_extends_to_goal).

    Under a binary RHS frame ``lhs op ▢`` only operators binding TIGHTER than
    ``op`` attach to the fragment; anything at/below op's precedence closes the
    operand and binds the WHOLE node, whose validity the frame inversion already
    encoded into the goal. Without this floor the leaf "reached" its goal through
    continuations that cannot syntactically extend it -- ``a < 5`` (a: number[])
    accepted ``5`` because number -> number[] via ``|| number[]``, an extension
    that really parses as ``(a<5) || ...`` and leaves the ill-typed comparison
    committed (rel mini-suite; the reject then leaked to the ``;`` REDUCE).
    reachable()'s min bound applies associativity: a left-assoc op admits only
    strictly-tighter continuations, a right-assoc op (``**``) also equal ones.

    Non-operator innermost frames (group parens, assignment RHS, conditional
    branches) open a fresh full-precedence expression position."""
    frames = getattr(chain, "frames", ())
    if not frames:
        return MIN_OPERATOR_PRECEDENCE
    frame = frames[0]      # innermost: the leaf fragment's immediate context
    if frame.kind == "binary_rhs" and frame.op in OPERATOR_PRECEDENCES:
        return (
            OPERATOR_PRECEDENCES[frame.op],
            OPERATOR_ASSOCIATIVITY.get(frame.op, "left"),
        )
    return MIN_OPERATOR_PRECEDENCE


# Postfix member / index / call (`p.x`, `p[]`, `p()` -- prec 17) and postfix
# `++` (15) cannot extend a BARE `as` cast: `5 as number.foo` binds `.foo` to the
# TYPE, not the cast, so you must parenthesize (`(5 as number).foo`) -- and the
# parenthesized form is a GROUP frame that carries its own postfix. So when the
# frontier is split by `as`, the lhs reachability must admit binary / ternary
# operators only. `**` (13) is the tightest such operator; cap the extension
# ceiling just below the postfix band (15) to drop it.
_AS_LHS_MAX_OPERATOR_PREC = (
    min(OPERATOR_PRECEDENCES[op] for op in ("p.x", "p[]", "p()", "p++")) - 1,
    "left",
)


def _goal_reachable_deep(
    goal: Optional[TypeGoal],
    type_text: str,
    min_operator_prec=MIN_OPERATOR_PRECEDENCE,
    max_operator_prec=MAX_OPERATOR_PRECEDENCE,
) -> bool:
    """FINAL leaf check: can ``type_text`` (the frontier's current type) REACH the
    already-inverted expected type, using TCG's faithful reachable() BFS.

    This is the single point the user scoped: the goal-inversion (expected type
    propagated down through the frames) stays untouched; only here -- where we ask
    "does the frontier's current type reach the (inverted) expected type" -- we use
    the SAME deep pruning TCG uses (lsp.ts_reachability.reachable / _reachable_bfs,
    productivity-bounded, default depth 5) instead of the shallow ~2-step
    _expand_frontier_candidates.

    ``min_operator_prec`` is the fragment-extension floor from the innermost
    enclosing operator frame (_leaf_min_operator_prec): the outer context was
    consumed by the inversion, so the leaf may be completed only by operators
    that bind tighter than that frame's operator (plus member/index/call).

    ``accepts_any`` (== @NOTYPE / xt=F) is a pure well-typedness check: no expected
    type, so any valid current type passes (the expr's internals are still checked
    via its own sub-occurrences). ``goal is None`` behaves the same.
    """
    if goal is None or goal.accepts_any:
        return _ptype(type_text) is not None
    t = _ptype(type_text)
    if t is None:
        return False
    for target in goal.target_types:
        if _is_never_type_text(target):
            # `never` is the BOTTOM type: nothing is assignable to it except
            # `never` itself. `_ptype('never')` mis-parses to `any` (NeverPType is
            # unimplemented), so without this guard EVERY source counts as
            # "reachable" -> a FALSE-ACCEPT (`let x: never = true`; HumanEval/115's
            # `fg[i][j]` is `never` from the empty `fg[0]=[]`, and `= boolean` was
            # accepted). Mirror the source-side `_is_never_type_text` special-case:
            # a never target is reached ONLY by a never source.
            if _is_never_type_text(type_text):
                return True
            continue
        target_t = _ptype(target)
        if target_t is None:
            continue
        if _ts_type_reachable(
            t,
            target_t,
            min_operator_prec,
            max_operator_prec,
            [],
            [],
            [],
        ):
            return True
    return False


def _goal_accepts_type(goal: TypeGoal, type_text: str) -> bool:
    return _goal_accepts_type_cached(goal.target_types, goal.postfix_steps, type_text)


@lru_cache(maxsize=8192)
def _goal_accepts_type_cached(
    target_types: Tuple[str, ...],
    postfix_steps: int,
    type_text: str,
) -> bool:
    if not target_types:
        return False
    if any(_type_assignable(type_text, target_type) for target_type in target_types):
        return True
    if postfix_steps <= 0:
        return False
    candidates = _expand_frontier_candidates(
        (TypedCandidate("__frontier", type_text, "goal_probe"),),
        max_steps=postfix_steps,
        goal=None,
    )
    return any(
        _type_assignable(candidate.type_text, target_type)
        for candidate in candidates
        for target_type in target_types
    )


def _type_assignable(source_type: str, target_type: str) -> bool:
    source = _ptype(source_type)
    target = _ptype(target_type)
    if source is None or target is None:
        return False
    if _any_array_assignable_to_array(source, target):
        return True
    return isinstance(source, AnyPType) or target >= source


def _any_array_assignable_to_array(source: PType, target: PType) -> bool:
    if isinstance(target, UnionPType):
        return any(_any_array_assignable_to_array(source, part) for part in target.types)
    if not isinstance(source, ArrayPType) or not isinstance(source.element_type, AnyPType):
        return False
    return isinstance(target, (ArrayPType, TuplePType))


def _arrow_header_prefix(text: str) -> str:
    """Return the leading arrow-parameter header(s) of ``text`` -- the substring up
    to and including the LAST TOP-LEVEL ``=>`` (0 if none). E.g. `s=>s.includes(` ->
    `s=>`, `x=>y=>y.foo(` -> `x=>y=>`. Used so that a call-base sub-expression inside
    an arrow body (`s.includes` in `s=>s.includes(`) is typed with the arrow's params
    in scope (else `s` is undefined -> false-reject on `.filter(s=>s.method(...))`)."""
    depth = 0
    last = -1
    i = 0
    n = len(text)
    while i < n:
        c = text[i]
        if c in "([{":
            depth += 1
        elif c in ")]}":
            depth -= 1
        elif depth == 0 and c == "=" and i + 1 < n and text[i + 1] == ">":
            last = i + 2
            i += 2
            continue
        i += 1
    return text[:last] if last > 0 else ""


_LIB_STRING_ARRAY_ALIAS_RE = re.compile(r"\b(?:RegExpMatchArray|RegExpExecArray)\b")

# lib.es5 return types of the callable built-in constructor OBJECTS when
# invoked WITHOUT `new` (value position): `Array(n)` builds an array,
# Number/String/Boolean convert their argument.
_CTOR_VALUE_CALL_RETURNS = {
    "ArrayConstructor": "any[]",
    "NumberConstructor": "number",
    "StringConstructor": "string",
    "BooleanConstructor": "boolean",
}


def _exec_array_target_depth(target_text: str) -> Optional[int]:
    """Array depth of a `RegExpExecArray[]...` target text (0 for the bare
    name), or None when the target is not RegExpExecArray-based."""
    t = target_text
    depth = 0
    while t.endswith("[]"):
        t = t[:-2].strip()
        depth += 1
    return depth if t == "RegExpExecArray" else None


def _exec_array_target_admits(source_text: str, depth: int) -> bool:
    """TS-faithful admits for a RegExpExecArray(+[]*depth) target: an exec
    result at the SAME depth, `any`/`never` (at any admissible depth), or a
    union whose every member is admitted. Everything else lacks the required
    `index`/`input` members."""
    s = (source_text or "").strip()
    if s in ("any", "never"):
        return True
    members = _top_level_union_member_texts(s)
    if members is not None:
        return all(_exec_array_target_admits(m, depth) for m in members)
    core = s
    d = 0
    while core.endswith("[]"):
        core = core[:-2].strip()
        d += 1
    if core == "RegExpExecArray" and d == depth:
        return True
    # any[]/never[] element layers: `never[]` into RegExpExecArray[] is the
    # empty-array literal (element never <: RegExpExecArray), `any[]` likewise;
    # a bare `never[]` into the BARE RegExpExecArray still lacks index/input.
    if core in ("any", "never") and 1 <= d <= depth:
        return True
    return False


_LIB_MATCH_ARRAY_ALIAS_RE = re.compile(r"\bRegExpMatchArray\b")


def _normalize_lib_type_text(
    type_text: Optional[str], as_target: bool = False
) -> Optional[str]:
    """lib.es5 `RegExpMatchArray`/`RegExpExecArray` extend `Array<string>`;
    ptype and the text guards do not know the names (opaque object), which
    false-rejected the very common `str.match(re)` results (return positions
    mbpp/563, index access mbpp/725). Alias them to `string[]` anywhere in the
    text (unions/arrays included).

    Direction matters: RegExpMatchArray's extra members (index/input/groups)
    are all OPTIONAL -> mutually assignable with `string[]`, alias in both
    directions. RegExpExecArray's `index`/`input` are REQUIRED -> `string[]`
    is NOT assignable to it (tsc 2345), so alias it only as a SOURCE; as a
    TARGET the caller must handle it explicitly."""
    if not type_text or "RegExp" not in type_text:
        return type_text
    if as_target:
        return _LIB_MATCH_ARRAY_ALIAS_RE.sub("string[]", type_text)
    return _LIB_STRING_ARRAY_ALIAS_RE.sub("string[]", type_text)


@lru_cache(maxsize=8192)
def _ptype_from_normalized_text(type_text: str) -> Optional[PType]:
    """Parse one normalized TS type string into an immutable ``PType``."""
    return ptype_from_ts_type(type_text)


def _ptype(type_text: Optional[str]) -> Optional[PType]:
    if not type_text:
        return None
    return _ptype_from_normalized_text(_normalize_lib_type_text(type_text))


def _split_top_level_type_text(type_text: Optional[str], sep: str):
    """Split a TYPE text on ``sep`` at top level (outside (), [], {}, <>).
    Returns None when the text is not bracket-balanced. `=>`'s `>` is not a
    closing angle bracket."""
    t = (type_text or "").strip()
    parts, buf = [], []
    depth = angle = 0
    prev = ""
    for ch in t:
        if ch in "([{":
            depth += 1
        elif ch in ")]}":
            depth -= 1
            if depth < 0:
                return None
        elif ch == "<":
            angle += 1
        elif ch == ">" and prev != "=" and angle > 0:
            angle -= 1
        if ch == sep and depth == 0 and angle == 0:
            parts.append("".join(buf).strip())
            buf = []
        else:
            buf.append(ch)
        prev = ch
    if depth != 0:
        return None
    parts.append("".join(buf).strip())
    return parts


def _ternary_true_narrows_base(code_before: str, base_text: str) -> bool:
    """True when ``code_before`` ends with ``base_text`` immediately followed
    by a `?` -- i.e. the expression being typed is the TRUE branch of a
    conditional whose condition is exactly that base, so TS truthiness
    narrowing applies to it."""
    base = (base_text or "").strip()
    if not base:
        return False
    head = (code_before or "").rstrip()
    if not head.endswith("?"):
        return False
    head = head[:-1].rstrip()
    if not head.endswith(base):
        return False
    prev = head[: len(head) - len(base)]
    return not (prev and (prev[-1].isalnum() or prev[-1] in "_$."))


def _strip_null_undefined_members(type_text: Optional[str]) -> Optional[str]:
    """Drop top-level `null`/`undefined` union members (truthiness narrowing).
    None when the text is not a union or nothing would change."""
    members = _top_level_union_member_texts(type_text)
    if not members:
        return None
    kept = [m for m in members if m not in ("null", "undefined")]
    if not kept or len(kept) == len(members):
        return None
    return " | ".join(kept)


def _fn_type_parts(type_text: Optional[str]):
    """([param type texts], return type text) of a FUNCTION type text
    `(a: T1, b?: T2) => R`, or None when the text is not one (no leading
    param list, unbalanced, rest params, or missing top-level `=>`)."""
    t = (type_text or "").strip()
    if not t.startswith("(") or "..." in t:
        return None
    depth = 0
    params_end = None
    for i, ch in enumerate(t):
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
            if depth == 0:
                params_end = i
                break
    if params_end is None:
        return None
    rest = t[params_end + 1 :].strip()
    if not rest.startswith("=>"):
        return None
    ret = rest[2:].strip()
    if not ret:
        return None
    inner = t[1:params_end].strip()
    if not inner:
        return [], ret
    parts = _split_top_level_type_text(inner, ",")
    if parts is None or any(not p for p in parts):
        return None
    param_types = []
    for part in parts:
        colon = _top_level_colon_index(part)
        if colon is None:
            return None
        typ = part[colon + 1 :].strip()
        if not typ:
            return None
        param_types.append(typ)
    return param_types, ret


def _top_level_colon_index(text: str) -> Optional[int]:
    depth = angle = 0
    prev = ""
    for i, ch in enumerate(text):
        if ch in "([{":
            depth += 1
        elif ch in ")]}":
            depth -= 1
        elif ch == "<":
            angle += 1
        elif ch == ">" and prev != "=" and angle > 0:
            angle -= 1
        elif ch == ":" and depth == 0 and angle == 0:
            return i
        prev = ch
    return None


def _has_top_level_arrow(type_text: Optional[str]) -> bool:
    """True when the TYPE text contains a `=>` outside every bracket pair."""
    depth = angle = 0
    prev = ""
    for ch in type_text or "":
        if ch in "([{":
            depth += 1
        elif ch in ")]}":
            depth -= 1
        elif ch == "<":
            angle += 1
        elif ch == ">":
            if prev == "=" and depth == 0 and angle == 0:
                return True
            if angle > 0 and prev != "=":
                angle -= 1
        prev = ch
    return False


def _top_level_union_member_texts(type_text: Optional[str]):
    """Member texts of a top-level UNION type text, or None if not a union.

    A text with a top-level `=>` is NOT decomposed: in TS type syntax the
    function return type extends across `|` (`(a) => b | c` is ONE function
    type returning `b | c`), so splitting it on `|` would fabricate members.
    """
    if "|" not in (type_text or "") or _has_top_level_arrow(type_text):
        return None
    parts = _split_top_level_type_text(type_text, "|")
    if parts is None or len(parts) < 2 or any(not p for p in parts):
        return None
    return parts


def _array_element_text(type_text: Optional[str]) -> Optional[str]:
    """Element type text of a genuine top-level `T[]` suffix, or None. Not a
    tuple (`[a, b]` has no element suffix) and not a corrupted slice (`a[b][]`
    inner texts must stay balanced)."""
    t = (type_text or "").strip()
    if not t.endswith("[]") or len(t) <= 2:
        return None
    inner = t[:-2].strip()
    if not inner or _split_top_level_type_text(inner, "\x00") is None:
        return None
    if inner.startswith("(") and inner.endswith(")"):
        depth = 0
        for i, ch in enumerate(inner):
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
                if depth == 0:
                    if i == len(inner) - 1:
                        inner = inner[1:-1].strip()
                    break
    return inner or None


_GENERIC_HEAD_RE = re.compile(r"^([A-Za-z_$][\w$]*)<(.+)>$", re.DOTALL)


def _generic_head_and_args(type_text: Optional[str]):
    """(head, [arg texts]) of a generic instantiation text `Head<A, B>`, or
    None when the text is not one."""
    m = _GENERIC_HEAD_RE.match((type_text or "").strip())
    if not m:
        return None
    args = _split_top_level_type_text(m.group(2), ",")
    if not args or any(not a for a in args):
        return None
    return m.group(1), args


def _is_unknown_type_text(type_text: Optional[str]) -> bool:
    return (type_text or "").strip() == "unknown"


def _is_never_type_text(type_text: Optional[str]) -> bool:
    return (type_text or "").strip() == "never"


def _is_never_array_type_text(type_text: Optional[str]) -> bool:
    """True for `never[]`, `never[][]`, ... -- the inferred type of an empty array
    literal `[]` (and arrays thereof). `never` is bottom, so such a type is
    assignable to any array target."""
    t = (type_text or "").strip()
    if not t.endswith("[]"):
        return False
    while t.endswith("[]"):
        t = t[:-2].strip()
    return t == "never"


def _wrap_leading_regex(fragment: str) -> str:
    """Parenthesize a LEADING regex literal so the oracle probes parse it.

    A fragment that STARTS with `/` is a regex literal (a division cannot start an
    expression), but the probe's re-lex of `code_before + fragment` mis-reads the
    `/` (observed: `actual('/[a-z]/')` ok=False with no diagnostics, while
    `actual('(/[a-z]/)')` is RegExp; `const re = /[aeiou]/g;` and
    `/[a-z]/ .test(` false-rejected live). Wrapping only the literal preserves the
    rest of the fragment (member chains, args). Fragments not starting with a
    completable regex are returned unchanged."""
    text = fragment or ""
    lead = len(text) - len(text.lstrip())
    body = text[lead:]
    if not body.startswith("/") or body.startswith("//") or body.startswith("/*"):
        return fragment
    i, escaped, in_class = 1, False, False
    end = None
    while i < len(body):
        ch = body[i]
        if escaped:
            escaped = False
        elif ch == "\\":
            escaped = True
        elif in_class:
            if ch == "]":
                in_class = False
        elif ch == "[":
            in_class = True
        elif ch == "/":
            end = i
            break
        elif ch == "\n":
            return fragment
        i += 1
    if end is None:
        return fragment   # regex still open -- not a completable literal
    j = end + 1
    while j < len(body) and body[j] in "gimsuyd":
        j += 1
    return text[:lead] + "(" + body[:j] + ")" + body[j:]


def _tuple_element_texts(type_text: Optional[str]):
    """Element type texts of a TUPLE type text `[T1, T2, ...]`, or None if the
    text is not a tuple. Splits on TOP-LEVEL commas only."""
    t = (type_text or "").strip()
    if not (t.startswith("[") and t.endswith("]")):
        return None
    inner = t[1:-1].strip()
    if not inner:
        return []
    parts, depth, buf = [], 0, []
    for ch in inner:
        if ch in "([{<":
            depth += 1
        elif ch in ")]}>":
            depth -= 1
            if depth < 0:
                # The trailing `]` does not close the leading `[` -- the text
                # is not a top-level tuple (`[number, number][]` is an ARRAY
                # of tuples; decomposing it as a tuple returned garbage
                # elements, observed on mbpp/630).
                return None
        if ch == "," and depth == 0:
            parts.append("".join(buf).strip())
            buf = []
        else:
            buf.append(ch)
    parts.append("".join(buf).strip())
    return [p for p in parts if p]


def _is_any_array_type_text(type_text: Optional[str]) -> bool:
    """True for `any[]`, `any[][]`, ... -- e.g. the TS type of `new Array(n)`.
    An `any`-element array is assignable to any array target (same admit rule as
    never[]: arrays / unions containing one, not tuples)."""
    t = (type_text or "").strip()
    if not t.endswith("[]"):
        return False
    while t.endswith("[]"):
        t = t[:-2].strip()
    return t == "any"


def _is_arraylike_named_target_text(type_text: Optional[str]) -> bool:
    """True for the lib array-like generic `ConcatArray<...>` (the parameter
    type of `Array.prototype.concat`): `any[]`/`never[]` sources are assignable
    to it in TS (its members -- length, numeric index, join, slice -- are all
    present on any array), but it parses to an opaque object in ptype
    (observed false-reject mbpp/632 `concat(Array(n).fill(0))`)."""
    t = (type_text or "").strip()
    return t.startswith("ConcatArray<") and t.endswith(">")


def _target_admits_never_array(target: PType) -> bool:
    """A `never[]` source is assignable to an ARRAY target (never <: any element),
    or to a union that contains one. NOT to a fixed-length tuple: TS requires the
    tuple's exact arity, so `const t: [string, number] = []` is a real error."""
    if isinstance(target, ArrayPType):
        return True
    if isinstance(target, UnionPType):
        return any(_target_admits_never_array(part) for part in target.types)
    return False


def _is_any_type_text(type_text: Optional[str]) -> bool:
    return (type_text or "").strip() == "any"


def construct_reachable_type_texts(
    type_text: Optional[str],
    base_text: Optional[str] = None,
) -> Tuple[str, ...]:
    if not type_text:
        return ()
    stripped = str(type_text).strip()
    if stripped.startswith("typeof "):
        instance_type = stripped[len("typeof ") :].strip()
        if instance_type:
            return (instance_type,)
    if base_text and stripped == (base_text or "").strip():
        return (stripped,)

    # TS builtin classes have a constructor type named `<Class>Constructor`
    # (SetConstructor / MapConstructor / ArrayConstructor / DateConstructor / ...).
    # `new <Class>(` produces a `<Class>` INSTANCE; expose it so reachability can
    # explore the instance's members (`new Set(...).size` -> number). Without this,
    # construct_reachable_types(SetConstructor) is empty and an in-progress
    # `new Set(` reaches nothing -> false-reject on any `new` of a built-in class.
    if base_text and stripped.endswith("Constructor"):
        inst = (base_text or "").strip()
        if inst:
            return (inst,)

    typ = _ptype(stripped)
    return tuple(str(return_type) for return_type in construct_reachable_types(typ))


def construct_reachable_types(typ: Optional[PType]):
    if isinstance(typ, FunctionPType) and typ.is_constructor:
        return {typ.return_type}
    if isinstance(typ, UnionPType):
        result = set()
        for part in typ.types:
            result.update(construct_reachable_types(part))
        return result
    return set()


def _diagnostic_errors(diagnostics: Sequence[dict]) -> Tuple[dict, ...]:
    return tuple(item for item in diagnostics if item.get("category") == "Error")


def _diagnostics_overlapping_span(
    diagnostics: Sequence[dict],
    start: int,
    end: int,
) -> Tuple[dict, ...]:
    result = []
    for item in diagnostics:
        diag_start = item.get("start")
        if diag_start is None:
            result.append(item)
            continue
        try:
            diag_start = int(diag_start)
        except (TypeError, ValueError):
            result.append(item)
            continue

        length = item.get("length")
        try:
            length = int(length) if length is not None else 0
        except (TypeError, ValueError):
            length = 0
        diag_end = diag_start + max(length, 1)
        if diag_start < end and diag_end > start:
            result.append(item)
    return tuple(result)


def _diagnostics_starting_in_span(
    diagnostics: Sequence[dict],
    start: int,
    end: int,
) -> Tuple[dict, ...]:
    result = []
    for item in diagnostics:
        diag_start = item.get("start")
        if diag_start is None:
            result.append(item)
            continue
        try:
            diag_start = int(diag_start)
        except (TypeError, ValueError):
            result.append(item)
            continue
        if start <= diag_start < end:
            result.append(item)
    return tuple(result)


def _has_fatal_diagnostic(diagnostics: Sequence[dict]) -> bool:
    return any(item.get("code") in FATAL_DIAGNOSTIC_CODES for item in diagnostics)


def _has_excess_argument_count_diagnostic(diagnostics: Sequence[dict]) -> bool:
    for item in _diagnostic_errors(diagnostics):
        if item.get("code") != 2554:
            continue
        message = str(item.get("message") or "")
        if _argument_count_got_exceeds_expected(message):
            return True
    return False


def _argument_count_got_exceeds_expected(message: str) -> bool:
    match = re.search(
        r"Expected\s+(\d+)(?:\s*-\s*(\d+))?\s+arguments?,\s+but\s+got\s+(\d+)",
        message,
    )
    if match:
        max_expected = int(match.group(2) or match.group(1))
        got = int(match.group(3))
        return got > max_expected

    match = re.search(
        r"Expected\s+at\s+most\s+(\d+)\s+arguments?,\s+but\s+got\s+(\d+)",
        message,
    )
    if match:
        return int(match.group(2)) > int(match.group(1))

    return False


def _diag_start_before(item: dict, offset: int) -> bool:
    """True when the diagnostic has a known start offset BEFORE ``offset``."""
    diag_start = item.get("start")
    try:
        return diag_start is not None and int(diag_start) < offset
    except (TypeError, ValueError):
        return False


# Condition-position truthiness lints: the fixed-sub-fragment probe places the
# fragment as a WHOLE statement/condition (`...if(2); }`), so TS's syntactic
# always-truthy/always-nullish checks fire about the synthetic PLACEMENT, not
# about the fragment -- and they see through the `as any` mask, defeating the
# artifact filter (observed live, sem_none mbpp/239: binary LHS '2' of
# `j >= 2 * dp[...]` failed with 2872 -> the ident after `*` false-rejected).
# actual_type_of_expr is only ever used for strict sub-parts (binary LHS,
# frontier bases); real condition truthiness on a completed expr is judged by
# completed_type_of_expr, which is untouched.
_PROBE_POSITION_LINT_CODES = {2871, 2872}

# Implicit-any lint codes (noImplicitAny family) -- policy-allowed ("allow
# implicit any"), so they must NEVER make a fixed-expression type lookup
# hard-fail. Without this an evolving empty array `let fg = []` (7005 "Variable
# implicitly has an 'any[]' type") made `_actual_type('fg')` return None, so
# `fg[...]` had no base type -> "no-frontier-candidates" -> false-reject of the
# valid `fg[0] = []` (grid init). This was long masked by the param_fallback
# fossil rescue; removing that mask (HE/113) exposed it. 7006 (param) is also
# dropped earlier in TypeLookup.ok; listing it here keeps the set complete.
_IMPLICIT_ANY_LINT_CODES = {7005, 7006, 7034, 7053}


def _partial_actual_hard_diagnostics(
    diagnostics: Sequence[dict],
    masked_diagnostics: Sequence[dict],
) -> Tuple[dict, ...]:
    masked_signatures = {
        _diagnostic_signature(item)
        for item in _diagnostic_errors(masked_diagnostics)
    }
    hard = []
    for item in _diagnostic_errors(diagnostics):
        if (item.get("code") in _PROBE_POSITION_LINT_CODES
                or item.get("code") in _IMPLICIT_ANY_LINT_CODES):
            continue
        if item.get("code") == 2554:
            if _argument_count_got_exceeds_expected(str(item.get("message") or "")):
                hard.append(item)
            continue
        if _diagnostic_signature(item) in masked_signatures:
            hard.append(item)
    return tuple(hard)


def _diagnostic_signature(item: dict) -> Tuple[object, str]:
    return (item.get("code"), _normalize_diagnostic_message(item.get("message")))


def _normalize_diagnostic_message(message) -> str:
    return re.sub(r"\s+", " ", str(message or "")).strip()


def _mask_expr_as_any(expr_text: str) -> str:
    if not expr_text:
        return expr_text
    leading_len = len(expr_text) - len(expr_text.lstrip())
    trailing_len = len(expr_text) - len(expr_text.rstrip())
    leading = expr_text[:leading_len]
    trailing = expr_text[len(expr_text) - trailing_len :] if trailing_len else ""
    core_end = len(expr_text) - trailing_len if trailing_len else len(expr_text)
    core = expr_text[leading_len:core_end]
    if not core:
        return expr_text
    return "%s((%s) as any)%s" % (leading, core, trailing)


def _flatten_diagnostics(diagnostics) -> List[dict]:
    if isinstance(diagnostics, list):
        result = list(diagnostics)
    elif not isinstance(diagnostics, dict):
        return []
    else:
        result = []
        for items in diagnostics.values():
            if isinstance(items, list):
                result.extend(items)
    # 2695 ("left side of comma operator is unused and has no side effects") is a
    # SUGGESTION-category tsc diagnostic: it never appears in the semantic GT the
    # checker compares against, but the worker's probe collection surfaces it.
    # Every comma-LHS probe trips it by construction (we probe the LHS fragment
    # precisely because it IS a comma LHS), and the as-any mask keeps the comma so
    # it mis-classifies as a context-independent hard error (actual_type_of_expr
    # -> TypeLookup(None)) -- false-rejecting valid comma sequences
    # (`const a: number = ((1,"x"), 2)` rejected at the outer `,`). Same
    # probe-vs-GT alignment rule as the 7006 filter in TypeLookup.ok.
    return [item for item in result if item.get("code") != 2695]


def _with_leaf_goal(
    steps: Tuple[FrontierGoalStep, ...],
    leaf_goal: TypeGoal,
) -> Tuple[FrontierGoalStep, ...]:
    if not steps:
        return steps
    return steps[:-1] + (FrontierGoalStep(steps[-1].frontier, leaf_goal),)


def _unique_sorted(items: Iterable[str]) -> Tuple[str, ...]:
    seen = set()
    result = []
    for item in items:
        if not item or item in seen:
            continue
        seen.add(item)
        result.append(item)
    return tuple(sorted(result))


def _unique_pairs(items: Iterable[Tuple[str, str]]) -> Tuple[Tuple[str, str], ...]:
    seen = set()
    result = []
    for item in items:
        if item in seen:
            continue
        seen.add(item)
        result.append(item)
    return tuple(result)


def _dedupe_states(states: Iterable[ReachabilityState]) -> List[ReachabilityState]:
    seen = set()
    result = []
    for state in states:
        key = (state.text, state.type_text)
        if key in seen:
            continue
        seen.add(key)
        result.append(state)
    return result


def _dedupe_candidates(candidates: Iterable[TypedCandidate]) -> List[TypedCandidate]:
    seen = set()
    result = []
    for candidate in candidates:
        key = (candidate.text, candidate.type_text)
        if key in seen:
            continue
        seen.add(key)
        result.append(candidate)
    return result
