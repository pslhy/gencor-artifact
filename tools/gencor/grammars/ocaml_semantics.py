"""OCaml semantic rules (the ocaml_comment_ummac_v3 variant)
that REUSES constrain/undefined_module_member_access_constrain.py (no new constraint).

OCaml module paths are syntactic (CAPITALIZED_IDENT), so we synthesize no base
span. Each module-path token carries ``bnd_if_module = the position of the DOT to
its left`` (a LEFT sibling, so its synthesized expr_span is available when the
rule runs -- reading the token's OWN syn would be too early). The constraint
hands that to ``LSPMerlin.member_names``, which rebuilds the ``A.B.C.`` prefix as
``terminals[:dot+1]`` and queries merlin. ``module_status`` is a trivial MODULE.

Marked (each := DOT-left position):
  final member  A.foo (LOWERCASE_IDENT)        intermediate submodule A.B (CAPITALIZED_IDENT)
  operator      A.(+) (via operator_name)      the '(' of A.( (LPAREN, gating)

Members also get ``bnd{false}`` so the plain UndefinedVariableConstrain skips them.
Concrete-evaluator, idx-based (like python_semantics.py): ``func(lhs,
rhs, idx, ...)``, inherited writes ``rhs[idx]`` when ``idx`` matches, no-op at
reduction (``idx < 0``) -- this module synthesizes nothing at rule level (the
DOT ``expr_span`` comes from the terminal hook). Sibling ``syn`` reads use
``.get(..., None)`` to mirror the proxy's None-on-missing read.
"""
from lark.semantic import SemanticContext, needs_context, terminals


_MARKED_TERMS = ["LOWERCASE_IDENT", "CAPITALIZED_IDENT", "LPAREN",
                 "PREFIX_SYMBOL", "INFIX_SYMBOL", "STAR", "PLUS", "MINUS",
                 "DOTMINUS", "EQ", "NEQ", "LT", "GT", "OR", "BARBAR", "AMP",
                 "ANDAND", "COLONEQ", "MOD", "LAND", "LOR", "LXOR", "LSL",
                 "LSR", "ASR"]

ACCUMULATE_ATTRS = (
    ["LOWERCASE_IDENT.inh.bnd", "PREFIX_SYMBOL.inh.bnd", "INFIX_SYMBOL.inh.bnd"]
    + ["%s.inh.bnd_if_module" % t for t in _MARKED_TERMS]
    # `kind`: the completion-item kinds the GRAMMAR allows for an identifier
    # at its position (a SET) -- heads (module path head {9}), expr value
    # members {12 Value, 5 Field}, submodules {9}, type constructors {25}.
    # SymbolKindConstrain intersects it with the name's real kinds.
    + ["%s.inh.kind" % t for t in _MARKED_TERMS]
)



class OCamlSemanticContext(SemanticContext):
    def __init__(self, terminal_index=0, **_unused):
        self.terminal_index = terminal_index

    def update(self, token):
        self.terminal_index += 1

    @property
    def current_expr_span(self):
        index = self.terminal_index - 1
        if index < 0:
            return None
        return index, index


def _pairs(args):
    if len(args) % 2:
        raise ValueError("Semantic helper arguments must be tag/index pairs")
    return zip(args[0::2], args[1::2])


def _key(value):
    if isinstance(value, int):
        return value
    try:
        return int(value)
    except (TypeError, ValueError):
        return value


def _bool(value):
    if isinstance(value, bool):
        return value
    if value in {"True", "true"}:
        return True
    if value in {"False", "false"}:
        return False
    raise ValueError("bnd expects True or False, got %r" % (value,))


@terminals("DOT")
@needs_context(OCamlSemanticContext)
def ocaml_dot_terminal(terminal, ctx):
    terminal.syn.expr_span = ctx.current_expr_span


def initial(lhs, rhs, idx):
    if idx == 0:
        rhs[idx].inh.bnd = None
        rhs[idx].inh.ctx = ""
        rhs[idx].inh.bnd_if_module = None
        rhs[idx].inh.markop = None
        rhs[idx].inh.kind = None
        rhs[idx].inh.path_tail_kind = None


