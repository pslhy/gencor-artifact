"""Python semantic rules (the python_ummac_v5 variant).

python_sem (concrete-evaluator, idx-based: ``func(lhs, rhs, idx, ...)``;
inherited writes ``rhs[idx]`` when ``idx`` matches, synthesized writes
``lhs.syn`` at reduction ``idx < 0``) + module-member-access marking.

getattr/var/atom carry expr spans up name-chains (name_syn / pass_expr /
expr_getattr); ``mark_bnd_if_module`` stamps the member with the base span so the
UMMAC constrainer can decide whether ``base.member`` is a module access. The
terminal ``expr_span`` hook is set only on NAME/MATCH/CASE, so non-name expr
nodes have no span -- all reads use the safe ``.syn.get("expr_span", None)``
accessor (the functions already treat None as "no span").
"""

from lark.semantic import SemanticContext, needs_context, terminals


ACCUMULATE_ATTRS = [
    "NAME.inh.bnd",
    "MATCH.inh.bnd",
    "CASE.inh.bnd",
    "NAME.inh.bnd_if_module",
    "MATCH.inh.bnd_if_module",
    "CASE.inh.bnd_if_module",
    "NAME.inh.qual",
    "MATCH.inh.qual",
    "CASE.inh.qual",
]

SEMANTIC_EVAL_MODE = "set"


class PythonSemanticContext(SemanticContext):
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


@terminals("NAME", "MATCH", "CASE")
@needs_context(PythonSemanticContext)
def python_name_terminal(terminal, ctx):
    terminal.syn.expr_span = ctx.current_expr_span


def initial(lhs, rhs, idx):
    if idx == 0:
        rhs[idx].inh.bnd = None
        rhs[idx].inh.ctx = ""
        rhs[idx].inh.bnd_if_module = None
        rhs[idx].inh.qual = None


def default(lhs, rhs, idx):
    if idx < 0:
        return
    rhs[idx].inh.bnd = lhs.inh.bnd
    rhs[idx].inh.ctx = lhs.inh.ctx
    rhs[idx].inh.bnd_if_module = lhs.inh.bnd_if_module
    # Reset qual outside the receiver head spine; pass_callee forwards it there.
    rhs[idx].inh.qual = None


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
            rhs[idx].inh.bnd_if_module = lhs.inh.bnd_if_module


def ctx(lhs, rhs, idx, *func_args):
    if idx < 0:
        return
    for value, key in _pairs(func_args):
        if _key(key) == idx:
            rhs[idx].inh.ctx = lhs.inh.ctx + value


def name_syn(lhs, rhs, idx, key=0):
    if idx >= 0:
        return
    lhs.syn.expr_span = rhs[_key(key)].syn.get("expr_span", None)


def pass_expr(lhs, rhs, idx, key=0):
    if idx >= 0:
        return
    expr_span = rhs[_key(key)].syn.get("expr_span", None)
    if expr_span is not None:
        lhs.syn.expr_span = expr_span


def expr_getattr(lhs, rhs, idx, base_key=0, member_key=2):
    if idx >= 0:
        return
    base_expr_span = rhs[_key(base_key)].syn.get("expr_span", None)
    member_expr_span = rhs[_key(member_key)].syn.get("expr_span", None)
    if base_expr_span is not None and member_expr_span is not None:
        lhs.syn.expr_span = (base_expr_span[0], member_expr_span[1])


def mark_bnd_if_module(lhs, rhs, idx, base_key=0, member_key=2):
    if idx != _key(member_key):
        return
    base_expr_span = rhs[_key(base_key)].syn.get("expr_span", None)
    if base_expr_span is not None:
        rhs[idx].inh.bnd_if_module = base_expr_span


def qual(lhs, rhs, idx, *indices):
    """Mark rhs[i] as a dotted-access receiver (the base of getattr) -- the
    method.pdf 'qual' head that auto-import may resolve."""
    if idx < 0:
        return
    for key in indices:
        if _key(key) == idx:
            rhs[idx].inh.qual = True


def pass_callee(lhs, rhs, idx, *indices):
    """Carry qual one step down the head spine (atom_expr -> atom -> name ->
    NAME). Runs after `default`'s reset, so only the spine keeps the mark."""
    if idx < 0:
        return
    for key in indices:
        if _key(key) == idx:
            rhs[idx].inh.qual = getattr(lhs.inh, "qual", None)
