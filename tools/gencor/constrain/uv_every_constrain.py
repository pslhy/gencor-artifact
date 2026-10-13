from constrain.policy_b_constrain import (
    UNBOUND,
    NameCheck,
    PolicyBConstrain,
    UndefinedVariableCheckResult,
)


class UVEveryConstrain(PolicyBConstrain):
    """Recheck every use occurrence, including previously accepted names."""

    def on_accept(self, view, terminals):
        self._live_first = None
        # Retain every target position; symbols_to_check applies the current
        # bnd gate each time, including names whose role was ambiguous at commit.
        self.to_be_open.extend(
            (self.transduced_len + i, terminal.value.strip())
            for i, terminal in enumerate(terminals)
            if terminal.type in self.attributed_symbols
        )
        self.terminals.extend(terminals)
        self.transduced_len += len(terminals)

    def symbols_to_check(self, view, terminal_seq, last_forming=True):
        if not terminal_seq or terminal_seq[-1].type != "$END":
            return super().symbols_to_check(view, terminal_seq, last_forming)

        # $END completes the parse without shifting a terminal. Keep it in the
        # sequence for EOS hooks, but exclude it from attribute position counts.
        ignore = set(self.incremental_parser.base_parser.lexer_conf.ignore) | {"$END"}
        total_len = self.transduced_len + sum(t.type not in ignore for t in terminal_seq)
        positions = self.to_be_open + [
            (self.transduced_len + i, terminal.value.strip())
            for i, terminal in enumerate(terminal_seq)
            if terminal.type in self.attributed_symbols
        ]
        name_checks = []
        for term_idx, target_name in positions:
            n = total_len - term_idx - 1
            if UNBOUND in self._get_nth_last_token_bnd(view, n):
                continue
            if self._skip_immediate_check(view, n, False):
                continue
            name_checks.append(NameCheck(term_idx, target_name, qual=self._qual_of(view, n)))

        name_checks.extend(self._extra_name_checks(view, terminal_seq, total_len))
        return UndefinedVariableCheckResult(terminal_seq, name_checks=name_checks)
