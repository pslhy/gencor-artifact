"""Symbol-kind constraint (general, LSP-completion-kind backed).

A generalisation of constrain/undefined_variable_constrain.py from "value usage"
to ANY identifier whose grammar position allows a SET of LSP completion kinds.
Where the unbound check asks "is this lowercase name an in-scope value (kind
12)?", this asks "does this name resolve to a definition of one of the kinds the
grammar allows HERE?".

The grammar stamps an identifier with a ``kind`` attribute = the LSP kind THAT
rule treats it as (9=Module path head, 4=Constructor, 8=module-type, ...). At a
position reachable via several role-rules the attribute view returns the UNION
(e.g. a bare CAPITALIZED in an expr is either a constructor or a module head, so
{4,9}). The check intersects that union with the name's REAL kinds from the LSP:

  * empty intersection at the bare stage  -> the name is valid as NONE of the
    allowed roles -> a hallucination (`Strsplit`) -> reject.
  * as the parse NARROWS the grammar kinds (the dot picks 9, a value position
    picks 4, ...) the intersection is re-checked: a head committed while still
    ambiguous is TRACKED (to_be_open style) and re-checked every step until its
    kind resolves. If it commits to a kind the name does NOT have (`List` used as
    a bare value = kind 4, but List is only a module = kind 9) the intersection
    empties and we reject; once it resolves to a single consistent kind it is
    dropped. (``kind`` is in ACCUMULATE_ATTRS, so a committed head stays visible.)

Resolves the constructor/module ambiguity WITHOUT waiting for the dot: a name
valid as ANY allowed kind passes the bare stage; only a true hallucination fails
there. See the report for the residual case (an invalid use that a reduction
buries before its narrowed kind ever becomes visible, e.g. `List 3`).

Language-agnostic: the kind integers are LSP CompletionItemKind values and the
allowed-kind sets come from the grammar; only the marking (which rule -> which
kind) and the LSP are language specific.
"""
from dataclasses import dataclass, field
from typing import Any

from lark import Token

from constrain.semantic_constrain import SymbolCheckResult
from constrain.undefined_variable_constrain import UndefinedVariableConstrain


@dataclass
class SymbolKindCheckResult(SymbolCheckResult):
    # each entry: (head full-terminal index, value, live grammar kinds,
    #              allow_prefix, actual_kinds_or_None)
    checks: list = field(default_factory=list)


