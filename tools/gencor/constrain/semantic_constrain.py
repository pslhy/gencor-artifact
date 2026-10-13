from abc import ABC, abstractmethod
from dataclasses import dataclass
from typing import Any


def _append_unique(values: list, value: Any) -> None:
    if not any(existing == value for existing in values):
        values.append(value)


def semantic_attr_values(attrs: Any, kind: str, attr_name: str) -> list:
    """Project one attribute name from a candidate-based attribute container.

    :param attrs: Object with a ``candidates`` iterable.
    :param kind: ``inh`` or ``syn``.
    :param attr_name: Attribute name to collect.
    """

    result = []
    for candidate in getattr(attrs, "candidates", ()):
        record = getattr(candidate, kind)
        if record.has(attr_name):
            _append_unique(result, record.get(attr_name))
    return result


@dataclass
class SymbolCheckResult:
    terminal_seq: list
    term_to_check: list[bool]
    rejected: bool = False


class SemanticConstrain(ABC):
    check_every_terminal = True

    def init_statics(self, statics: Any):
        self.statics = {} if statics is None else statics

    def reset(self):
        pass

    def on_accept(self, view: Any, terminals: list):
        pass

    @abstractmethod
    def symbols_to_check(
        self,
        view: Any,
        terminal_seq: list,
        last_forming: bool = True,
    ) -> Any:
        """Return the symbols/attributes that need semantic analysis.

        ``last_forming``: True when ``terminal_seq``'s last element is the
        candidate's still-extendable lexeme (the usual case). False when the
        postlex dropped the still-forming candidate (in-bracket _NEWLINE/
        COMMENT), leaving a COMPLETED terminal last: prefix leniency for the
        last element must not apply then."""
        raise NotImplementedError

    @abstractmethod
    def analyze(self, symbols_to_check: Any) -> bool:
        """Return whether the current candidate can satisfy the semantic constrain."""
        raise NotImplementedError

    # --- cross-commit analysis handoff (opt-in; no-op by default) -------------
    # check_after_gen feeds T1..TN and commits T1..T{N-1}; TN (the last,
    # realizable terminal) becomes the FIRST terminal of the next step. So the
    # analysis at TN's position is always valid again at the next step's first
    # position -- hand it off on commit instead of re-querying the LSP.
    def adopt_analysis(self, result: Any, remainder: str = "") -> None:
        """Receive the previous last-position analysis to reuse at the current
        first position. `result` is this constrain's own opaque payload (or None
        = nothing to reuse). `remainder` is the committed forming text, used to
        re-derive the analysis at the first position when `result` is None."""
        pass

    def hand_off_analysis(self, remainder: str = "") -> Any:
        """Return the analysis result this step actually used at the last
        position (economical). If nothing was used, analyze that position on the
        spot using `remainder` (the pending forming text) so the next step can
        still reuse it. None = nothing to hand off."""
        return None
