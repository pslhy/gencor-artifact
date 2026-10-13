from dataclasses import dataclass
from typing import Any

from constrain.semantic_constrain import SemanticConstrain


@dataclass
class MultipleCheckResult:
    results: list[tuple[SemanticConstrain, Any]]


class MultipleConstrain(SemanticConstrain):
    def __init__(self, constraints):
        self.constraints = list(constraints)
        self.check_every_terminal = any(
            constraint.check_every_terminal for constraint in self.constraints
        )
        self.lsp = self._first_lsp()

    def init_statics(self, statics: Any):
        super().init_statics(statics)
        for constraint in self.constraints:
            constraint.init_statics(statics)

    def close(self):
        closed = set()
        for constraint in self.constraints:
            close = getattr(constraint, "close", None)
            lsp = getattr(constraint, "lsp", None)
            key = id(lsp) if lsp is not None else id(constraint)
            if close is None or key in closed:
                continue
            close()
            closed.add(key)

    def reset(self):
        for constraint in self.constraints:
            constraint.reset()
        self.lsp = self._first_lsp()

    def on_accept(self, view: Any, terminals: list):
        for constraint in self.constraints:
            constraint.on_accept(
                view,
                terminals,
            )

    def adopt_analysis(self, result, remainder=""):
        results = result if result is not None else [None] * len(self.constraints)
        for constraint, r in zip(self.constraints, results):
            constraint.adopt_analysis(r, remainder)

    def hand_off_analysis(self, remainder=""):
        handoffs = [c.hand_off_analysis(remainder) for c in self.constraints]
        if all(h is None for h in handoffs):
            return None
        return handoffs

    def symbols_to_check(
        self,
        view: Any,
        terminal_seq: list,
        last_forming: bool = True,
    ) -> MultipleCheckResult:
        return MultipleCheckResult(
            [
                (
                    constraint,
                    constraint.symbols_to_check(
                        view,
                        terminal_seq,
                        last_forming=last_forming,
                    ),
                )
                for constraint in self.constraints
            ]
        )

    def analyze(
        self,
        symbols_to_check: MultipleCheckResult,
    ) -> bool:
        return all(
            constraint.analyze(result)
            for constraint, result in symbols_to_check.results
        )

    def _first_lsp(self):
        for constraint in self.constraints:
            lsp = getattr(constraint, "lsp", None)
            if lsp is not None:
                return lsp
        return None
