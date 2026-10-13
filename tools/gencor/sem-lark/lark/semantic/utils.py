"""Utility helpers for semantic runtime configuration."""

from abc import ABC, abstractmethod
from copy import copy
from inspect import Parameter, signature
from typing import Any, Callable, Dict, Iterable, List, Optional, Set, Tuple, Union

from ..grammar import Symbol

_IGNORE_DEFAULT_ATTR = "_lark_ignore_default"
_NEEDS_CONTEXT_ATTR = "_lark_needs_context"
_CONTEXT_TYPE_ATTR = "_lark_context_type"
_TERMINAL_NAMES_ATTR = "_lark_terminal_names"
_CONCRETE_SEMANTIC_ATTR = "_lark_concrete_semantic"
_SEMANTIC_EVALUATOR_KIND_ATTR = "_lark_semantic_evaluator_kind"
ALL_TERMINALS = "__all_terminals__"

AccumulateConfig = Optional[
    Union[
        str,                                                         # "NAME.inh.bnd"
        Dict[object, Optional[Union[bool, str, Iterable[object]]]],  # {"NAME": ["inh.bnd", "inh.ctx"], "MATCH.inh.bnd": True}
        Iterable[Union[str, Tuple[object, object], List[object]]],   # ["NAME.inh.bnd", ("MATCH", "inh.bnd")]
    ]
]


class SemanticContext(ABC):
    """Base interface for runtime semantic contexts.

    Subclasses receive shifted tokens through ``update``.  Contexts used by
    speculative parsing can usually rely on the default ``fork``.
    """

    @abstractmethod
    def update(self, token: Any) -> None:
        """Update this context after a token has been shifted."""

    def fork(self):
        """Return an isolated context for speculative parsing.

        The default shallow-copies the context object. Branch-local state should
        use value semantics, such as immutable containers, or the subclass
        should define its own copy behavior.
        """

        return copy(self)


def ignoredefault(func: Callable[..., Any]) -> Callable[..., Any]:
    """Mark a semantic function as opting out of the default semantic rule.

    :param func: Semantic function attached to a grammar rule.
    """

    setattr(func, _IGNORE_DEFAULT_ATTR, True)
    return func


def needs_context(context_type: Optional[type]=None):
    """Mark a semantic function as receiving a runtime semantic context.

    The decorator supports both ``@needs_context`` and
    ``@needs_context(MyContext)`` forms.  Context-aware functions receive
    ``context=...`` as a keyword argument.  When a concrete context type is
    provided and exactly one context type is required by the parser's semantic
    functions, the parser can initialize it automatically for each parser
    state. Callers may still pass an explicit context to override that default.
    """

    if callable(context_type) and not isinstance(context_type, type):
        func = context_type
        setattr(func, _NEEDS_CONTEXT_ATTR, True)
        setattr(func, _CONTEXT_TYPE_ATTR, None)
        return func

    def _decorator(func: Callable[..., Any]) -> Callable[..., Any]:
        setattr(func, _NEEDS_CONTEXT_ATTR, True)
        setattr(func, _CONTEXT_TYPE_ATTR, context_type)
        return func

    return _decorator


def terminals(*terminal_names: str):
    """Mark a function as a terminal synthesized-attribute hook.

    ``@terminals("NAME")`` attaches to selected terminals.  ``@terminals`` or
    ``@terminals()`` attaches to every shifted terminal.  Terminal hooks
    receive a terminal attribute proxy with ``terminal.syn`` for synthesized
    writes.  Hooks marked with ``@needs_context`` receive the runtime context
    as a second positional argument. Raw token data is expected to come from
    the context updated before terminal hooks run.
    """

    if len(terminal_names) == 1 and callable(terminal_names[0]) and not isinstance(terminal_names[0], str):
        func = terminal_names[0]
        setattr(func, _TERMINAL_NAMES_ATTR, (ALL_TERMINALS,))
        return func

    def _decorator(func: Callable[..., Any]) -> Callable[..., Any]:
        names = tuple(str(name) for name in terminal_names) or (ALL_TERMINALS,)
        setattr(func, _TERMINAL_NAMES_ATTR, names)
        return func

    return _decorator


terminal = terminals


