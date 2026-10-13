"""Experimental whole-prefix diagnostic policy for sem-lark TypeScript.

This module deliberately reuses only ``TypeSemanticConstrain``'s paper-facing
attribute selection, committed-terminal bookkeeping, and source reconstruction.
It does not run the production sem_type frontier, reachability, or heuristic
pipeline.  Keeping the experiment in one subclass makes it removable without
changing the production policy.
"""

import time

from constrain.type_constrain import TypeSemanticConstrain, _VALUE_COMPLETION_KINDS


# ``sem_type_diag`` accepts a trailing @BOUND identifier only when it can grow
# into a contextual value or member completion. Keywords remain excluded: the
# grammar represents supported keywords with their own terminal paths.
_DIAGNOSTIC_MEMBER_COMPLETION_KINDS = {
    "property",
    "method",
    "getter",
    "setter",
    "enum member",
}
_DIAGNOSTIC_BOUND_COMPLETION_KINDS = (
    frozenset(_VALUE_COMPLETION_KINDS) | _DIAGNOSTIC_MEMBER_COMPLETION_KINDS
)


class TypeDiagnosticConstrain(TypeSemanticConstrain):
    """Accept an incomplete prefix unless TSC reports an error in its middle."""

    def _trailing_bound_prefix_allowed(
        self,
        selected_symbols,
        full_tokens,
        code,
        starts,
        ends,
    ):
        """Check a trailing ``Name`` whose parser attribute has ``bnd=True``.

        An unresolved-name diagnostic at the end of incomplete code is normally
        deferred.  For a bound identifier we can decide more precisely: retain
        the prefix only when TypeScript completion has an in-scope value or
        member name beginning with it. Keywords are intentionally excluded.
        This prevents an undefined name from escaping by growing forever while
        TS2304 remains attached to the code suffix.
        """
        if not full_tokens:
            return True
        term = full_tokens[-1]
        if term.type not in self._bnd_syms:
            return True

        view = selected_symbols.get("view")
        if view is None or True not in view.nth_last(0, "bnd"):
            return True

        idx = len(full_tokens) - 1
        try:
            prefix = code[starts[idx]:ends[idx]].strip()
            code_before = code[:starts[idx]]
        except (IndexError, TypeError):
            return True
        if not prefix:
            return True

        allowed = self._trailing_bound_completion_prefix_viable(
            code_before,
            prefix,
        )
        key = "type_diag_bound_prefix_accept" if allowed else "type_diag_bound_prefix_reject"
        self.statics[key] = self.statics.get(key, 0) + 1
        return allowed

    def _trailing_bound_completion_prefix_viable(self, code_before, prefix):
        """Whether ``prefix`` can grow into a visible value/member completion.

        A string index signature permits every identifier even though the
        completion list has no concrete names to enumerate.  Treat its value
        type as the member-access viability signal instead of interpreting an
        empty completion list as an empty property set.
        """
        from lsp.TypeScriptCompilerAPI import _is_suppressed_ambient_global_value

        started = time.perf_counter()
        data = self.ts.inspect(code_before, offset=len(code_before))
        elapsed = time.perf_counter() - started
        self.statics["type_diag_bound_completion_time"] = (
            self.statics.get("type_diag_bound_completion_time", 0.0) + elapsed
        )
        self.statics["type_diag_bound_completion_count"] = (
            self.statics.get("type_diag_bound_completion_count", 0) + 1
        )

        for completion in (data or {}).get("completions", ()) or ():
            if not isinstance(completion, dict):
                continue
            name = str(completion.get("name", ""))
            kind = completion.get("kind")
            if (
                name.startswith(prefix)
                and kind in _DIAGNOSTIC_BOUND_COMPLETION_KINDS
                # lib.d.ts members also carry kindModifiers='declare'. They are
                # contextual members, not ambient globals, so the global-value
                # suppression policy applies only to ordinary value bindings.
                and (
                    kind in _DIAGNOSTIC_MEMBER_COMPLETION_KINDS
                    or not _is_suppressed_ambient_global_value(completion)
                )
            ):
                return True

        member_access = (data or {}).get("memberAccess") or {}
        if (
            member_access.get("stringIndexType")
            and member_access.get("dotAccessAllowed", True)
        ):
            self.statics["type_diag_bound_string_index_accept"] = (
                self.statics.get("type_diag_bound_string_index_accept", 0) + 1
            )
            return True
        return False

    @staticmethod
    def _error_diagnostics(diagnostics):
        """Return semantic errors only.

        Grammar validity is already enforced by the shared sem-lark parser.
        Syntactic diagnostics from TSC mostly describe the intentionally
        incomplete suffix and are outside this experiment's policy.
        """
        return [
            diagnostic
            for diagnostic in diagnostics.get("semantic", ()) or ()
            if diagnostic.get("category") == "Error"
        ]

    @staticmethod
    def _expression_char_spans(
        expressions,
        starts,
        ends,
        code_length,
        terminals=(),
    ):
        """Convert genuine selected expression occurrences to character spans.

        An incomplete function declaration can retain an alternative active
        ``expr`` reading beginning at ``function``.  It is not the expression
        currently being checked: a named ``function IDENT ...`` is a declaration
        in this grammar, while an anonymous function expression begins
        ``function (``.  Drop only that parser ambiguity here so a diagnostic in
        the declaration header is not attributed to the body expression.
        """
        result = []
        for occurrence in expressions:
            try:
                spos, epos, _ = occurrence
                if (
                    epos is None
                    and terminals
                    and terminals[spos].type == "FUNCTION"
                    and spos + 1 < len(terminals)
                    and terminals[spos + 1].type == "IDENT"
                ):
                    continue
                expr_start = starts[spos]
                expr_end = code_length if epos is None else ends[epos]
            except (IndexError, TypeError, ValueError):
                continue
            if expr_start < expr_end:
                result.append((expr_start, expr_end))
        return tuple(result)

    @classmethod
    def _middle_error_contained_in_expression(
        cls,
        diagnostics,
        code_length,
        expression_spans,
    ):
        """Whether a semantic error is both internal and in a selected expr.

        Errors reaching the incomplete code's final point are pending suffix
        errors and are accepted. A middle error rejects only when its source
        span is fully contained in one of the expression occurrences selected
        by ``symbols_to_check``. Merely crossing an expression boundary is not
        enough. Diagnostics without a usable source position do not establish
        containment and are therefore ignored.
        """
        for diagnostic in cls._error_diagnostics(diagnostics):
            try:
                start = int(diagnostic["start"])
                length = max(int(diagnostic.get("length") or 0), 0)
            except (KeyError, TypeError, ValueError):
                continue

            diag_end = start + length
            if diag_end >= code_length:
                continue

            for expr_start, expr_end in expression_spans:
                if length == 0:
                    contained = expr_start <= start < expr_end
                else:
                    contained = expr_start <= start and diag_end <= expr_end
                if contained:
                    return True
        return False

    def analyze(self, selected_symbols):
        """Run one diagnostics-only TSC query when SymbolsToCheck is nonempty."""
        identifiers = selected_symbols.get("identifier_references", ())
        expressions = selected_symbols.get("expressions", ())
        if not identifiers and not expressions:
            self.statics["type_diag_no_items"] = (
                self.statics.get("type_diag_no_items", 0) + 1
            )
            return True

        full_tokens = self.terminals + list(selected_symbols.get("terminal_seq", ()))
        code, starts, ends = self._reconstruct(full_tokens)
        if not code:
            self.statics["type_diag_empty_code"] = (
                self.statics.get("type_diag_empty_code", 0) + 1
            )
            return True

        if not self._trailing_bound_prefix_allowed(
            selected_symbols,
            full_tokens,
            code,
            starts,
            ends,
        ):
            return False

        started = time.perf_counter()
        try:
            data = self.ts.inspect(
                code,
                offset=len(code),
                include_completions=False,
                include_symbols=False,
                include_diagnostics=True,
                skip_hole_probe=True,
            )
        finally:
            elapsed = time.perf_counter() - started
            self.statics["type_diag_api_time"] = (
                self.statics.get("type_diag_api_time", 0.0) + elapsed
            )
            self.statics["type_diag_api_count"] = (
                self.statics.get("type_diag_api_count", 0) + 1
            )
            self._mirror_timing_stats()

        diagnostics = data.get("diagnostics", {}) or {}
        errors = self._error_diagnostics(diagnostics)
        if not errors:
            self.statics["type_diag_no_error_accept"] = (
                self.statics.get("type_diag_no_error_accept", 0) + 1
            )
            return True

        expression_spans = self._expression_char_spans(
            expressions,
            starts,
            ends,
            len(code),
            full_tokens,
        )
        if self._middle_error_contained_in_expression(
            diagnostics,
            len(code),
            expression_spans,
        ):
            self.statics["type_diag_middle_expr_reject"] = (
                self.statics.get("type_diag_middle_expr_reject", 0) + 1
            )
            return False

        self.statics["type_diag_suffix_or_outside_accept"] = (
            self.statics.get("type_diag_suffix_or_outside_accept", 0) + 1
        )
        return True
