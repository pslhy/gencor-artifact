import time
from dataclasses import dataclass, field
from typing import Any

from constrain.semantic_constrain import SymbolCheckResult
from constrain.undefined_variable_constrain import UndefinedVariableConstrain


MODULE = "MODULE"
UNKNOWN = "UNKNOWN"


@dataclass
class ModuleMemberCheckResult(SymbolCheckResult):
    """Check result plus base expression spans aligned with ``terminal_seq``."""

    # A concrete member NAME normally has one base expression span, but attrs are
    # collected from all surviving candidates, so keep the representation permissive.
    base_expr_spans: list[list[Any]] = field(default_factory=list)
    # Whether terminal_seq's last element is a still-extendable lexeme (see
    # SemanticConstrain.symbols_to_check); gates the prefix leniency in analyze.
    last_forming: bool = True


class UndefinedModuleMemberAccessConstrain(UndefinedVariableConstrain):
    """Deferred UMMAC constraint.

    The semantic grammar marks a member NAME with
    ``NAME.inh.bnd_if_module = base_expr_span``. This constraint reads that
    span after speculative parsing and asks ScopeLens whether the base is a
    module and which members are available.
    """

    # Cross-commit handoff: per-candidate {tuple(base_span): (is_module, members|None)}
    # at this step's last member (or a DOT-prefetched upcoming member), reused at
    # the next step's matching base span (see adopt/hand_off / _resolve_candidates).
    _adopted = None
    _pending = None

    def __init__(self, incremental_parser, lsp_factory=None):
        super().__init__(incremental_parser, lsp_factory)
        # This check inspects terminals carrying `bnd_if_module` (the member,
        # the submodules, the operator, the '('), NOT the `bnd` value-usage set
        # that UndefinedVariableConstrain restricted us to.
        self.attributed_symbols = incremental_parser.symbols_for_attr("bnd_if_module")

    def _reset_state(self):
        self.transduced_len = 0
        self.terminals = []
        self._member_cache = {}          # tuple(base_span) -> (is_module, members) this committed state

    def on_accept(self, view, terminals):
        self._member_cache = {}          # committed state changed -> per-span cache stale
        self.terminals.extend(terminals)
        self.transduced_len += len(terminals)

    def adopt_analysis(self, result, remainder=""):
        # remainder is unused here now (members are queried full, not REM-seeded),
        # but the signature stays for the shared adopt/hand_off contract.
        self._adopted = result

    def hand_off_analysis(self, remainder=""):
        # base_expr_span is only known per check (from the parse), so there is no
        # on-the-spot re-analysis here -- hand off only an actually-used result.
        return self._pending

    def symbols_to_check(
        self,
        view: Any,
        terminal_seq: list,
        last_forming: bool = True,
    ) -> ModuleMemberCheckResult:
        term_to_check = [False for _term in terminal_seq]
        base_expr_spans = [[] for _term in terminal_seq]
        ignore = self.incremental_parser.base_parser.lexer_conf.ignore
        shift_index_by_seq_index = {}
        shifted_index = 0
        for seq_index, terminal in enumerate(terminal_seq):
            if terminal.type in ignore:
                continue
            shift_index_by_seq_index[seq_index] = shifted_index
            shifted_index += 1
        terminal_len = len(shift_index_by_seq_index)

        for seq_index, terminal in enumerate(terminal_seq):
            if (
                terminal.type not in self.attributed_symbols
                or seq_index not in shift_index_by_seq_index
            ):
                continue

            attr_values = self._get_nth_last_token_bnd_if_module(
                view,
                terminal_len - shift_index_by_seq_index[seq_index] - 1,
            )

            # None is the inherited default. Any non-None value is expected to
            # be an expression span and should fail loudly if malformed.
            base_expr_span_candidates = [
                value for value in attr_values if value is not None
            ]
            if not base_expr_span_candidates:
                continue
            base_expr_spans[seq_index] = base_expr_span_candidates
            term_to_check[seq_index] = True

        return ModuleMemberCheckResult(
            terminal_seq,
            term_to_check,
            base_expr_spans=base_expr_spans,
            last_forming=last_forming,
        )

    def analyze(
        self,
        symbols_to_check: ModuleMemberCheckResult,
    ) -> bool:
        if symbols_to_check.rejected:
            return False

        if not any(symbols_to_check.term_to_check):
            self._pending = None
            return True

        terminal_seq = symbols_to_check.terminal_seq
        pending = None
        for seq_index, (should_check, terminal) in enumerate(
            zip(symbols_to_check.term_to_check, terminal_seq)
        ):
            if not should_check:
                continue

            base_expr_spans = symbols_to_check.base_expr_spans[seq_index]
            if not base_expr_spans:
                continue

            target_name = terminal.value.strip()
            forming = symbols_to_check.last_forming and seq_index == len(terminal_seq) - 1

            # Per-candidate {span: (is_module, members)} over the CURRENT base
            # spans. A UNION across candidates would let a member that exists only
            # in a base the parse has since pruned slip through (member1 lives in
            # module2 but the surviving base is module1); keying by span drops the
            # dead candidate. Members are queried FULL and reused by span, so the
            # reject loop and the DOT-prefetch don't re-query.
            per_cand = self._resolve_candidates(base_expr_spans, terminal_seq)

            # Hand off the LAST terminal's (= next step's first) per-candidate map.
            if seq_index == len(terminal_seq) - 1:
                pending = per_cand

            # Feasible iff SOME surviving base candidate admits the member.
            if not any(
                self._candidate_allows(entry, target_name, forming)
                for entry in per_cand.values()
            ):
                self._pending = pending
                self._add_stat("ummac_reject")
                return False

        self._pending = pending
        return True

    def _resolve_candidates(self, base_expr_spans, terminal_seq):
        """Per-candidate {tuple(span): (is_module, members|None)} over base_expr_spans.

        Reuse an entry from the carried handoff (``_adopted``, matched by SPAN so a
        base the parse has since pruned is dropped -- the stale-union fix) or the
        within-committed-state cache (``_member_cache``, keyed by base TEXT). The
        text key lets a base still sitting in the remainder / candidate feed (not
        yet committed) be reused across the reject loop's candidates -- checking
        `os.z` computes `os`'s members, so `os.p` need not recompute them -- while
        still keeping `os` and `sys` apart at the same slot (same span, different
        text). Within one committed state a name has one binding, so equal text =>
        same base => same members; ``on_accept`` clears the cache each commit.
        Members are fetched with an EMPTY prefix (the full set) so a reused entry is
        a superset for every member token; the per-token prefix is applied locally
        in :meth:`_candidate_allows`.
        """
        per_cand = {}
        for base_expr_span in base_expr_spans:
            span_key = tuple(base_expr_span)
            entry = (self._adopted or {}).get(span_key)
            if entry is None:
                text_key = self._base_text(base_expr_span, terminal_seq)
                entry = self._member_cache.get(text_key)
                if entry is None:
                    status = self._module_status_for_base_expr_span(base_expr_span, terminal_seq)
                    is_module = status == MODULE
                    members = (
                        self._member_names_for_module_expr_span(base_expr_span, "", terminal_seq)
                        if is_module
                        else None
                    )
                    entry = (is_module, members)
                    self._member_cache[text_key] = entry
            per_cand[span_key] = entry
        return per_cand

    def _base_text(self, base_expr_span, terminal_seq):
        """Reconstructed source text of the base expression span (cache key)."""
        start, end = base_expr_span
        all_terms = self.terminals + terminal_seq
        return "".join(all_terms[i].value for i in range(start, end + 1)).strip()

    def _candidate_allows(self, entry, target_name, forming):
        """Whether ONE base candidate admits the member token.

        Non-module base -> `.member` is a field access (always ok); a failed
        member query stays permissive; otherwise the member must be in the
        module's members -- as a PREFIX only while it is still the raw last
        terminal (``forming``). Any trailing terminal (even an %ignored
        whitespace) completes the lexeme, so it must then match exactly: the old
        last-NON-IGNORE test let ``List.combin`` / ``List.t`` pass on the prefix
        of combine / tl and, since this constraint keeps no deferred list, they
        were never exact-checked again (escaped HumanEval/147, MBPP/296).
        """
        is_module, members = entry
        if not is_module:
            return True
        if members is None:
            return True
        if forming:
            # target is a prefix of some member (members is the FULL set now, so
            # test membership directly instead of materialising every prefix).
            return any(member.startswith(target_name) for member in members)
        return target_name in members

    def _get_nth_last_token_bnd_if_module(self, view, n):
        tag_check_start = time.time()
        values = view.nth_last(n, "bnd_if_module")
        self._add_elapsed("ummac_tag_check_time", tag_check_start)
        self._add_stat("ummac_tag_check")
        return values

    def _module_status_for_base_expr_span(
        self,
        base_expr_span,
        terminal_seq,
    ):
        """Return whether the base expression span resolves to a module."""

        start, end = base_expr_span
        if end < start:
            raise ValueError("base expression span end must not be before start")
        if start < 0 or end >= len(self.terminals) + len(terminal_seq):
            raise ValueError("base expression span is outside the terminal sequence")

        status_start = time.time()
        if hasattr(self.lsp, "module_status"):
            status = self.lsp.module_status(
                self.terminals + terminal_seq,
                base_expr_span,
            )
        else:
            status = None

        self._add_elapsed("ummac_module_status_time", status_start)
        self._add_stat("ummac_module_status_check")
        if status is None:
            return UNKNOWN
        return status

    def _member_names_for_module_expr_span(
        self,
        base_expr_span,
        prefix,
        terminal_seq,
    ):
        """Return member names available from a module base expression span."""

        member_start = time.time()
        if hasattr(self.lsp, "member_names"):
            names = self.lsp.member_names(
                self.terminals + terminal_seq,
                base_expr_span,
                prefix=prefix,
            )
        else:
            names = None

        self._add_elapsed("ummac_member_names_time", member_start)
        self._add_stat("ummac_member_names_check")
        if names is None:
            return None
        return set(names)
