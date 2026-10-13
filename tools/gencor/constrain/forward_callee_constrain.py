"""Forward-global deferral for CALLEES (tools/method.pdf sec.3, callee-only).

A use inside a function body whose binder may legally appear LATER at module
scope (``def main(): return helper()`` before ``helper = ...``) must not be
rejected when it occurs; its enclosing scope stays open until the module ends,
so the check belongs at EOS. Deferring every body name would gut the mask, so
only names that can still be a CALL HEAD are deferred (functions are where
forward references actually happen in Python).

Grammar support (python_ummac_v4): function/lambda bodies append 'B' to ctx;
the funccall alternatives mark the callee subexpression with ``cal = True``
(``NAME.inh.cal`` accumulates). While the token after a name is unseen, its cal
candidates are ambiguous ({True, None}) and collapse on disambiguation.

Behavior deltas vs the base uv constrain, all through the extension hooks:
  * a FORMING name in a 'B' region is never prefix-checked (callee-ness is
    unknowable mid-name -- the accepted mask-power loss);
  * a completed 'B'-region use that can still be a callee is not checked; it
    becomes `pending` at commit and either
      - collapses to non-callee -> checked immediately (the disambiguating
        token is rejected if the name is undefined -- retroactive rejection of
        the name itself is impossible under append-only decoding), or
      - collapses to callee -> `deferred` until EOS;
  * at EOS ($END candidate or a closing ``` fence) every pending +
    deferred callee must resolve against the final program, else reject.
"""

from constrain.undefined_variable_constrain import (
    BOUND,
    UNBOUND,
    NameCheck,
    UndefinedVariableConstrain,
    can_catch,
    has_throw,
)


def _has_b(ctxs):
    return any("B" in ctx for ctx in ctxs)


class ForwardCalleeConstrain(UndefinedVariableConstrain):
    def _reset_state(self):
        super()._reset_state()
        self.pending_callees = []   # (term_idx, name): 'B' region, cal ambiguous
        self.deferred_callees = []  # (term_idx, name): confirmed callee -> EOS
        # Terminals that CLOSE the module scope in the augmented grammar: after
        # the closing code fence no statement can follow, so a deferred callee
        # can never be resolved past it -- the obligations must hold BEFORE the
        # fence shifts (rejecting the fence token itself), exactly like $END.
        # Without this the fence commits, only newlines stay grammatical, and
        # the model floods '\n' until the timeout (observed: MBPP/731, bare
        # `sqrt` deferred, ``` accepted, 1k+ newline tokens).
        self._scope_closing_types = frozenset(
            t.name
            for t in self.incremental_parser.base_parser.terminals
            if t.pattern.type == "str" and t.pattern.value == "```"
        )

    # -- attribute reads ----------------------------------------------------
    def _cal_cands(self, view, n_from_last):
        return view.nth_last(n_from_last, "cal")

    def _in_b_region(self, view, n_from_last):
        return _has_b(self._get_nth_last_token_ctx(view, n_from_last))

    # -- hook: gate the immediate checks -------------------------------------
    def _skip_immediate_check(self, view, n_from_last, forming):
        if not self._in_b_region(view, n_from_last):
            return False
        if forming:
            self._add_stat("fg_forming_skips")
            return True
        if True in self._cal_cands(view, n_from_last):
            self._add_stat("fg_possible_callee_skips")
            return True
        return False

    # -- commit: track possible callees; collapse pendings -------------------
    def on_accept(self, view, terminals):
        base_len = self.transduced_len
        super().on_accept(view, terminals)

        for i, term in enumerate(terminals):
            if term.type not in self.attributed_symbols:
                continue
            n = self.transduced_len - (base_len + i) - 1
            if BOUND not in self._get_nth_last_token_bnd(view, n):
                continue
            if not self._in_b_region(view, n):
                continue
            if True in self._cal_cands(view, n):
                self.pending_callees.append((base_len + i, term.value.strip()))

        still_pending = []
        for idx, name in self.pending_callees:
            n = self.transduced_len - idx - 1
            if BOUND not in self._get_nth_last_token_bnd(view, n):
                continue  # resolved to a BINDER (e.g. assignment target): not a use
            cands = self._cal_cands(view, n)
            if True in cands and len(cands) > 1:
                still_pending.append((idx, name))          # still ambiguous
            elif True in cands:
                self.deferred_callees.append((idx, name))  # confirmed callee
                self._add_stat("fg_deferred_callees")
            # collapsed to non-callee: the disambiguating token's trial already
            # checked it via _extra_name_checks -- if it committed, the name
            # resolved; drop it.
        self.pending_callees = still_pending

    # -- hook: obligations at each trial / at EOS -----------------------------
    def _module_scope_closes(self, terminal_seq):
        """The module scope ends in this sequence: $END, or a closing code
        fence (after which no statement is grammatical)."""
        if terminal_seq and terminal_seq[-1].type == "$END":
            return True
        return any(t.type in self._scope_closing_types for t in terminal_seq)

    def _extra_name_checks(self, view, terminal_seq, total_len):
        checks = []
        is_eos = self._module_scope_closes(terminal_seq)

        for idx, name in self.pending_callees:
            n = total_len - idx - 1
            # A pending entry whose role turned out to be (or may still be) a
            # BINDER is never a use-check: e.g. `set1 = ...` -- without this
            # guard the assignment target gets checked as an undefined USE on
            # every candidate, rejecting everything (same discipline as the
            # base to_be_open handling).
            if UNBOUND in self._get_nth_last_token_bnd(view, n):
                continue
            if self._still_catchable(view, n):
                continue
            cands = self._cal_cands(view, n)
            if is_eos or True not in cands:
                # non-callee after all (or module closing): check now
                checks.append(NameCheck(idx, name, qual=self._qual_of(view, n)))

        if is_eos:
            for idx, name in self.deferred_callees:
                n = total_len - idx - 1
                if UNBOUND in self._get_nth_last_token_bnd(view, n):
                    continue
                if self._still_catchable(view, n):
                    continue
                checks.append(NameCheck(idx, name, qual=self._qual_of(view, n)))
        return checks

    def _still_catchable(self, view, n_from_last):
        """ctxfixed's U branch, applied to the deferral obligations: a use in a
        still-open use-region (e.g. `len(head.x` may become a comprehension
        whose `for` binds `head`) is not yet decidable -- checking it here
        rejected every member candidate after `head.` (MBPP/448 storm). At EOS
        the future set is empty, so the obligation is enforced regardless."""
        ctxs = self._get_nth_last_token_ctx(view, n_from_last)
        tctxs = {ctx for ctx in ctxs if has_throw(ctx)}
        if not tctxs:
            return False
        cctxs = self._future_terminal_ctxs(view)
        return any(can_catch(tctx, cctx) for tctx in tctxs for cctx in cctxs)
