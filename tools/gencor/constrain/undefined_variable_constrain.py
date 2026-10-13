import time
from dataclasses import dataclass, field
from typing import Any

from lark import Token

from constrain.semantic_constrain import SemanticConstrain


BOUND = True
UNBOUND = False


def can_catch(tctx, cctx):
    for c in cctx:
        if c == "U":
            return False
    for i, t in enumerate(tctx):
        if i >= len(cctx):
            return False
        if t == "U":
            return True
    return False


def has_throw(ctx):
    return "U" in ctx


@dataclass
class NameCheck:
    term_idx: int
    target_name: str
    allow_prefix: bool = False
    # True when the occurrence is a dotted-access head (carries bnd_if_module):
    # the auto-import extension may resolve a missing qual head by reserving an
    # import instead of rejecting. Populated only when an extension asks for it
    # (_wants_qual), so the plain constrain pays nothing.
    qual: bool = False


@dataclass
class UndefinedVariableCheckResult:
    terminal_seq: list
    name_checks: list[NameCheck] = field(default_factory=list)
    rejected: bool = False


class UndefinedVariableConstrain(SemanticConstrain):
    check_every_terminal = False

    # Extension knobs (see forward_callee_constrain / auto_import_constrain):
    # subclasses flip _wants_qual to have NameChecks carry the qual-head flag.
    _wants_qual = False

    # Cross-commit handoff (see adopt_analysis / hand_off_analysis).
    # _adopted: (variables, prefixes|None) reused at the current FIRST position.
    # _pending: (variables, prefixes|None) actually used at this step's LAST
    #           position, to be handed off on commit.
    _adopted = None
    _pending = None
    # handoff-None re-seed: the committed remainder (REM) and the per-step cache of
    # its analysis, reused across the step's candidates (all extend REM).
    _remainder = ""
    _live_first = None

    def __init__(self, incremental_parser, lsp_factory=None):
        if lsp_factory is None:
            from lsp.LSPScopeLens import LSPScopeLens

            lsp_factory = LSPScopeLens
        self.statics = {}
        self.incremental_parser = incremental_parser
        # Terminals this (unbound) check inspects: ONLY those carrying a `bnd`
        # attribute. Using the parser's full attributed_symbols would also pull
        # in terminals annotated solely for another attribute (e.g. the `(`,
        # module names and operators that carry `bnd_if_module` in the ummac
        # grammar), which this check would then wrongly treat as value usages.
        self.attributed_symbols = incremental_parser.symbols_for_attr("bnd")
        # Symbols a `ctx{...}` annotation writes a marker onto (the comprehension
        # 'U'/'R' carriers). The catch-context future query only needs these, so
        # restricting to them avoids evaluating inherited attrs for every reachable
        # symbol -- the dominant cost of an unrestricted future view.
        self._catch_ctx_symbols = self._compute_catch_ctx_symbols()
        self.lsp_factory = lsp_factory
        self.lsp = self.lsp_factory()
        # Pay the LSP cold start here (constrainer construction happens before the
        # model loads), so it is off the generation clock and not re-paid per test.
        if hasattr(self.lsp, "warmup"):
            self.lsp.warmup()
        self._reset_state()

    def _compute_catch_ctx_symbols(self):
        rules = getattr(self.incremental_parser.base_parser, "rules", None) or []
        sources = set()
        for rule in rules:
            sem_funcs = getattr(rule.options, "sem_funcs", None)
            if not sem_funcs:
                continue
            for func, args in sem_funcs:
                if getattr(func, "__name__", None) != "ctx":
                    continue
                # args are (value, index) pairs; the indices name the carriers.
                # Only 'R' carriers can CATCH a forward use -- 'U' carriers never
                # catch (can_catch bails on any U in the future ctx) and 'B'
                # carriers (function bodies) resolve at EOS, not by a sibling.
                # Restricting keeps the future view small.
                for k in range(1, len(args), 2):
                    if "R" not in str(args[k - 1]):
                        continue
                    try:
                        idx = int(args[k])
                    except (TypeError, ValueError):
                        continue
                    if 0 <= idx < len(rule.expansion):
                        sources.add(rule.expansion[idx].name)
        # None means "no ctx markers in this grammar" -> nothing to query.
        return sources or None

    def close(self):
        try:
            self.lsp.close()
        except Exception:
            pass

    def reset(self):
        # Cheap reset: reuse the warm server process, just clear its document.
        # (Was close()+lsp_factory(), which respawned the server -- ~1.2s -- per test.)
        if hasattr(self.lsp, "reset_document"):
            self.lsp.reset_document()
        else:
            self.close()
            self.lsp = self.lsp_factory()
        self._reset_state()

    def _reset_state(self):
        self.transduced_len = 0
        self.to_be_open = []
        self.can_throw = []
        self.terminals = []

    def on_accept(self, view, terminals):
        self._live_first = None          # new step -> drop the within-step re-seed
        transduced_len = len(terminals)
        self.terminals.extend(terminals)

        def is_nth_token_unbound(n):
            bnds = self._get_nth_last_token_bnd(
                view,
                transduced_len + self.transduced_len - n - 1,
            )
            return len(bnds) == 1 and UNBOUND in bnds

        def is_nth_token_throwable(n):
            ctxs = self._get_nth_last_token_ctx(
                view,
                transduced_len + self.transduced_len - n - 1,
            )
            return any(has_throw(ctx) for ctx in ctxs)

        self.to_be_open = [
            item for item in self.to_be_open if not is_nth_token_unbound(item[0])
        ]
        cannot_throw = [
            item for item in self.can_throw if not is_nth_token_throwable(item[0])
        ]
        self.can_throw = [
            item for item in self.can_throw if is_nth_token_throwable(item[0])
        ]

        for i, value in cannot_throw:
            bnds = self._get_nth_last_token_bnd(
                view,
                transduced_len + self.transduced_len - i - 1,
            )
            if len(bnds) > 1 and UNBOUND in bnds:
                variables = self._get_variables_from_terminals(self.terminals, i)
                if value not in variables:
                    self.to_be_open.append((i, value))

        for i, terminal in enumerate(terminals):
            if terminal.type not in self.attributed_symbols:
                continue

            ctxs = self._get_nth_last_token_ctx(
                view,
                transduced_len - i - 1,
            )
            bnds = self._get_nth_last_token_bnd(
                view,
                transduced_len - i - 1,
            )
            if any(has_throw(ctx) for ctx in ctxs) and BOUND in bnds:
                self.can_throw.append((i + self.transduced_len, terminal.value.strip()))
                continue
            if len(bnds) > 1 and UNBOUND in bnds:
                variables = self._get_variables_from_terminals(
                    self.terminals,
                    self.transduced_len + i,
                )
                if terminal.value.strip() not in variables:
                    self._add_stat("tagcor_add_to_be_open")
                    self.to_be_open.append((i + self.transduced_len, terminal.value.strip()))

        self.transduced_len += transduced_len

    def symbols_to_check(
        self,
        view: Any,
        terminal_seq: list,
        last_forming: bool = True,
    ) -> UndefinedVariableCheckResult:
        name_checks = []
        ignore = self.incremental_parser.base_parser.lexer_conf.ignore

        terminal_len = len(terminal_seq)
        if terminal_seq and terminal_seq[-1].type in ignore:
            terminal_len -= 1

        total_len = terminal_len + self.transduced_len
        for free_idx, target_name in self.to_be_open:
            n = total_len - free_idx - 1
            bnds = self._get_nth_last_token_bnd(view, n)
            if UNBOUND in bnds:
                continue
            if self._skip_immediate_check(view, n, False):
                continue
            name_checks.append(NameCheck(free_idx, target_name, qual=self._qual_of(view, n)))

        if self.can_throw:
            future_ctxs = self._future_terminal_ctxs(view)
            for throw_idx, target_name in self.can_throw:
                n = total_len - throw_idx - 1
                ctxs = self._get_nth_last_token_ctx(view, n)
                if any(can_catch(ctx, cctx) for ctx in ctxs for cctx in future_ctxs):
                    continue

                bnds = self._get_nth_last_token_bnd(view, n)
                if len(bnds) == 1 and BOUND in bnds:
                    if self._skip_immediate_check(view, n, False):
                        continue
                    name_checks.append(NameCheck(throw_idx, target_name, qual=self._qual_of(view, n)))

        shifted_terminal_len = sum(1 for term in terminal_seq if term.type not in ignore)
        for i, terminal in enumerate(terminal_seq):
            if terminal.type not in self.attributed_symbols:
                continue

            n = shifted_terminal_len - i - 1
            bnds = self._get_nth_last_token_bnd(view, n)
            if UNBOUND in bnds:
                continue

            ctxs = self._get_nth_last_token_ctx(view, n)
            if any(has_throw(ctx) for ctx in ctxs):
                cctxs = self._future_terminal_ctxs(view)
                tctxs = {ctx for ctx in ctxs if has_throw(ctx)}
                if any(can_catch(tctx, cctx) for tctx in tctxs for cctx in cctxs):
                    continue

            forming = last_forming and i == len(terminal_seq) - 1
            if self._skip_immediate_check(view, n, forming):
                continue

            name_checks.append(
                NameCheck(
                    self.transduced_len + i,
                    terminal.value.strip(),
                    allow_prefix=forming,
                    qual=self._qual_of(view, n),
                )
            )

        name_checks.extend(self._extra_name_checks(view, terminal_seq, total_len))

        return UndefinedVariableCheckResult(
            terminal_seq,
            name_checks=name_checks,
        )

    # ------------------------------------------------------------------ #
    # Extension hooks (forward_callee_constrain / auto_import_constrain).
    # The plain constrain keeps its exact behavior through these defaults.
    # ------------------------------------------------------------------ #

    def _skip_immediate_check(self, view, n_from_last, forming):
        """True = do not check this occurrence at this step (it is deferred)."""
        return False

    def _extra_name_checks(self, view, terminal_seq, total_len):
        """Additional NameChecks owed at this step (deferred obligations)."""
        return []

    def _qual_of(self, view, n_from_last):
        """Whether the occurrence can be a dotted-access receiver (the grammar's
        `qual` head marking; True while the getattr production is still a live
        candidate)."""
        if not self._wants_qual:
            return False
        return True in view.nth_last(n_from_last, "qual")

    def _on_missing(self, name_check):
        """True = a failing NameCheck is acceptable anyway (e.g. auto-import)."""
        return False

    def analyze(
        self,
        symbols_to_check: UndefinedVariableCheckResult,
    ) -> bool:
        if symbols_to_check.rejected:
            return False
        if not symbols_to_check.name_checks:
            self._pending = None
            return True
        terminal_seq = symbols_to_check.terminal_seq

        # Hand off ONLY the terminal_seq's LAST position (the realizable): _pending
        # stays None unless a name-check sits exactly there. Handing off an earlier
        # name-check (e.g. `task_func` when the step is `(L` and the last terminal
        # is `(`) mis-seeds the next step's first position, false-rejecting there.
        pending = None
        last_idx = self.transduced_len + len(terminal_seq) - 1
        for name_check in symbols_to_check.name_checks:
            first = name_check.term_idx == self.transduced_len
            if first and self._adopted is not None:
                # handoff from the previous commit (the realizable TN carried over).
                variables, prefixes = self._adopted
            elif first and self._live_first is not None:
                # within-step reuse of this step's own REM re-seed.
                variables, prefixes = self._live_first
            elif first and self._remainder:
                # handoff was None but T1 IS a name-check here: re-derive what the
                # handoff would have been by querying the committed remainder ONCE
                # (vars starting with REM -- name-independent), cache it for the
                # step's other candidates (all extend REM), and propagate via _pending.
                variables = self._get_variables_from_terminals(
                    self.terminals + [Token("NAME", self._remainder)],
                    len(self.terminals),
                )
                prefixes = self._prefixes_of(variables)
                self._live_first = (variables, prefixes)
            else:
                variables = self._get_variables_from_terminals(
                    self.terminals + terminal_seq,
                    name_check.term_idx,
                )
                prefixes = None
            if name_check.allow_prefix:
                if prefixes is None:
                    prefixes = self._prefixes_of(variables)
                is_feasible_token = name_check.target_name in prefixes
            else:
                is_feasible_token = name_check.target_name in variables

            # Hand off ONLY when this check is the terminal_seq's last position.
            if name_check.term_idx == last_idx:
                pending = (variables, prefixes)

            if not is_feasible_token:
                if self._on_missing(name_check):
                    continue
                self._pending = pending
                return False

        self._pending = pending
        return True

    def adopt_analysis(self, result, remainder=""):
        self._adopted = result
        self._remainder = (remainder or "").strip()

    def hand_off_analysis(self, remainder=""):
        # The (variables, prefixes) actually used at this step's last position, or
        # None. NOT re-analyzed: if nothing was used, that position was not a
        # name-check anywhere = not needed. Should the next step need it, it
        # queries live (within-step reuse comes from _adopted when non-None).
        return self._pending

    def _get_variables_from_terminals(self, terminals, term_idx):
        lsp_start = time.time()
        variables = self.lsp.get_variables_from_terminals(terminals, term_idx)
        self._add_elapsed("tagcor_lsp_time", lsp_start)
        self._add_stat("tagcor_lsp_used")
        self._add_stat("tagcor_lsp_check_time", self.lsp.check_time)
        self._add_stat("tagcor_lsp_autocomplete_time", self.lsp.autocomplete_time)
        return variables

    def _get_nth_last_token_bnd(self, view, n):
        tag_check_start = time.time()
        values = view.nth_last(n, "bnd")
        self._add_elapsed("tagcor_tag_check_time", tag_check_start)
        self._add_stat("tagcor_tag_check")
        return values

    def _get_nth_last_token_ctx(self, view, n):
        stag_check_start = time.time()
        values = view.nth_last(n, "ctx")
        self._add_elapsed("tagcor_tag_check_time", stag_check_start)
        self._add_stat("tagcor_tag_check")
        return {self._ctx_attr_to_string(value) for value in values}

    def _future_terminal_ctxs(self, view):
        # A catch context (e.g. a comprehension's 'R') is carried by a nonterminal
        # (comp_fors), not a NAME terminal, and sits one sibling past the element.
        # Query ctx only on the symbols a `ctx{...}` annotation marks -- the catcher
        # is among them, and restricting avoids evaluating inherited attrs for every
        # reachable symbol (the cost of an unrestricted future view).
        #
        # TODO(perf): still ~12ms/call -- view.future runs compute_child_inherited
        # per ctx-source symbol each call. tag-lark's can_come_term_with_tag caches
        # a static grammar reachability (RuleAnalyzer) and does a per-call stack
        # walk with ZERO attribute evaluation. Porting that static ctx-marker
        # reachability to sem-lark would bring this to ~tag-lark speed.
        if self._catch_ctx_symbols is None:
            return set()
        tag_check_start = time.time()
        values = view.future("ctx", self._catch_ctx_symbols, symbol_kind="all")
        elapsed = time.time() - tag_check_start
        # Dedicated accounting for building the future view, kept separate from the
        # lumped tag-check time so the future-view cost is visible in stats.
        self._add_stat("tagcor_future_time", elapsed)
        self._add_stat("tagcor_future_calls")
        self._add_stat("tagcor_tag_check_time", elapsed)
        self._add_stat("tagcor_tag_check")
        return {self._ctx_attr_to_string(value) for value in values}

    def _ctx_attr_to_string(self, value):
        if value is None:
            return ""
        if isinstance(value, str):
            return value
        return "".join(value)

    def _prefixes_of(self, variables):
        prefixes = {""}
        for variable in variables:
            prefix = ""
            for char in variable:
                prefix += char
                prefixes.add(prefix)
        return prefixes

    def _add_elapsed(self, key, start_time):
        self._add_stat(key, time.time() - start_time)

    def _add_stat(self, key, value=1):
        self.statics[key] = self.statics.get(key, 0) + value