def concrete_semantic(func: Callable[..., Any]) -> Callable[..., Any]:
    """Mark a semantic function as using the concrete candidate API.

    Concrete semantic functions are called as ``func(lhs, rhs, idx, *args)``.
    ``lhs`` and each ``rhs`` entry expose stable ``.inh`` and ``.syn``
    namespaces for the currently selected candidate. ``idx`` is the RHS index
    currently being computed; reductions use a negative index so the function
    can write LHS synthesized attributes without building ``lhs``/``rhs``
    proxies.

    :param func: Semantic function that accepts the direct candidate API.
    """

    setattr(func, _CONCRETE_SEMANTIC_ATTR, True)
    setattr(func, _SEMANTIC_EVALUATOR_KIND_ATTR, "concrete")
    return func


direct_semantic = concrete_semantic


def _positional_parameters(func: Callable[..., Any]) -> Tuple[Parameter, ...]:
    """Return explicit positional parameters before ``*args``/keywords."""
    try:
        params = list(signature(func).parameters.values())
    except (TypeError, ValueError):
        return tuple()

    result = []
    for param in params:
        if param.kind in (Parameter.VAR_POSITIONAL, Parameter.KEYWORD_ONLY, Parameter.VAR_KEYWORD):
            break
        result.append(param)
    return tuple(result)


def semantic_evaluator_kind_for_call(
    func: Optional[Callable[..., Any]],
    args: Tuple[Any, ...]=(),
) -> str:
    """Return ``"concrete"`` or ``"proxy"`` for one semantic call.

    Functions marked with ``@concrete_semantic`` always use the concrete
    evaluator. Otherwise the runtime inspects the call shape: ``(lhs, rhs,
    idx, ...)`` selects concrete, while ``(lhs, rhs, ...)`` selects the
    proxy-compatible evaluator. Grammar arguments such as ``bnd{false,2}`` are
    not counted as part of the evaluator prefix.

    :param func: Semantic function to inspect, or None.
    :param args: Grammar arguments attached to this semantic call.
    """

    if func is None:
        return "proxy"
    cached = getattr(func, _SEMANTIC_EVALUATOR_KIND_ATTR, None)
    if cached is not None:
        return cached
    if getattr(func, _CONCRETE_SEMANTIC_ATTR, False):
        kind = "concrete"
    else:
        params = _positional_parameters(func)
        kind = "concrete" if len(params) >= 3 and params[2].name == "idx" else "proxy"
    setattr(func, _SEMANTIC_EVALUATOR_KIND_ATTR, kind)
    return kind


def semantic_evaluator_kind(func: Optional[Callable[..., Any]]) -> str:
    """Return the evaluator kind for a function without rule-call arguments.

    :param func: Semantic function to inspect, or None.
    """

    return semantic_evaluator_kind_for_call(func, ())


def uses_concrete_semantic_call(func: Optional[Callable[..., Any]], args: Tuple[Any, ...]=()) -> bool:
    """Return whether one semantic call uses the concrete candidate API.

    :param func: Semantic function to inspect, or None.
    :param args: Grammar arguments attached to this semantic call.
    """

    return semantic_evaluator_kind_for_call(func, args) == "concrete"


def uses_concrete_semantic(func: Optional[Callable[..., Any]]) -> bool:
    """Return whether a function uses the concrete candidate API.

    :param func: Semantic function to inspect, or None.
    """

    return semantic_evaluator_kind(func) == "concrete"


uses_direct_semantic = uses_concrete_semantic


def ignores_default(func: Optional[Callable[..., Any]]) -> bool:
    """Return whether a semantic function opted out of the default rule.

    :param func: Semantic function to inspect, or None.
    """

    return bool(func is not None and getattr(func, _IGNORE_DEFAULT_ATTR, False))


def context_type_for(func: Optional[Callable[..., Any]]) -> Optional[type]:
    if func is None or not getattr(func, _NEEDS_CONTEXT_ATTR, False):
        return None
    return getattr(func, _CONTEXT_TYPE_ATTR, None)


def needs_runtime_context(func: Optional[Callable[..., Any]]) -> bool:
    return bool(func is not None and getattr(func, _NEEDS_CONTEXT_ATTR, False))