def default(lhs, rhs, idx):
    if idx < 0:
        return
    rhs[idx].inh.bnd = lhs.inh.bnd
    rhs[idx].inh.ctx = lhs.inh.ctx
    rhs[idx].inh.bnd_if_module = lhs.inh.bnd_if_module
    rhs[idx].inh.markop = getattr(lhs.inh, "markop", None)
    rhs[idx].inh.kind = getattr(lhs.inh, "kind", None)
    rhs[idx].inh.path_tail_kind = getattr(lhs.inh, "path_tail_kind", None)


def bnd(lhs, rhs, idx, *func_args):
    if idx < 0:
        return
    for value, key in _pairs(func_args):
        if _key(key) == idx:
            rhs[idx].inh.bnd = _bool(value)
            rhs[idx].inh.ctx = lhs.inh.ctx


def pass_bnd(lhs, rhs, idx, *indices):
    if idx < 0:
        return
    for key in indices:
        if _key(key) == idx:
            rhs[idx].inh.bnd = lhs.inh.bnd
            rhs[idx].inh.ctx = lhs.inh.ctx


def ctx(lhs, rhs, idx, *func_args):
    if idx < 0:
        return
    for value, key in _pairs(func_args):
        if _key(key) == idx:
            rhs[idx].inh.ctx = lhs.inh.ctx + value


# ---- module-member-access marking ----

def kind(lhs, rhs, idx, head_idx, *kinds):
    """Stamp an identifier with the SET of LSP completion-kinds THIS rule allows
    at its position (9=Module head/submodule, 12=Value, 5=Field, 4=Constructor,
    8=module-type, 25=Type, ...). One attribute for heads AND members: the
    position (rule) decides the set, SymbolKindConstrain intersects it with the
    name's real kinds from the LSP and rejects on empty -- both at the bare
    stage (hallucination) and as the parse narrows the kinds (to_be_open-like)."""
    if idx < 0 or _key(head_idx) != idx:
        return
    rhs[idx].inh.kind = frozenset(_key(k) for k in kinds)


def mark(lhs, rhs, idx, member_idx, dot_idx):
    """member := the DOT-left position (the DOT is rhs[dot_idx], a left sibling)."""
    if idx < 0 or _key(member_idx) != idx:
        return
    rhs[idx].inh.bnd_if_module = rhs[_key(dot_idx)].syn.get("expr_span", None)


def markop(lhs, rhs, idx, op_idx, dot_idx):
    """Carry the DOT position down into the operator_name wrapper."""
    if idx < 0 or _key(op_idx) != idx:
        return
    rhs[idx].inh.markop = rhs[_key(dot_idx)].syn.get("expr_span", None)


def apply_markop(lhs, rhs, idx, *indices):
    """In operator_name: stamp the operator terminal with the carried position.
    Operators are VALUES, so their member namespace is {12}."""
    if idx < 0:
        return
    pos = getattr(lhs.inh, "markop", None)
    if pos is None:
        return
    for key in indices:
        if _key(key) == idx:
            rhs[idx].inh.bnd_if_module = pos
            rhs[idx].inh.kind = frozenset({12})


_MODULE = frozenset({9})


def path_tail(lhs, rhs, idx, target_idx, *kinds):
    """Inherited handoff: tell a child (``_bnf_constant_plus_0``) what kind its
    LAST segment should carry. Value path -> {4}, module prefix -> {9}."""
    if idx < 0 or _key(target_idx) != idx:
        return
    rhs[idx].inh.path_tail_kind = frozenset(_key(k) for k in kinds)


def kind_tail(lhs, rhs, idx, *indices):
    """Stamp a segment's ``kind`` from the inherited ``path_tail_kind`` (default
    {9}=Module when the parent set none). Writes ``kind`` -- the only attribute
    SymbolKindConstrain reads."""
    if idx < 0:
        return
    for key in indices:
        if _key(key) == idx:
            ptk = getattr(lhs.inh, "path_tail_kind", None)
            rhs[idx].inh.kind = ptk if ptk is not None else _MODULE