class SymbolKindConstrain(UndefinedVariableConstrain):
    #: attribute the grammar stamps with the LSP kind(s) a position allows.
    ATTR = "kind"

    # Cross-commit handoff (see adopt/hand_off_analysis): the (label, kind) list
    # at this step's last head position, reused at the next step's first head.
    _adopted = None
    _pending = None
    _remainder = ""
    _live_first = None

    def __init__(self, incremental_parser, lsp_factory=None):
        super().__init__(incremental_parser, lsp_factory)
        self.attributed_symbols = incremental_parser.symbols_for_attr(self.ATTR)

    def _reset_state(self):
        self.transduced_len = 0           # committed non-ignore (shifted) count
        self.terminals = []               # committed terminals (incl. ignore)
        # to_be_open-style tracking: committed heads whose kind has not resolved
        # yet. Each: [shifted_idx, full_idx, value, actual_kinds]. Re-checked every
        # step; dropped when the kind resolves to a single consistent value (or it
        # vanishes from the accumulate); rejected when live ∩ actual empties.
        self.tracked = []

    # ---- helpers ----

    def _ignore(self):
        return self.incremental_parser.base_parser.lexer_conf.ignore

    def _live(self, view, depth):
        if depth < 0:
            return frozenset()
        self._add_stat("symkind_tag_check")
        # kind values are SETS of kinds per marking rule (a legacy single int is
        # tolerated); flatten the union over surviving LR candidates -- ambiguity
        # widens the allowed set (lenient direction = sound).
        flat = set()
        for v in (view.nth_last(depth, self.ATTR) or ()):
            if v is None:
                continue
            flat |= v if isinstance(v, (set, frozenset)) else {v}
        return frozenset(flat)

    def adopt_analysis(self, result, remainder=""):
        self._adopted = result
        self._remainder = (remainder or "").strip()

    def hand_off_analysis(self, remainder=""):
        # Actually-used (label, kind) list at this step's last head, or None (not
        # re-analyzed -- a never-analyzed head was not a head there = not needed).
        return self._pending

    def _actual_kinds(self, full, head_idx, value, allow_prefix):
        items = self.lsp.name_kinds(full, head_idx)  # [(label, kind)]
        if allow_prefix:
            return frozenset(k for (l, k) in items if l and l.startswith(value))
        return frozenset(k for (l, k) in items if l == value)

    # ---- commit: maintain the tracked set (real, not speculative, state) ----

    def on_accept(self, view, terminals):
        self._live_first = None          # new step -> drop the within-step re-seed
        ignore = self._ignore()
        seq_shifted = sum(1 for t in terminals if t.type not in ignore)
        total_shifted = self.transduced_len + seq_shifted
        committed = self.terminals + terminals

        # 1) drop resolved tracked heads (committed view)
        kept = []
        for sidx, fidx, value, actual in self.tracked:
            live = self._live(view, total_shifted - sidx - 1)
            if not live:
                continue                              # vanished (buried) -> stop
            if len(live) == 1 and (live & actual):
                continue                              # resolved to one good kind
            if live and not (live & actual):
                continue                              # already inconsistent (defensive)
            kept.append([sidx, fidx, value, actual])  # still ambiguous -> keep
        self.tracked = kept

        # 2) track newly-committed heads (query the LSP once, store the kinds)
        si = self.transduced_len
        base_full = len(self.terminals)
        for i, t in enumerate(terminals):
            if t.type in ignore:
                continue
            if t.type in self.attributed_symbols and self._live(view, total_shifted - si - 1):
                fidx = base_full + i
                actual = self._actual_kinds(committed, fidx, t.value.strip(), False)
                self.tracked.append([si, fidx, t.value.strip(), actual])
            si += 1

        self.terminals = committed
        self.transduced_len = total_shifted

    # ---- speculative check ----

    def symbols_to_check(self, view: Any, terminal_seq: list, last_forming: bool = True) -> SymbolKindCheckResult:
        ignore = self._ignore()
        full = self.terminals + terminal_seq
        seq_shifted = sum(1 for t in terminal_seq if t.type not in ignore)
        total_shifted = self.transduced_len + seq_shifted

        checks = []
        # newly-generated heads in this step (actual queried in analyze; prefix-lenient)
        si = self.transduced_len
        for i, t in enumerate(terminal_seq):
            if t.type in ignore:
                continue
            if t.type in self.attributed_symbols:
                live = self._live(view, total_shifted - si - 1)
                if live:
                    fidx = len(self.terminals) + i
                    # prefix-lenient ONLY if the head is the very last terminal
                    # (still being typed). A trailing ignore token (whitespace /
                    # newline) finalizes the name, so check it exactly -- otherwise
                    # `Str\n` passes as a prefix of `String` and never gets rejected.
                    # last_forming likewise: a postlex-dropped candidate leaves a
                    # COMPLETED head as the raw last element.
                    checks.append((fidx, t.value.strip(), live,
                                   last_forming and fidx == len(full) - 1, None))
            si += 1
        # tracked (committed) heads -- re-check with their stored actual kinds
        for sidx, fidx, value, actual in self.tracked:
            live = self._live(view, total_shifted - sidx - 1)
            if live:
                checks.append((fidx, value, live, False, actual))

        return SymbolKindCheckResult(terminal_seq, [bool(checks)], checks=checks)

    def analyze(self, symbols_to_check: SymbolKindCheckResult) -> bool:
        if symbols_to_check.rejected:
            return False
        full = self.terminals + symbols_to_check.terminal_seq
        # Hand off ONLY the terminal_seq's last head position (see UVC.analyze).
        pending = None
        last_idx = len(self.terminals) + len(symbols_to_check.terminal_seq) - 1
        for fidx, value, live, allow_prefix, actual in symbols_to_check.checks:
            if actual is None:
                first = fidx == len(self.terminals)
                if first and self._adopted is not None:
                    items = self._adopted                       # previous commit's handoff
                elif first and self._live_first is not None:
                    items = self._live_first                    # this step's REM re-seed
                elif first and self._remainder:
                    # handoff None but T1 IS a head: re-derive by querying the
                    # committed remainder once, cache for the step's candidates.
                    items = self.lsp.name_kinds(
                        self.terminals + [Token("NAME", self._remainder)], len(self.terminals))
                    self._live_first = items
                else:
                    items = self.lsp.name_kinds(full, fidx)  # [(label, kind)]
                if fidx == last_idx:
                    pending = items
                if allow_prefix:
                    actual = frozenset(k for (l, k) in items if l and l.startswith(value))
                else:
                    actual = frozenset(k for (l, k) in items if l == value)
            if not (live & actual):
                self._pending = pending
                self._add_stat("symkind_reject")
                return False
        self._pending = pending
        return True