def terminal_names_for(func: Optional[Callable[..., Any]]) -> Tuple[str, ...]:
    if func is None:
        return ()
    return tuple(getattr(func, _TERMINAL_NAMES_ATTR, ()))


# TODO(multi-context): `context` is currently a single runtime object, so one
# parser run cannot safely mix functions marked with `@needs_context(ContextA)`
# and `@needs_context(ContextB)`. Accept either the current single object or a
# small context registry, for example `{ContextA: ctx_a, ContextB: ctx_b}` plus
# an optional default context. Then replace this validator with a resolver that
# uses `context_type_for(func)` to select the right instance and returns the
# object that runtime dispatch should pass as `context=...`. Bare
# `@needs_context` should use the default context or fail if there is no
# unambiguous default.
def validate_runtime_context(func: Callable[..., Any], context: Any) -> None:
    if not needs_runtime_context(func):
        return
    if context is None:
        raise ValueError("Semantic function %r requires a runtime context" % (func,))
    context_type = context_type_for(func)
    if context_type is not None and not isinstance(context, context_type):
        raise TypeError(
            "Semantic function %r requires context %r, got %r"
            % (func, context_type, type(context))
        )


def _split_accumulate_spec(spec: object) -> Tuple[str, Optional[str]]:
    spec = str(spec)
    symbol, sep, attr = spec.partition(".")
    if sep and symbol and attr:
        return symbol, attr
    return spec, None


def _track_symbol(result: Dict[str, Optional[Set[str]]], symbol: object) -> None:
    result[str(symbol)] = None


def _track_attr(result: Dict[str, Optional[Set[str]]], symbol: object, attr: object) -> None:
    symbol = str(symbol)
    if result.get(symbol) is None and symbol in result:
        return
    result.setdefault(symbol, set()).add(str(attr))


def _track_spec(result: Dict[str, Optional[Set[str]]], spec: object) -> None:
    symbol, attr = _split_accumulate_spec(spec)
    if attr is None:
        _track_symbol(result, symbol)
    else:
        _track_attr(result, symbol, attr)


def normalize_accumulate_attrs(config: AccumulateConfig) -> Dict[str, Optional[Set[str]]]:
    if not config:
        return {}
    if isinstance(config, str):
        result: Dict[str, Optional[Set[str]]] = {}
        _track_spec(result, config)
        return result
    if isinstance(config, dict):
        result: Dict[str, Optional[Set[str]]] = {}
        for symbol, attrs in config.items():
            symbol, key_attr = _split_accumulate_spec(symbol)
            if attrs is False:
                continue
            if key_attr is not None:
                _track_attr(result, symbol, key_attr)
            if attrs is None or attrs is True:
                if key_attr is None:
                    _track_symbol(result, symbol)
            elif isinstance(attrs, str):
                _track_attr(result, symbol, attrs)
            else:
                for attr in attrs:
                    _track_attr(result, symbol, attr)
        return result
    result = {}
    for spec in config:
        if isinstance(spec, (tuple, list)) and len(spec) == 2:
            _track_attr(result, spec[0], spec[1])
        else:
            _track_spec(result, spec)
    return result


def normalize_future_symbol_names(symbol_names: Optional[Union[str, Iterable[str]]]) -> Optional[Set[str]]:
    """Normalize an optional symbol-name filter.

    :param symbol_names: None, one symbol name, or an iterable of names.
    """

    if symbol_names is None:
        return None
    if isinstance(symbol_names, str):
        return {symbol_names}
    return {str(name) for name in symbol_names}


def matches_future_symbol(symbol: Symbol, symbol_names: Optional[Set[str]], symbol_kind: str) -> bool:
    """Return whether a grammar symbol passes future-symbol filters.

    :param symbol: Candidate terminal or nonterminal.
    :param symbol_names: Optional set of accepted symbol names.
    :param symbol_kind: Category filter such as all, terminal, or nonterminal.
    """

    if symbol_names is not None and symbol.name not in symbol_names:
        return False

    if symbol_kind in (None, "all", "symbol", "symbols"):
        return True
    if symbol_kind in ("terminal", "terminals"):
        return symbol.is_term
    if symbol_kind in ("nonterminal", "nonterminals"):
        return not symbol.is_term
    raise ValueError("Unknown symbol_kind: %r" % (symbol_kind,))
