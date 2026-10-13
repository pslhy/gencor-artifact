import json
import os
import re
import subprocess
import sys
import atexit
import time
from pathlib import Path

from lsp.LSP import LSP
from lsp.runtime import backend_environment, backend_path
from lsp.ts_reachability import (
    FunctionPType,
    binary_operator_candidates,
    call_reachable_types,
    computed_member_access_reachable_types,
    is_ts_type_reachable,
    member_access_reachable_types,
    ptype_from_ts_type,
)
from lsp.ts_types_base import AnyPType


IDENT_RE = re.compile(r"^[A-Za-z_$][0-9A-Za-z_$]*$")
VALUE_COMPLETION_KINDS = {
    "parameter",
    "let",
    "const",
    "class",
    "var",
    "function",
    "local function",
    "method",
    "property",
    "getter",
    "setter",
    "alias",
    "enum",
    "enum member",
    "member function",
    "member variable",
    "member get accessor",
    "member set accessor",
}
COMMON_GLOBAL_VALUE_NAMES = (
    "Math",
    "Number",
    "String",
    "Boolean",
    "Array",
    "Object",
    "JSON",
    "Date",
    "RegExp",
    "Error",
    "Set",
    "Map",
    "Promise",
    "parseInt",
    "parseFloat",
    "isNaN",
    "isFinite",
    "NaN",
    "Infinity",
    "console",
    "crypto",
    "Buffer",
    "require",
)
COMMON_GLOBAL_VALUE_RANK = {
    name: rank for rank, name in enumerate(COMMON_GLOBAL_VALUE_NAMES)
}
ALLOWED_AMBIENT_GLOBAL_VALUE_NAMES = set(COMMON_GLOBAL_VALUE_NAMES) | {
    "AggregateError",
    "BigInt",
    "BigInt64Array",
    "BigUint64Array",
    "DataView",
    "Float32Array",
    "Float64Array",
    "Int8Array",
    "Int16Array",
    "Int32Array",
    "RangeError",
    "ReferenceError",
    "SyntaxError",
    "Symbol",
    "TypeError",
    "URIError",
    "Uint8Array",
    "Uint8ClampedArray",
    "Uint16Array",
    "Uint32Array",
    "WeakMap",
    "WeakSet",
    "decodeURI",
    "decodeURIComponent",
    "encodeURI",
    "encodeURIComponent",
}

FRONTIER_PROBE_CLOSURES = (
    "",
    "); }",
    "; }",
    "]; }",
    "}; }",
    ");",
    "];",
    "};",
    ";",
    ")",
    "}",
)


def _is_suppressed_ambient_global_value(item):
    name = item.get("name")
    if name in ALLOWED_AMBIENT_GLOBAL_VALUE_NAMES:
        return False
    # kindModifiers is COMMA-separated ('deprecated,declare'); a whitespace
    # split left `escape`/`unescape` unsuppressed (observed live: the model,
    # blocked from `eval`, escaped to `escape(...)` instead -- mbpp/222 s3).
    kind_modifiers = str(item.get("kindModifiers") or "").replace(",", " ")
    if "declare" in kind_modifiers.split():
        return True
    return item.get("sortText") == "15" and item.get("source") in {None, ""}


def _productive_type_extension(typ, max_depth, root_types):
    return (
        typ.nesting_depth[0] <= max_depth[0]
        and typ.nesting_depth[1] <= max_depth[1]
    ) or bool(typ.root_values - root_types)


