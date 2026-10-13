"""Concrete semantic rules for typescript_grammar.lark."""

ACCUMULATE_ATTRS = [
    "value_ident.inh.bnd",
    "IDENT.inh.bnd",
    "IDENT.inh.tbnd",
    "expr.inh.xt",
    "condition_expr.inh.xt",
    "function_decl",
]

SEMANTIC_EVAL_MODE = "set"

def _pairs(args):
    if len(args) % 2:
        raise ValueError("Semantic helper arguments must be value/index pairs")
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
    raise ValueError("expected True or False, got %r" % (value,))

def initial(lhs, rhs, idx):
    if idx == 0:
        rhs[idx].inh.bnd = None
        rhs[idx].inh.tbnd = None
        rhs[idx].inh.xt = None

def default(lhs, rhs, idx):
    if idx < 0:
        return
    rhs[idx].inh.bnd = lhs.inh.bnd
    rhs[idx].inh.tbnd = lhs.inh.tbnd
    rhs[idx].inh.xt = lhs.inh.xt

def bnd(lhs, rhs, idx, *func_args):
    if idx < 0:
        return
    for value, key in _pairs(func_args):
        if _key(key) == idx:
            rhs[idx].inh.bnd = _bool(value)

def xt(lhs, rhs, idx, *func_args):
    if idx < 0:
        return
    for value, key in _pairs(func_args):
        if _key(key) == idx:
            rhs[idx].inh.xt = _bool(value)

def tbnd(lhs, rhs, idx, *func_args):
    if idx < 0:
        return
    for value, key in _pairs(func_args):
        if _key(key) == idx:
            rhs[idx].inh.tbnd = _bool(value)