class TypeScriptCompilerAPI(LSP):
    """Small Python bridge to the official TypeScript APIs.

    The implementation lives in ts_type_context.js and uses the npm
    `typescript` package directly.  It intentionally does not talk to a
    language-server process.
    """

    # Hard semantic errors that are useful during online pruning.  We keep this
    # list conservative because prefixes can be syntactically incomplete while
    # generation is still valid.
    HARD_ONLINE_DIAGNOSTIC_CODES = {
        2304,   # Cannot find name
        2322,   # Type is not assignable
        2339,   # Property does not exist
        2345,   # Argument is not assignable
        2352,   # Suspicious type assertion between non-overlapping types
        2362,   # LHS of arithmetic operation
        2363,   # RHS of arithmetic operation
        2365,   # Operator cannot be applied
        2532,   # Object is possibly undefined
        2533,   # Object is possibly null or undefined
        2538,   # Type cannot be used as an index type
        2551,   # Property does not exist; did you mean ...
        2552,   # Cannot find name; did you mean ...
        2554,   # Expected N arguments
        2769,   # No overload matches this call
    }

    def __init__(self, root=None, filename="snippet.ts"):
        super().__init__()
        self.root = Path(root or os.getcwd()).resolve()
        self.file = self.root / filename
        self.helper = Path(__file__).with_name("ts_type_context.js")
        self._inspect_cache = {}
        self._completion_cache = {}
        self._typed_suggestion_cache = {}
        self._type_reachable_cache = {}
        self._frontier_current_type_cache = {}
        self._frontier_probe_suffix_cache = {}
        self._frontier_probe_inspect_cache = {}
        self._frontier_probe_closure_cache = {}
        self._span_types_cache = {}
        self._worker = None
        self._use_worker = os.environ.get("GENCOR_TS_TYPE_WORKER", "1") not in {
            "",
            "0",
            "false",
            "False",
        }
        # ---- per-task timing accumulators (reset via reset_timing) ----
        # This shared API object is the ONE persistent handle the constrain threads
        # through every enforcement layer, so all enforcement timing is accumulated
        # HERE (mirrors the undefined_variable_constrain `lsp.check_time` pattern)
        # and read back into statics by the constrain.
        #   api_call_*    : WALL time + count of ACTUAL Node round-trips (cache MISS)
        #                   -- the authoritative "how expensive is asking tsc" number,
        #                   100% coverage (every round-trip funnels through the two
        #                   _inspect_* methods).
        #   api_cache_hits: inspect() calls served from cache (≈ free, no Node) --
        #                   the cache hit-rate context for api_call_count.
        #   frontier_*    : the terminal-level infix frontier scan (pure CPU), bumped
        #                   by the reachability layer's check().
        #   reachability_*: the TCG lattice reachability BFS at the leaf (pure CPU),
        #                   bumped by the reachability layer's _check_chain().
        self.api_call_time = 0.0
        self.api_call_count = 0
        self.api_cache_hits = 0
        self.frontier_time = 0.0
        self.frontier_count = 0
        self.reachability_time = 0.0
        self.reachability_count = 0
        # Per-payload-kind breakdown of ACTUAL round-trips (profiling aid).
        # {tag: [count, seconds]}; dumped at exit iff GENCOR_API_BREAKDOWN=path.
        self.api_call_breakdown = {}
        # Optional profiling-only split by the first caller outside this module.
        # This identifies which semantic operation caused an actual Node round-trip
        # without changing cache keys or request behaviour.
        self.api_callsite_breakdown = {}
        # Caller tag for the breakdown (probe_tag context manager); outermost
        # caller wins so e.g. a self-ref probe that internally reuses
        # completed_type_of_expr still shows as 'selfref'.
        self._probe_tag = None
        _dump = os.environ.get("GENCOR_API_BREAKDOWN")
        if _dump:
            def _write_breakdown(path=_dump, ts=self):
                try:
                    with open(path, "w") as f:
                        json.dump(ts.api_call_breakdown, f, indent=1, sort_keys=True)
                except Exception:
                    pass
            atexit.register(_write_breakdown)
        _callsite_dump = os.environ.get("GENCOR_API_CALLSITE_BREAKDOWN")
        if _callsite_dump:
            def _write_callsite_breakdown(path=_callsite_dump, ts=self):
                try:
                    with open(path, "w") as f:
                        json.dump(ts.api_callsite_breakdown, f, indent=1, sort_keys=True)
                except Exception:
                    pass
            atexit.register(_write_callsite_breakdown)
        atexit.register(self.close)

    def probe_tag(self, tag):
        """Context manager labelling round-trips with their CALLER for the
        breakdown. Outermost tag wins (nested calls keep the outer label)."""
        import contextlib

        @contextlib.contextmanager
        def _cm():
            if self._probe_tag is not None:
                yield
                return
            self._probe_tag = tag
            try:
                yield
            finally:
                self._probe_tag = None
        return _cm()

    def _payload_tag(self, payload):
        """Round-trip class for the profiling breakdown (which ASK went to node)."""
        suffix = f":{self._probe_tag}" if self._probe_tag else ""
        if payload.get("kind") == "frontierProbe":
            return "frontierProbe" + suffix
        if payload.get("spanTypesOnly"):
            return "spanTypesOnly" + suffix
        if payload.get("typedSuggestionsOnly"):
            return "typedSuggestionsOnly" + suffix
        if payload.get("signatureHelpOnly"):
            return "sigHelpOnly" + suffix
        if payload.get("completionOnly"):
            return "completionOnly" + suffix
        if payload.get("skipHoleProbe"):
            return "inspect:skipHole" + suffix
        if payload.get("skipOriginalProbe"):
            return "inspect:skipOriginal" + suffix
        if not payload.get("includeCompletions", True):
            return "inspect:noCompl" + suffix
        return "inspect:full" + suffix

    def _tally_call(self, payload, dt):
        ent = self.api_call_breakdown.setdefault(self._payload_tag(payload), [0, 0.0])
        ent[0] += 1
        ent[1] += dt
        if os.environ.get("GENCOR_API_CALLSITE_BREAKDOWN"):
            frame = sys._getframe(1)
            this_file = os.path.abspath(__file__)
            while frame is not None and os.path.abspath(frame.f_code.co_filename) == this_file:
                frame = frame.f_back
            if frame is None:
                caller = "<unknown>"
            else:
                caller = "%s:%s:%d" % (
                    os.path.basename(frame.f_code.co_filename),
                    frame.f_code.co_name,
                    frame.f_lineno,
                )
            key = "%s|%s" % (caller, self._payload_tag(payload))
            cent = self.api_callsite_breakdown.setdefault(key, [0, 0.0])
            cent[0] += 1
            cent[1] += dt
    def reset_timing(self):
        """Zero the per-task enforcement-timing accumulators (called at each
        document reset, alongside the per-document cache clear)."""
        self.api_call_time = 0.0
        self.api_call_count = 0
        self.api_cache_hits = 0
        self.frontier_time = 0.0
        self.frontier_count = 0
        self.reachability_time = 0.0
        self.reachability_count = 0

    def reset_session(self):
        """Drop the worker's accumulated incremental language-service session at a
        TASK boundary. The session is keyed by the constant fileName+options and is
        otherwise never reset, so its per-parse setExternalModuleIndicator wrapper
        chain (NodeNext impliedNodeFormat) grows unbounded across tasks and past a
        few thousand re-parses every probe throws a stack overflow (-> cold one-shot
        storm, late-task check_after_gen spike). Recreating per task keeps each task
        on a shallow chain. Called from reset(), off the per-token generation clock
        (like the didClose the other LSP backends do). Best-effort: if the worker
        is down or the pipe fails, the next inspect respawns/rebuilds anyway."""
        if not self._use_worker:
            return
        worker = self._worker
        if worker is None or worker.poll() is not None:
            return
        try:
            worker.stdin.write(json.dumps({"resetSession": True}) + "\n")
            worker.stdin.flush()
            worker.stdout.readline()   # consume the {ok:true} ack, keep pipe in sync
        except (BrokenPipeError, OSError):
            self.close()

    def hint_update(self, hint):
        if hint:
            self.variables.add(hint)

    def temp_update(self, hints):
        # Kept for compatibility with the tag constrainer interface.  Temporary
        # generated identifiers should not become BOUND suggestions.
        return None

    def close(self):
        if self._worker is None:
            return None

        worker = self._worker
        self._worker = None
        if worker.poll() is not None:
            return None

        try:
            if worker.stdin:
                worker.stdin.close()
        except OSError:
            pass
        try:
            worker.terminate()
            worker.wait(timeout=1)
        except subprocess.TimeoutExpired:
            worker.kill()
            worker.wait(timeout=1)
        return None

    def lsp_end(self):
        return None

    def _strip_markdown_fence(self, code):
        stripped = code.lstrip()
        leading = len(code) - len(stripped)
        if not stripped.startswith("```"):
            return code

        lines = stripped.splitlines()
        if not lines:
            return code
        body = "\n".join(lines[1:])
        if body.rstrip().endswith("```"):
            body_lines = body.splitlines()
            while body_lines and body_lines[-1].strip() == "```":
                body_lines.pop()
            body = "\n".join(body_lines)
        return " " * leading + body

    def _position(self, code, line=None, col=None):
        lines = code.split("\n")
        if line is None:
            line_idx = len(lines) - 1
        else:
            line_idx = max(0, min(line - 1, len(lines) - 1))

        if col is None:
            character = len(lines[line_idx])
        elif col < 0:
            character = len(lines[line_idx]) + col
        else:
            character = col
        character = max(0, min(character, len(lines[line_idx])))
        return line_idx, character

    def _offset(self, code, line_idx, character):
        lines = code.split("\n")
        return sum(len(line) + 1 for line in lines[:line_idx]) + character

    def _start_worker(self):
        if self._worker is not None and self._worker.poll() is None:
            return self._worker

        self._worker = subprocess.Popen(
            [os.environ.get("GENCOR_NODE_PATH") or backend_path("node") or "node", str(self.helper), "--server"],
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            cwd=str(self.root),
            bufsize=1,
            env=backend_environment(),
        )
        return self._worker

    def _inspect_once(self, payload):
        # A ONE-SHOT subprocess round-trip (fallback / worker re-verify). Timed as a
        # Node round-trip: on the worker->subprocess fallback path BOTH attempts are
        # counted, which is correct -- both consumed wall time.
        t0 = time.perf_counter()
        try:
            proc = subprocess.run(
                [os.environ.get("GENCOR_NODE_PATH") or backend_path("node") or "node", str(self.helper)],
                input=json.dumps(payload),
                capture_output=True,
                text=True,
                cwd=str(self.root),
                env=backend_environment(),
            )
            if not proc.stdout:
                raise RuntimeError(proc.stderr.strip() or "ts_type_context.js produced no output")
            data = json.loads(proc.stdout)
            # A structured fatalError is an analysis failure from the running
            # helper. Startup/configuration failures raise before a response.
            return data
        finally:
            _dt = time.perf_counter() - t0
            self.api_call_time += _dt
            self.api_call_count += 1
            self._tally_call(payload, _dt)

    def _inspect_once_or_degraded(self, payload):
        """Degrade only a structured analysis failure, not a backend failure.

        A deterministic TS-internal failure (e.g. a compiler `Debug Failure` while printing a
        pathological index-signature type for completions -- reproduces in the
        fresh process too) would otherwise raise past inspect() and kill the whole
        generation. Return a safe empty result instead: the callers treat missing
        info as no constraint (fail-open). The error text is kept in the result so
        it is visible, and the empty result is cached so the same input does not
        re-trigger the crash."""
        data = self._inspect_once(payload)
        if data.get("fatalError"):
            return {
                "expectedType": None, "currentType": None, "currentExpression": None,
                "symbols": [], "completions": [],
                "diagnostics": {"syntactic": [], "semantic": []},
                "error": data["error"],
            }
        return data

    def _inspect_with_worker(self, payload):
        t0 = time.perf_counter()
        try:
            return self._inspect_with_worker_inner(payload)
        finally:
            _dt = time.perf_counter() - t0
            self.api_call_time += _dt
            self.api_call_count += 1
            self._tally_call(payload, _dt)

    def _inspect_with_worker_inner(self, payload):
        worker = self._start_worker()
        try:
            worker.stdin.write(json.dumps(payload, separators=(",", ":")) + "\n")
            worker.stdin.flush()
            line = worker.stdout.readline()
        except (BrokenPipeError, OSError) as exc:
            self.close()
            raise RuntimeError(f"ts_type_context.js worker pipe failed: {exc}") from exc

        if not line:
            stderr = ""
            if worker.poll() is not None and worker.stderr:
                stderr = worker.stderr.read().strip()
            self.close()
            raise RuntimeError(stderr or "ts_type_context.js worker produced no output")

        data = json.loads(line)
        return data

    def inspect(
        self,
        code,
        line=None,
        col=None,
        offset=None,
        current_expression_start=None,
        include_completions=True,
        include_symbols=True,
        include_diagnostics=True,
        include_signature_help=False,
        signature_anchor=None,
        signature_help_only=False,
        skip_hole_probe=False,
        skip_original_probe=False,
        completion_only=False,
        typed_suggestions_only=False,
    ):
        code = self._strip_markdown_fence(code)
        line_idx, character = self._position(code, line=line, col=col)
        if offset is None:
            offset = self._offset(code, line_idx, character)
        # signature-help mode: None (not requested) / "with" (bundled into a
        # normal inspect) / "only" (candidate set only -- the worker skips the
        # hole program, so the response carries NOTHING but signatureHelp and
        # must never serve other requests).
        sig_mode = "only" if signature_help_only else ("with" if include_signature_help else None)
        sig_anchor = signature_anchor if sig_mode else None
        # skip_hole_probe / skip_original_probe build only ONE of the two programs
        # (see the JS fast paths), so their responses carry a DIFFERENT field set
        # (e.g. no expectedType, or no currentType). They MUST key separately or a
        # degenerate result would be served to a caller that reads the missing
        # field (get_current_type and the expectedType reader share all-False
        # params otherwise).
        key = (
            code,
            offset,
            current_expression_start,
            include_completions,
            include_symbols,
            include_diagnostics,
            sig_mode,
            sig_anchor,
            skip_hole_probe,
            skip_original_probe,
            completion_only,
            typed_suggestions_only,
        )
        if key in self._inspect_cache:
            self.api_cache_hits += 1
            return self._inspect_cache[key]

        # single-program fast paths never participate in superset caching (their
        # field set is intentionally partial).
        if (current_expression_start is None and sig_mode != "only"
                and not skip_hole_probe and not skip_original_probe
                and not completion_only and not typed_suggestions_only):
            cached = self._lookup_superset_inspect_cache(
                code,
                offset,
                include_completions,
                include_symbols,
                include_diagnostics,
                sig_mode,
                sig_anchor,
            )
            if cached is not None:
                self.api_cache_hits += 1
                self._inspect_cache[key] = cached
                return cached

        payload = {
            "code": code,
            "line": line_idx,
            "character": character,
            "offset": offset,
            "currentExpressionStart": current_expression_start,
            "fileName": str(self.file),
            "includeCompletions": include_completions,
            "includeSymbols": include_symbols,
            "includeDiagnostics": include_diagnostics,
            "includeSignatureHelp": include_signature_help,
            "signatureHelpAnchor": signature_anchor,
            "signatureHelpOnly": signature_help_only,
            "skipHoleProbe": skip_hole_probe,
            "skipOriginalProbe": skip_original_probe,
            "completionOnly": completion_only,
            "typedSuggestionsOnly": typed_suggestions_only,
        }
        if self._use_worker:
            try:
                data = self._inspect_with_worker(payload)
            except RuntimeError:
                data = self._inspect_once_or_degraded(payload)
            else:
                err = data.get("error")
                if data.get("fatalError"):
                    data = self._inspect_once_or_degraded(payload)
                elif err:
                    # The restart+cold-reverify below defends the COMPLETION-
                    # CANDIDATE poison bug (`if (depth > max...` lost ALL candidates
                    # as a stale-worker artifact while a fresh process found them).
                    # Gate it on ACTUAL degradation, not the mere presence of an
                    # error field. A "Could not find inserted expression hole" error
                    # is a DETERMINISTIC structural outcome -- the hole marker merged
                    # with an identifier frontier (`ar` -> `ar__GG_TS_HOLE__`) -- and
                    # currentType / diagnostics / COMPLETIONS all come from the
                    # hole-free ORIGINAL program and are INTACT (verified: a
                    # name-prefix ask at `ar` still returns 128 completions incl
                    # `arr`). The poison is about LOSING candidates, so it can only
                    # have happened if completions came back EMPTY. Re-verify iff a
                    # completion ask returned nothing (possible poison) or the error
                    # is a genuine non-structural one; skip it when the answer is
                    # already there. Re-verifying a healthy hole-not-found kills the
                    # warm worker and pays a cold one-shot for the SAME answer, and
                    # the kill forces the next probe to respawn (cold lib reload) --
                    # a restart STORM that dominated type_api_time.
                    hole_not_found = "inserted expression hole" in err
                    lost_completions = include_completions and not data.get("completions")
                    if lost_completions or not hole_not_found:
                        self.close()
                        data = self._inspect_once_or_degraded(payload)
        else:
            data = self._inspect_once_or_degraded(payload)
        self._inspect_cache[key] = data
        return data

    def _lookup_superset_inspect_cache(
        self,
        code,
        offset,
        include_completions,
        include_symbols,
        include_diagnostics,
        sig_mode=None,
        sig_anchor=None,
    ):
        # signature-help dimension: a request WITHOUT it can be served by a
        # cached bundled ("with") entry -- those are only ever issued with
        # anchor == offset, so that is the one extra key to try. "only" entries
        # carry nothing but signatureHelp and never serve as supersets (they are
        # excluded before this lookup is called). A "with" request needs the
        # exact anchor.
        if sig_mode == "with":
            sig_variants = ((sig_mode, sig_anchor),)
        else:
            sig_variants = ((None, None), ("with", offset))
        for cached_completions in (include_completions, True):
            if include_completions and not cached_completions:
                continue
            for cached_symbols in (include_symbols, True):
                if include_symbols and not cached_symbols:
                    continue
                for cached_diagnostics in (include_diagnostics, True):
                    if include_diagnostics and not cached_diagnostics:
                        continue
                    for cached_sig_mode, cached_sig_anchor in sig_variants:
                        cached_key = (
                            code,
                            offset,
                            None,
                            cached_completions,
                            cached_symbols,
                            cached_diagnostics,
                            cached_sig_mode,
                            cached_sig_anchor,
                            False,
                            False,
                            False,
                            False,
                        )
                        if cached_key in self._inspect_cache:
                            return self._inspect_cache[cached_key]
        return None

    def _typed_suggestion_data(self, code, line=None, col=None, include_symbols=True):
        """Names and types from one hole-anchored TypeScript program.

        Set ``GENCOR_TYPED_SUGGESTIONS_FASTPATH=0`` to use the previous
        original-program plus hole-program path for A/B verification.  A
        structurally incomplete prefix that cannot host the marker falls back
        to that previous path automatically.
        """
        if os.environ.get("GENCOR_TYPED_SUGGESTIONS_FASTPATH", "1") == "0":
            return None
        data = self.inspect(
            code,
            line=line,
            col=col,
            include_symbols=include_symbols,
            include_diagnostics=False,
            typed_suggestions_only=True,
        )
        if not data.get("typedSuggestionsOnly"):
            return None
        return data

    def inspect_span_types(self, code, spans, closure=""):
        """Type several exact expression spans in one TypeScript Program.

        ``code`` is the reconstructed candidate source and span coordinates are
        relative to it. ``closure`` is appended only to make the unfinished
        candidate easier for TypeScript to parse; it therefore does not shift
        any requested coordinate. Missing spans are intentionally omitted so
        callers can fall back to the established per-fragment probe.
        """
        normalized = tuple(sorted({
            (int(start), int(end))
            for start, end in spans
            if int(start) >= 0 and int(end) > int(start) and int(end) <= len(code)
        }))
        if not normalized:
            return None
        key = (code, closure, normalized)
        if key in self._span_types_cache:
            self.api_cache_hits += 1
            return self._span_types_cache[key]

        payload = {
            "code": code,
            "spanClosure": closure,
            "spans": [
                {"start": start, "end": end}
                for start, end in normalized
            ],
            "fileName": str(self.file),
            "includeDiagnostics": True,
            "spanTypesOnly": True,
        }
        try:
            if self._use_worker:
                data = self._inspect_with_worker(payload)
            else:
                data = self._inspect_once(payload)
        except RuntimeError:
            return None
        if not isinstance(data, dict) or not data.get("spanTypesOnly"):
            return None

        typed = {}
        for item in data.get("spanTypes", []):
            if not isinstance(item, dict):
                continue
            start = item.get("start")
            end = item.get("end")
            typ = item.get("type")
            if isinstance(start, int) and isinstance(end, int) and typ:
                typed[(start, end)] = typ
        result = {
            "source": code,
            "types": typed,
            "diagnostics": data.get("diagnostics", {}),
        }
        self._span_types_cache[key] = result
        return result

    def get_variables(self, code_snippet, line=None, col=None):
        is_member_completion = self._is_member_completion_position(code_snippet)
        data = self._typed_suggestion_data(
            code_snippet,
            line=line,
            col=col,
            include_symbols=not is_member_completion,
        )
        if data is None:
            data = self.inspect(
                code_snippet,
                line=line,
                col=col,
                include_symbols=not is_member_completion,
                include_diagnostics=False,
                completion_only=is_member_completion,
            )
        names = set()
        for item in data.get("completions", []):
            name = item.get("name")
            kind = item.get("kind")
            if name and IDENT_RE.match(name) and kind in VALUE_COMPLETION_KINDS:
                names.add(name)
        if not is_member_completion:
            for symbol in data.get("symbols", []):
                name = symbol.get("name")
                kind = symbol.get("kind")
                if name and IDENT_RE.match(name) and kind in VALUE_COMPLETION_KINDS:
                    names.add(name)
        return names

    def get_variables_from_terminals(self, terminals, term_idx):
        code = "".join(term.value for term in terminals[:term_idx])
        return self.get_variables(code)

    def get_variable_suggestions(self, code, line=None, col=None):
        is_member_completion = self._is_member_completion_position(code)
        data = self._typed_suggestion_data(
            code,
            line=line,
            col=col,
            include_symbols=not is_member_completion,
        )
        if data is None:
            data = self.inspect(
                code,
                line=line,
                col=col,
                include_symbols=not is_member_completion,
                include_diagnostics=False,
            )
        suggestions = [
            item
            for item in data.get("completions", [])
            if (
                item.get("name")
                and IDENT_RE.match(item["name"])
                and item.get("kind") in VALUE_COMPLETION_KINDS
                and (
                    is_member_completion
                    or not _is_suppressed_ambient_global_value(item)
                )
            )
        ]
        if is_member_completion:
            return suggestions

        seen = {item["name"] for item in suggestions}
        for symbol in data.get("symbols", []):
            name = symbol.get("name")
            kind = symbol.get("kind")
            symbol_type = symbol.get("type")
            if _is_suppressed_ambient_global_value(symbol):
                continue
            if name in seen and symbol_type:
                for item in suggestions:
                    if item.get("name") == name and not item.get("type"):
                        item["type"] = symbol_type
                        item["source"] = item.get("source") or "symbols"
                        break
                continue
            if (
                name
                and name not in seen
                and IDENT_RE.match(name)
                and kind in VALUE_COMPLETION_KINDS
            ):
                suggestions.append(
                    {
                        "name": name,
                        "kind": kind,
                        "type": symbol.get("type"),
                        "kindModifiers": symbol.get("kindModifiers"),
                        "source": "symbols",
                    }
                )
                seen.add(name)
        return suggestions

    def get_raw_completions(self, code, line=None, col=None):
        """Completion names/kinds without type, symbol, or diagnostic probes."""
        return self.inspect(
            code,
            line=line,
            col=col,
            include_symbols=False,
            include_diagnostics=False,
            completion_only=True,
        ).get("completions", [])

    def get_typed_variable_suggestions(self, code, prefix="", max_untyped_probes=12):
        """Return completion/symbol candidates with best-effort type strings.

        Language Service completion entries often omit types, while Compiler API
        symbols include them for local values.  For the few remaining candidates
        matching the active prefix, probe the candidate and read currentType.
        Member-access positions use the same synthetic closures as frontier
        probes because incomplete call/argument prefixes often have no plain
        currentType.
        """
        key = (code, prefix, max_untyped_probes)
        if key in self._typed_suggestion_cache:
            return self._typed_suggestion_cache[key]

        typed = list(
            self.iter_typed_variable_suggestions(
                code,
                prefix=prefix,
                max_untyped_probes=max_untyped_probes,
            )
        )
        self._typed_suggestion_cache[key] = typed
        return typed

    def _enrich_suggestion_type(self, code, item):
        if item.get("type"):
            return item

        name = item.get("name")
        if not name:
            return None
        with self.probe_tag("candidate"):
            return self._enrich_suggestion_type_inner(code, item, name)

    def _enrich_suggestion_type_inner(self, code, item, name):

        if self._is_member_completion_position(code):
            data, _ = self.inspect_frontier_probe(
                code,
                name,
                prefer_syntactic_clean=False,
            )
            typ = data.get("currentType")
        else:
            typ = self.get_current_type(code + name)
            if not typ:
                data, _ = self.inspect_frontier_probe(
                    code,
                    name,
                    prefer_syntactic_clean=False,
                )
                typ = data.get("currentType")
        if not typ:
            return None

        enriched = dict(item)
        enriched["type"] = typ
        enriched["source"] = enriched.get("source") or "currentTypeProbe"
        return enriched

    def iter_typed_variable_suggestions(self, code, prefix="", max_untyped_probes=12):
        """Yield typed completion/symbol candidates lazily."""
        suggestions = [
            item
            for item in self.get_variable_suggestions(code)
            if item.get("name", "").startswith(prefix)
        ]

        typed = []
        untyped = []
        seen = set()
        for item in suggestions:
            name = item.get("name")
            if not name or name in seen:
                continue
            seen.add(name)
            if item.get("type"):
                typed.append(item)
            else:
                untyped.append(item)

        for item in typed:
            yield item

        # Empty-expression frontiers can expose the whole lib/global completion
        # set.  Probing those untyped globals one-by-one is very expensive, and
        # a global name will be reconsidered once generation has produced a
        # non-empty identifier prefix such as `M` or `parse`.
        if typed and not prefix:
            return

        untyped.sort(
            key=lambda item: (
                0
                if item.get("name") in COMMON_GLOBAL_VALUE_RANK
                else 1,
                COMMON_GLOBAL_VALUE_RANK.get(item.get("name"), len(COMMON_GLOBAL_VALUE_RANK)),
                len(item.get("name") or ""),
                item.get("name") or "",
            )
        )
        for item in untyped[:max_untyped_probes]:
            enriched = self._enrich_suggestion_type(code, item)
            if enriched:
                yield enriched

    def type_reachable(self, source_type, target_type, **kwargs):
        if not source_type or not target_type:
            return None
        key = (source_type, target_type, tuple(sorted(kwargs.items())))
        if key not in self._type_reachable_cache:
            self._type_reachable_cache[key] = is_ts_type_reachable(
                source_type,
                target_type,
                **kwargs,
            )
        return self._type_reachable_cache[key]

    def type_assignable(self, source_type, target_type):
        source_ptype = ptype_from_ts_type(source_type)
        target_ptype = ptype_from_ts_type(target_type)
        if source_ptype is None or target_ptype is None:
            return False
        return isinstance(source_ptype, AnyPType) or target_ptype >= source_ptype

    def postfix_reachable_to_type(self, source_type, target_type, max_steps=1):
        """Reachability profile for an already-traced frontier expression.

        Binary operators are handled explicitly by trace_frontier_type_candidates.
        This narrower profile only allows local postfix/call/index growth from
        the current expression candidate before checking assignability to the
        expected type.
        """
        if self.type_assignable(source_type, target_type):
            return True
        for candidate_type in self.frontier_current_type_candidates(
            source_type,
            max_steps=max_steps,
        ):
            if self.type_assignable(candidate_type, target_type):
                return True
        return False

    def binary_frontier_result_types(
        self,
        operator,
        side,
        other_type,
        frontier_type,
        expected_type=None,
    ):
        """Compose one frontier type with its nearest binary operator context."""
        if not operator or side not in {"left", "right"}:
            return []

        other_ptype = ptype_from_ts_type(other_type)
        frontier_ptype = ptype_from_ts_type(frontier_type)
        expected_ptype = ptype_from_ts_type(expected_type) if expected_type else None
        if other_ptype is None or frontier_ptype is None:
            return []

        result_types = []
        seen = set()
        if side == "right":
            candidates = binary_operator_candidates(other_ptype, operator)
            for candidate in candidates:
                if not candidate.rhs_type >= frontier_ptype:
                    continue
                if expected_ptype is not None and not expected_ptype >= candidate.result_type:
                    continue
                text = str(candidate.result_type)
                if text not in seen:
                    seen.add(text)
                    result_types.append(text)
        else:
            candidates = binary_operator_candidates(frontier_ptype, operator)
            for candidate in candidates:
                if not candidate.rhs_type >= other_ptype:
                    continue
                if expected_ptype is not None and not expected_ptype >= candidate.result_type:
                    continue
                text = str(candidate.result_type)
                if text not in seen:
                    seen.add(text)
                    result_types.append(text)

        return result_types

    def trace_frontier_type_candidates(self, frontier_types, frontier_contexts):
        """Apply enclosing expression contexts to frontier type candidates.

        The context stack comes from the TypeScript AST, ordered from the
        innermost expression containing the hole to the outermost.  Each binary
        context is applied as a concrete operator-table transition, so the
        candidate set evolves left-to-right through the expression instead of
        asking TypeScript for one recovered currentType.
        """
        current = [typ for typ in frontier_types if typ]
        contexts = frontier_contexts or []
        trace = []

        for context in contexts:
            if context.get("kind") != "binary":
                continue

            next_types = []
            seen = set()
            for typ in current:
                for result_type in self.binary_frontier_result_types(
                    context.get("operator"),
                    context.get("side"),
                    context.get("otherType"),
                    typ,
                ):
                    if result_type in seen:
                        continue
                    seen.add(result_type)
                    next_types.append(result_type)

            trace.append(
                {
                    "context": context,
                    "input_types": current[:12],
                    "result_types": next_types[:12],
                }
            )
            current = next_types
            if not current:
                break

        return current, trace

    def frontier_current_type_candidates(self, source_type, max_steps=1):
        """Possible current types for a still-extendable frontier expression.

        This intentionally explores only local postfix/call/index-style
        extensions.  Result-sensitive operators are handled by the surrounding
        expression context, then the resulting current candidates are checked
        against the expected type separately.
        """
        key = (source_type, max_steps)
        if key in self._frontier_current_type_cache:
            return self._frontier_current_type_cache[key]

        start = ptype_from_ts_type(source_type)
        if start is None:
            return []

        seen = {start}
        frontier = {(start, start.nesting_depth, frozenset())}
        for _ in range(max_steps):
            next_frontier = set()
            for typ, max_depth, root_types in frontier:
                root_types = frozenset(typ.root_values | root_types)
                member_types = member_access_reachable_types(typ)
                reachable_types = set(member_types)
                reachable_types.update(
                    member_type.return_type
                    for member_type in member_types
                    if isinstance(member_type, FunctionPType)
                )
                reachable_types.update(computed_member_access_reachable_types(typ))
                reachable_types.update(call_reachable_types(typ))
                for next_type in reachable_types:
                    if next_type in seen:
                        continue
                    if not _productive_type_extension(next_type, max_depth, root_types):
                        continue
                    next_frontier.add(
                        (
                            next_type,
                            (
                                max(next_type.nesting_depth[0], max_depth[0]),
                                max(next_type.nesting_depth[1], max_depth[1]),
                            ),
                            root_types,
                        )
                    )
            if not next_frontier:
                break
            seen.update(typ for typ, _max_depth, _root_types in next_frontier)
            frontier = next_frontier

        result = sorted(str(typ) for typ in seen)
        self._frontier_current_type_cache[key] = result
        return result

    def frontier_probe_suffixes(self, source_type):
        """Concrete suffixes worth trying on an unfinished frontier value.

        The old type-only frontier expansion could say that `number[]` reaches
        `number`, but it did not distinguish `xs[0]` from unrelated array method
        function values.  These suffixes let the TypeScript parser/checker see
        real fragments such as `xs[0]`, `xs.length`, or `xs.toString()` in the
        actual source context, so operator precedence is handled by TypeScript.
        """
        key = source_type or ""
        if key in self._frontier_probe_suffix_cache:
            return self._frontier_probe_suffix_cache[key]

        suffixes = [""]
        ptype = ptype_from_ts_type(source_type) if source_type else None
        text = (source_type or "").strip()
        compact = re.sub(r"\s+", "", text)

        if ptype is not None and computed_member_access_reachable_types(ptype):
            suffixes.append("[0]")

        array_like = (
            compact.endswith("[]")
            or compact.startswith("Array<")
            or compact.startswith("ReadonlyArray<")
            or (compact.startswith("[") and compact.endswith("]"))
        )
        string_like = compact == "string" or compact.startswith('"') or compact.startswith("'")
        function_like = isinstance(ptype, FunctionPType)

        if array_like or string_like or function_like:
            suffixes.append(".length")

        # These are ubiquitous JS/TS object methods.  Trying the concrete code is
        # cheap after caching, and invalid uses are rejected by TS diagnostics.
        suffixes.extend([".toString()", ".valueOf()"])

        if isinstance(ptype, FunctionPType):
            required_args = len(ptype.call_signature) - ptype.optional_args
            if required_args <= 0:
                suffixes.append("()")

        result = []
        seen = set()
        for suffix in suffixes:
            if suffix not in seen:
                seen.add(suffix)
                result.append(suffix)

        self._frontier_probe_suffix_cache[key] = result
        return result

    def frontier_probe_fragments(self, name, source_type):
        return [
            name + suffix
            for suffix in self.frontier_probe_suffixes(source_type)
        ]

    def inspect_frontier_probe(self, code_before, fragment, prefer_syntactic_clean=True):
        """Inspect a concrete frontier fragment, closing the prefix if needed.

        TypeScript can often recover from incomplete source, but in contexts
        like `arr.push(<frontier>` it may not expose a current expression type.
        We therefore try a few synthetic closures while keeping the inspection
        offset fixed at the end of the real fragment.
        """
        key = (code_before, fragment, prefer_syntactic_clean)
        if key in self._frontier_probe_inspect_cache:
            return self._frontier_probe_inspect_cache[key]

        probe_prefix = code_before + fragment
        offset = len(probe_prefix)
        first_typed = None
        closure_key = (code_before, prefer_syntactic_clean)
        preferred_closure = self._frontier_probe_closure_cache.get(closure_key)
        closures = FRONTIER_PROBE_CLOSURES
        if preferred_closure in closures:
            closures = [preferred_closure] + [
                closure for closure in FRONTIER_PROBE_CLOSURES
                if closure != preferred_closure
            ]

        batched = self._inspect_frontier_probe_batch(
            code_before,
            fragment,
            closures,
            prefer_syntactic_clean,
        )
        if batched is not None:
            data, closure = batched
            result = (data, closure)
            if data.get("currentType"):
                self._frontier_probe_closure_cache[closure_key] = closure
            self._frontier_probe_inspect_cache[key] = result
            return result

        for closure in closures:
            data = self.inspect(
                probe_prefix + closure,
                offset=offset,
                include_completions=False,
                include_symbols=False,
                include_diagnostics=True,
            )
            if data.get("currentType"):
                if not prefer_syntactic_clean:
                    result = (data, closure)
                    self._frontier_probe_closure_cache[closure_key] = closure
                    self._frontier_probe_inspect_cache[key] = result
                    return result
                syntactic = data.get("diagnostics", {}).get("syntactic", [])
                if not syntactic:
                    result = (data, closure)
                    self._frontier_probe_closure_cache[closure_key] = closure
                    self._frontier_probe_inspect_cache[key] = result
                    return result
                if first_typed is None:
                    first_typed = (data, closure)
        if first_typed is not None:
            self._frontier_probe_inspect_cache[key] = first_typed
            return first_typed
        result = ({}, "")
        self._frontier_probe_inspect_cache[key] = result
        return result

    def has_frontier_probe_result(
        self,
        code_before,
        fragment,
        prefer_syntactic_clean=True,
    ):
        """Whether the legacy fragment probe can answer without a Node call."""
        return (
            code_before,
            fragment,
            prefer_syntactic_clean,
        ) in self._frontier_probe_inspect_cache

    def _inspect_frontier_probe_batch(
        self,
        code_before,
        fragment,
        closures,
        prefer_syntactic_clean,
    ):
        payload = {
            "kind": "frontierProbe",
            "codeBefore": code_before,
            "fragment": fragment,
            "closures": list(closures),
            "preferSyntacticClean": prefer_syntactic_clean,
            "fileName": str(self.file),
        }
        try:
            if self._use_worker:
                result = self._inspect_with_worker(payload)
            else:
                result = self._inspect_once(payload)
        except RuntimeError:
            return None

        if not isinstance(result, dict):
            return None
        data = result.get("data")
        closure = result.get("closure", "")
        if not isinstance(data, dict):
            return None
        return data, closure

    def _is_member_completion_position(self, code):
        stripped = code.rstrip()
        return stripped.endswith(".") or stripped.endswith("?.")

    def get_expected_type(self, code, line=None, col=None):
        return self.inspect(
            code,
            line=line,
            col=col,
            include_completions=False,
            include_symbols=False,
            include_diagnostics=False,
        ).get("expectedType")

    def get_current_type(self, code, line=None, col=None):
        return self.inspect(
            code,
            line=line,
            col=col,
            include_completions=False,
            include_symbols=False,
            include_diagnostics=False,
            skip_hole_probe=True,   # currentType comes from the no-hole program
        ).get("currentType")

    def current_type_reachable_to_expected(self, code, line=None, col=None, **kwargs):
        data = self.inspect(
            code,
            line=line,
            col=col,
            include_completions=False,
            include_symbols=False,
            include_diagnostics=False,
        )
        current = data.get("currentType")
        expected = data.get("expectedType")
        if not current or not expected:
            return None
        return is_ts_type_reachable(current, expected, **kwargs)

    def semantic_diagnostics(self, code):
        # diagnostics only -- callers here read just the semantic errors. Asking
        # for completions/symbols would additionally print each symbol's type,
        # which is where a TS-internal `Debug Failure` on a pathological
        # index-signature type is raised (and is wasted work regardless).
        diagnostics = self.inspect(
            code, include_completions=False, include_symbols=False
        ).get("diagnostics", {})
        return diagnostics.get("semantic", [])

    def syntactic_diagnostics(self, code):
        diagnostics = self.inspect(
            code, include_completions=False, include_symbols=False
        ).get("diagnostics", {})
        return diagnostics.get("syntactic", [])

    def hard_online_type_diagnostics(self, code):
        result = []
        for diagnostic in self.semantic_diagnostics(code):
            if diagnostic.get("category") != "Error":
                continue
            if diagnostic.get("code") in self.HARD_ONLINE_DIAGNOSTIC_CODES:
                result.append(diagnostic)
        return result

    def variable_correct(self, code):
        return not [
            diagnostic
            for diagnostic in self.semantic_diagnostics(code)
            if diagnostic.get("category") == "Error"
        ]
