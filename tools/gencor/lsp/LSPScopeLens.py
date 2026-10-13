import atexit
import json
import keyword
import os
import queue
import re
import shlex
import shutil
import subprocess
import sys
import tempfile
import threading
import time
from pathlib import Path
from typing import Any, Iterable

from lsp.LSP import LSP
from lsp.runtime import backend_environment, backend_path, runtime_config
from utils import utils

KIND_KEYWORD = 14

MODULE = "MODULE"
NOT_MODULE = "NOT_MODULE"
UNKNOWN = "UNKNOWN"


class ScopeLensLspError(RuntimeError):
    pass


class ScopeLensAnalysisError(ScopeLensLspError):
    """The server failed to analyze a query; this is not an empty name set."""


ANALYSIS_ERROR = -32050


def _path_to_uri(path: Path) -> str:
    return path.resolve().as_uri()


def _normalize_completion_items(result: Any) -> list[dict[str, Any]]:
    if result is None:
        return []
    if isinstance(result, dict):
        items = result.get("items", [])
    else:
        items = result
    return [item for item in items if isinstance(item, dict)]


def _unique_preserving_order(names: Iterable[str]) -> list[str]:
    seen = set()
    out = []
    for name in names:
        if name in seen:
            continue
        seen.add(name)
        out.append(name)
    return out


def _default_server_command() -> list[str]:
    env_cmd = os.environ.get("SCOPELENS_LANGSERVER")
    if env_cmd:
        return shlex.split(env_cmd)

    configured = backend_path("scopelens")
    if configured:
        return [configured]

    path_server = shutil.which("scopelens")
    if path_server:
        return [path_server]

    candidates = []
    conda_prefix = os.environ.get("CONDA_PREFIX")
    if conda_prefix:
        candidates.append(Path(conda_prefix).parent / "scopelens" / "bin" / "scopelens")
    candidates.append(Path.home() / "miniconda3" / "envs" / "scopelens" / "bin" / "scopelens")

    for candidate in candidates:
        if candidate.exists():
            return [str(candidate)]

    raise ScopeLensLspError(
        "Cannot find scopelens language server. Install ScopeLens in the active "
        "environment, create a conda env named 'scopelens', or set "
        "SCOPELENS_LANGSERVER."
    )


class _JsonRpcEndpoint:
    def __init__(self, command: list[str], timeout: float = 10.0):
        self.command = command
        self.timeout = timeout
        self._next_id = 1
        self._responses: dict[int, dict[str, Any]] = {}
        self._response_cv = threading.Condition()
        self._write_lock = threading.Lock()
        self._stderr: queue.Queue[str] = queue.Queue()

        env = backend_environment()
        config = runtime_config()
        if config is not None:
            env["XDG_CACHE_HOME"] = config["scopelens_cache"]
        self.proc = subprocess.Popen(
            command,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=False,
            env=env,
        )
        self._reader_thread = threading.Thread(target=self._read_loop, daemon=True)
        self._stderr_thread = threading.Thread(target=self._read_stderr_loop, daemon=True)
        self._reader_thread.start()
        self._stderr_thread.start()
        # Retire readers before interpreter finalization stops daemon threads.
        atexit.register(self.close)

    def close(self):
        if self.proc.poll() is None:
            self.proc.terminate()
            try:
                self.proc.wait(timeout=2)
            except subprocess.TimeoutExpired:
                self.proc.kill()
                self.proc.wait()
        # Recovery creates another process immediately. Retire the readers and
        # pipes of this one so repeated failures do not leak file descriptors.
        for thread in (self._reader_thread, self._stderr_thread):
            thread.join(timeout=2)
        for stream in (self.proc.stdin, self.proc.stdout, self.proc.stderr):
            if stream is not None:
                stream.close()
        atexit.unregister(self.close)

    def request(self, method: str, params: Any | None = None) -> Any:
        request_id = self._next_id
        self._next_id += 1
        msg = {"jsonrpc": "2.0", "id": request_id, "method": method}
        if params is not None:
            msg["params"] = params
        self._write_message(msg)

        response = self._wait_for_response(request_id)
        if "error" in response:
            error = response["error"]
            error_type = (
                ScopeLensAnalysisError
                if error.get("code") == ANALYSIS_ERROR
                else ScopeLensLspError
            )
            raise error_type(f"{method} failed: {error}")
        return response.get("result")

    def notify(self, method: str, params: Any | None = None):
        msg = {"jsonrpc": "2.0", "method": method}
        if params is not None:
            msg["params"] = params
        self._write_message(msg)

    def _wait_for_response(self, request_id: int) -> dict[str, Any]:
        deadline = time.monotonic() + self.timeout
        with self._response_cv:
            while request_id not in self._responses:
                if self.proc.poll() is not None:
                    raise ScopeLensLspError(self._dead_process_message())
                remaining = deadline - time.monotonic()
                if remaining <= 0:
                    raise ScopeLensLspError(
                        f"Timed out waiting for response id {request_id}. {self._stderr_tail()}"
                    )
                self._response_cv.wait(timeout=remaining)
            return self._responses.pop(request_id)

    def _write_message(self, msg: dict[str, Any]):
        if self.proc.stdin is None:
            raise ScopeLensLspError("ScopeLens language server stdin is closed")
        data = json.dumps(msg, separators=(",", ":"), ensure_ascii=False).encode("utf-8")
        header = f"Content-Length: {len(data)}\r\n\r\n".encode("ascii")
        with self._write_lock:
            self.proc.stdin.write(header)
            self.proc.stdin.write(data)
            self.proc.stdin.flush()

    def _read_loop(self):
        if self.proc.stdout is None:
            return
        while True:
            headers = self._read_headers()
            if headers is None:
                return
            length_text = headers.get("content-length")
            if not length_text:
                continue
            try:
                length = int(length_text)
            except ValueError:
                continue
            body = self.proc.stdout.read(length)
            if not body:
                return
            try:
                msg = json.loads(body.decode("utf-8"))
            except json.JSONDecodeError:
                continue
            self._handle_message(msg)

    def _read_headers(self) -> dict[str, str] | None:
        assert self.proc.stdout is not None
        headers = {}
        while True:
            line = self.proc.stdout.readline()
            if line == b"":
                return None
            if line in (b"\r\n", b"\n"):
                return headers
            text = line.decode("ascii", errors="replace").strip()
            if ":" in text:
                key, value = text.split(":", 1)
                headers[key.lower()] = value.strip()

    def _handle_message(self, msg: dict[str, Any]):
        if "id" in msg and ("result" in msg or "error" in msg):
            with self._response_cv:
                self._responses[int(msg["id"])] = msg
                self._response_cv.notify_all()
            return

        if "id" in msg and "method" in msg:
            self._write_message({"jsonrpc": "2.0", "id": msg["id"], "result": None})

    def _read_stderr_loop(self):
        if self.proc.stderr is None:
            return
        for raw in self.proc.stderr:
            text = raw.decode("utf-8", errors="replace").rstrip()
            if text:
                self._stderr.put(text)

    def _stderr_tail(self) -> str:
        lines = []
        while not self._stderr.empty():
            try:
                lines.append(self._stderr.get_nowait())
            except queue.Empty:
                break
        if not lines:
            return ""
        return "stderr: " + " | ".join(lines[-5:])

    def _dead_process_message(self) -> str:
        return f"ScopeLens language server exited with code {self.proc.poll()}. {self._stderr_tail()}"


class _ScopeLensSession:
    def __init__(self, server_command: list[str] | None = None, timeout: float = 10.0):
        self.server_command = server_command or _default_server_command()
        self.timeout = timeout
        self._tmpdir = tempfile.TemporaryDirectory(prefix="gencor-scopelens-")
        self.root = Path(self._tmpdir.name)
        self.file_path = self.root / "snippet.py"
        self.uri = _path_to_uri(self.file_path)
        self.version = 0
        self._is_open = False
        self._code: str | None = None
        self._rpc: _JsonRpcEndpoint | None = None

    def start(self):
        if self._rpc is not None:
            return
        try:
            self._start()
        except BaseException:
            self._discard_server()
            raise

    def _start(self):
        self._rpc = _JsonRpcEndpoint(self.server_command, timeout=self.timeout)
        self._rpc.request(
            "initialize",
            {
                "processId": os.getpid(),
                "rootUri": _path_to_uri(self.root),
                "workspaceFolders": [{"uri": _path_to_uri(self.root), "name": self.root.name}],
                "capabilities": {
                    "workspace": {"workspaceFolders": True},
                    "textDocument": {
                        "completion": {
                            "dynamicRegistration": False,
                            "completionItem": {"snippetSupport": False},
                        },
                        "synchronization": {"dynamicRegistration": False},
                    },
                },
                "trace": "off",
            },
        )
        self._rpc.notify("initialized", {})

    def reset_document(self):
        # Cheap per-test reset: keep the server process alive (and with it the
        # compiled lark grammar / warmed jedi), just drop our document tracking
        # so the next query re-sends the full text via didChange.
        self._code = None
        # Clear the server's StateMapV2 cache too, so each test starts cold and
        # its timing does not depend on what ran before. (No-op before the server
        # is spawned; the cache is empty then anyway.)
        if self._rpc is not None:
            try:
                self._rpc.notify("scopelens/resetStateMapCache")
            except Exception:
                pass

    def close(self):
        if self._rpc is None:
            self._tmpdir.cleanup()
            return
        try:
            if self._is_open:
                self._rpc.notify("textDocument/didClose", {"textDocument": {"uri": self.uri}})
            self._rpc.request("shutdown")
            self._rpc.notify("exit")
        except Exception:
            pass
        finally:
            self._rpc.close()
            self._rpc = None
            self._tmpdir.cleanup()

    def complete(self, code: str, line: int, character: int) -> list[dict[str, Any]]:
        result = self._document_request(
            code,
            "textDocument/completion",
            {
                "textDocument": {"uri": self.uri},
                "position": {"line": line, "character": character},
                "context": {"triggerKind": 1},
            },
        )
        return _normalize_completion_items(result)

    def is_module(self, code: str, line: int, character: int) -> bool:
        result = self._document_request(
            code,
            "scopelens/isModule",
            {"uri": self.uri, "line": line, "character": character},
        )
        return bool(result)

    def undefined_module_members(self, code: str) -> list[dict]:
        result = self._document_request(
            code,
            "scopelens/undefinedModuleMembers",
            {"uri": self.uri},
        )
        return result or []

    def _discard_server(self):
        if self._rpc is not None:
            self._rpc.close()
            self._rpc = None
        self._is_open = False
        self._code = None

    def _document_request(self, code: str, method: str, params: dict):
        for attempt in range(2):
            try:
                self.start()
                self._update_document(code)
                assert self._rpc is not None
                return self._rpc.request(method, params)
            except ScopeLensAnalysisError as exc:
                self._discard_server()
                if attempt:
                    raise ScopeLensAnalysisError(
                        f"{method}: analysis failed after one server restart: {exc}"
                    ) from exc
                print(f"[ScopeLens recovery] {method}: restarting server after {exc}",
                      file=sys.stderr, flush=True)
        # The enclosing generation time_limit remains active across start and
        # retry. Transport timeouts and cancellation propagate without retry.

    def stderr_tail(self) -> str:
        if self._rpc is None:
            return ""
        return self._rpc._stderr_tail()

    def _update_document(self, code: str):
        assert self._rpc is not None
        if self._code == code:
            return
        self.version += 1
        self._code = code

        if not self._is_open:
            self._rpc.notify(
                "textDocument/didOpen",
                {
                    "textDocument": {
                        "uri": self.uri,
                        "languageId": "python",
                        "version": self.version,
                        "text": code,
                    }
                },
            )
            self._is_open = True
        else:
            self._rpc.notify(
                "textDocument/didChange",
                {
                    "textDocument": {"uri": self.uri, "version": self.version},
                    "contentChanges": [{"text": code}],
                },
            )


# Names always dropped from completion candidates (denylist), even when
# ScopeLens/pyflakes consider them in scope. Only affects the names offered to
# the constrainer during decoding -- undefined-name / module-member ANALYSIS is
# unchanged. Empty by default (bans nothing); enable per-instance via
# LSPScopeLens(default_banned_names={...}).
DEFAULT_BANNED_NAMES = frozenset()


class LSPScopeLens(LSP):
    def __init__(
        self,
        lang: str = "python",
        server_command: list[str] | None = None,
        timeout: float = 10.0,
        truncate_after_cursor: bool | str = "none",
        default_banned_names: Iterable[str] | None = None,
    ):
        super().__init__()
        self.lang = lang
        self.default_banned_names = (
            set(DEFAULT_BANNED_NAMES) if default_banned_names is None
            else set(default_banned_names)
        )
        self.suggestion_time = 0.0
        self.check_time = 0.0
        self.proc_time = 0.0
        self.autocomplete_time = 0.0
        self.truncate_after_cursor = self._normalize_truncate_mode(truncate_after_cursor)
        self._session = _ScopeLensSession(server_command=server_command, timeout=timeout)

    def close(self):
        self._session.close()

    def reset_document(self):
        """Cheap per-test reset -- keep the (warm) server process, drop the
        document state. Use this instead of close()+re-create to avoid paying
        the ~1.2s server cold start on every test."""
        self._session.reset_document()

    def warmup(self):
        """Pay the one-time server cold start now (process spawn + jedi/lark/
        pyflakes first-call), so it is not charged to the first real query."""
        try:
            self.get_variables("import os\nos.path", line=2, col=7)  # warms jedi
            self.get_variables("x = 1\nx", line=2, col=1)            # warms lark+pyflakes
        except Exception:
            pass

    def __del__(self):
        try:
            self.close()
        except Exception:
            pass

    def _normalize_truncate_mode(self, value: bool | str) -> str:
        if value is True:
            return "hard"
        if value is False:
            return "none"
        if value in {"line", "hard", "none"}:
            return value
        raise ValueError("truncate_after_cursor must be one of True, False, 'line', 'hard', or 'none'")

    def get_variables(self, code: str, line: int = None, col: int = None):
        self.proc_time = 0.0
        lines = code.split("\n")
        line_num = len(lines) if line is None else line
        col_num = len(lines[-1]) if col is None else col
        if col is not None and col < 0:
            col_num = col + len(lines[-1])

        self.autocomplete_time = 0.0
        return self._complete_variables(
            code,
            line_num - 1,
            col_num,
            context=f"direct code query, input line={line}, input col={col}",
        )

    def get_variables_from_terminals(self, terminals, term_idx):
        assert terminals[term_idx].type in [
            "NAME",
            "MATCH",
            "CASE",
        ], f"Cursor must be at a terminal of type NAME, but got {terminals[term_idx].type}"

        self.autocomplete_time = 0.0
        code, line, character = self._code_and_cursor_from_terminals(terminals, term_idx)
        code, line, character = self._collapse_bracket_newlines(code, line, character)
        target = terminals[term_idx]
        utils.debug(
            "ScopeLens terminal query: "
            f"term_idx={term_idx}, target={target.type}:{self._short_debug_value(target.value)}, "
            f"cursor=(line={line}, character={character}), "
            f"window={self._terminal_debug_window(terminals, term_idx)}"
        )
        variables = self._complete_variables(
            code,
            line,
            character,
            context=(
                f"terminal query term_idx={term_idx}, "
                f"target={target.type}:{self._short_debug_value(target.value)}"
            ),
        )
        utils.debug(f"Variables from ScopeLens: {variables}")
        return variables

    def module_status(self, terminals, expr_span):
        """Return whether the terminal span currently resolves to a Python module.

        ``expr_span`` is an inclusive ``(start, end)`` pair into ``terminals``.
        Asks ScopeLens's dedicated ``scopelens/isModule`` interface (jedi type
        inference) directly, independent of the name-completion path.
        """

        expr_span = self._validate_terminal_span(expr_span, len(terminals))
        if expr_span is None:
            return UNKNOWN

        expr_text = self._terminal_span_text(terminals, expr_span)
        if not self._is_dotted_identifier(expr_text):
            return UNKNOWN

        code, line, character = self._code_and_cursor_after_terminal_span(terminals, expr_span)
        code, line, character = self._truncate_code_after_cursor(code, line, character)
        utils.debug(
            "is-module query code for ScopeLens "
            f"(expr_span={expr_span}, expr={expr_text!r}, cursor line={line}, "
            f"character={character}):\n"
            + self._code_with_cursor_marker(code, line, character)
        )

        suggest_start = time.time()
        is_mod = self._session.is_module(code, line, character)
        suggestion_time = time.time() - suggest_start
        self.suggestion_time = suggestion_time
        self.proc_time += suggestion_time

        utils.debug(f"is-module result for {expr_text!r}: {'MODULE' if is_mod else 'NOT_MODULE'}")
        return MODULE if is_mod else NOT_MODULE

    def undefined_module_members(self, code: str) -> list[dict]:
        """`module.member` accesses whose member the module does not define.

        Delegates to ScopeLens (jedi, resolved against the server's own env) so
        the finished-code report matches the decoding-time member constraint.
        """
        return self._session.undefined_module_members(code)

    def member_names(self, terminals, base_expr_span, prefix: str = ""):
        """Return completion labels available after a module base expression.

        ``base_expr_span`` is the inclusive terminal span of the expression
        before the dot. ``prefix`` is the partially generated member name, if
        any. Returning ``None`` means the LSP query could not produce a usable
        answer, so callers should stay permissive.
        """

        base_expr_span = self._validate_terminal_span(base_expr_span, len(terminals))
        if base_expr_span is None:
            return None

        code, line, character = self._code_and_cursor_after_terminal_span(
            terminals,
            base_expr_span,
            suffix="." + prefix,
        )
        return self._complete_variables(
            code,
            line,
            character,
            prefix=prefix,
            context=(
                f"module member query expr_span={base_expr_span}, "
                f"prefix={prefix!r}, "
                f"base={self._terminal_span_text(terminals, base_expr_span)!r}"
            ),
        )

    def _code_and_cursor_from_terminals(self, terminals, term_idx):
        parts = []
        line = 0
        character = 0

        for i, terminal in enumerate(terminals):
            value = "" if str(terminal.value).startswith("```") else terminal.value
            separator = self._separator_before_value(parts, value)
            if separator:
                parts.append(separator)
            parts.append(value)
            if i == term_idx:
                line, character = self._position_after_text("".join(parts))

        return "".join(parts), line, character

    def _code_and_cursor_after_terminal_span(self, terminals, expr_span, suffix: str = ""):
        """Build source code up to a span end and return the cursor after it."""

        _start, end = expr_span
        code = self._code_from_terminal_slice(terminals, 0, end)
        if suffix:
            code += suffix
        line, character = self._position_after_text(code)
        return code, line, character

    def _code_from_terminal_slice(self, terminals, start: int, end: int):
        parts = []
        for terminal in terminals[start : end + 1]:
            value = "" if str(terminal.value).startswith("```") else terminal.value
            separator = self._separator_before_value(parts, value)
            if separator:
                parts.append(separator)
            parts.append(value)
        return "".join(parts)

    def _terminal_span_text(self, terminals, expr_span):
        """Render the inclusive terminal span as source text."""

        start, end = expr_span
        return self._code_from_terminal_slice(terminals, start, end).strip()

    def _validate_terminal_span(self, expr_span, terminal_count: int):
        """Return ``(start, end)`` when ``expr_span`` is inside the terminal list."""

        if not isinstance(expr_span, (tuple, list)) or len(expr_span) != 2:
            return None
        start, end = expr_span
        if not isinstance(start, int) or not isinstance(end, int):
            return None
        if start < 0 or end < start or end >= terminal_count:
            return None
        return start, end

    def _is_dotted_identifier(self, text: str) -> bool:
        return bool(re.fullmatch(r"[A-Za-z_]\w*(?:\.[A-Za-z_]\w*)*", text))

    def _separator_before_value(self, parts: list[str], value: str) -> str:
        if not value or value[0].isspace():
            return ""

        prev_char = ""
        for part in reversed(parts):
            if part:
                prev_char = part[-1]
                break

        if (
            prev_char
            and not prev_char.isspace()
            and self._is_identifier_char(prev_char)
            and self._is_identifier_char(value[0])
        ):
            return " "
        return ""

    def _is_identifier_char(self, char: str) -> bool:
        return char == "_" or char.isalnum()

    def _position_after_text(self, text: str):
        lines = text.split("\n")
        return len(lines) - 1, len(lines[-1])

    def _short_debug_value(self, value, max_len: int = 80) -> str:
        text = repr(str(value))
        if len(text) <= max_len:
            return text
        return text[: max_len - 3] + "..."

    def _terminal_debug_window(self, terminals, term_idx: int, radius: int = 4) -> str:
        start = max(0, term_idx - radius)
        end = min(len(terminals), term_idx + radius + 1)
        chunks = []
        for index in range(start, end):
            terminal = terminals[index]
            marker = "*" if index == term_idx else ""
            chunks.append(
                f"{marker}{index}:{terminal.type}:{self._short_debug_value(terminal.value)}"
            )
        return "[" + ", ".join(chunks) + "]"

    def _offset_from_position(self, code: str, line: int, character: int) -> int:
        lines = code.splitlines(keepends=True)
        if line <= 0:
            return min(character, len(code))
        if line >= len(lines):
            return len(code)
        return min(sum(len(part) for part in lines[:line]) + character, len(code))

    def _position_from_offset(self, code: str, offset: int):
        before = code[:offset]
        lines = before.split("\n")
        return len(lines) - 1, len(lines[-1])

    _BRACKET_CURSOR_MARKER = "\x00\x00SL_CURSOR\x00\x00"

    def _collapse_bracket_newlines(self, code: str, line: int, character: int):
        """Join newlines inside brackets (e.g. a multi-line list literal) before
        the scope query. complete_rest's INDENT tracking otherwise loses the
        indentation of the lines AFTER a multi-line bracket, pushing them to module
        level, so a local variable used there is wrongly reported out-of-scope
        (masked). A cursor marker rides through the transform so its (line,
        character) stays correct across the removed newlines."""
        offset = self._offset_from_position(code, line, character)
        marker = self._BRACKET_CURSOR_MARKER
        marked = utils.remove_newline_in_brackets(code[:offset] + marker + code[offset:])
        idx = marked.find(marker)
        if idx < 0:  # marker somehow lost -> leave the code untouched
            return code, line, character
        collapsed = marked[:idx] + marked[idx + len(marker):]
        new_line, new_character = self._position_from_offset(collapsed, idx)
        return collapsed, new_line, new_character

    def _truncate_code_after_cursor(self, code: str, line: int, character: int):
        if self.truncate_after_cursor == "none":
            return code, line, character

        offset = self._offset_from_position(code, line, character)
        if self.truncate_after_cursor == "line":
            next_newline = code.find("\n", offset)
            if next_newline != -1:
                code = code[:next_newline]
            return self._strip_dangling_line_tail(code, line, character)

        truncated_code = code[:offset]
        truncated_line, truncated_character = self._position_from_offset(truncated_code, offset)
        return truncated_code, truncated_line, truncated_character

    def _strip_dangling_line_tail(self, code: str, line: int, character: int):
        offset = self._offset_from_position(code, line, character)
        tail = code[offset:]
        if "\n" in tail:
            return code, line, character

        stripped_tail = tail.rstrip()
        if stripped_tail.endswith("."):
            trailing_space = tail[len(stripped_tail):]
            code = code[:offset] + stripped_tail[:-1] + trailing_space
        return code, line, character

    def _identifier_prefix_at(self, code: str, line: int, character: int) -> str:
        offset = self._offset_from_position(code, line, character)
        start = offset
        while start > 0:
            char = code[start - 1]
            if self._is_identifier_char(char):
                start -= 1
            else:
                break

        prefix = code[start:offset]
        if prefix and (prefix[0] == "_" or prefix[0].isalpha()):
            return prefix
        return ""

    def _code_with_cursor_marker(self, code: str, line: int, character: int) -> str:
        offset = self._offset_from_position(code, line, character)
        marker = "<<<SCOPELENS_CURSOR>>>"
        return code[:offset] + marker + code[offset:]

    def _completion_item_preview(self, items, limit: int = 30) -> str:
        preview = []
        for item in items[:limit]:
            label = item.get("label")
            kind = item.get("kind")
            preview.append(f"{label!r}:{kind}")
        suffix = "" if len(items) <= limit else f", ... +{len(items) - limit} more"
        return "[" + ", ".join(preview) + suffix + "]"

    def _complete_variables(
        self,
        code: str,
        line: int,
        character: int,
        prefix: str = "",
        context: str = "",
    ):
        code, line, character = self._truncate_code_after_cursor(code, line, character)
        active_prefix = prefix or self._identifier_prefix_at(code, line, character)
        context_msg = f"{context}; " if context else ""
        utils.debug(
            "Query code for ScopeLens "
            f"({context_msg}cursor line={line}, character={character}, "
            f"active_prefix={active_prefix!r}):\n"
            + self._code_with_cursor_marker(code, line, character)
        )

        suggest_start = time.time()
        items = self._session.complete(code, line, character)
        self.suggestion_time = time.time() - suggest_start
        self.proc_time += self.suggestion_time
        self.check_time = 0.0
        stderr = self._session.stderr_tail()
        if stderr:
            utils.debug("ScopeLens server stderr after completion: " + stderr)

        names = self._names_from_completion_items(items, active_prefix)
        if self.default_banned_names:
            names = [n for n in names if n not in self.default_banned_names]
        utils.debug(
            "ScopeLens completion response: "
            f"items={len(items)}, preview={self._completion_item_preview(items)}, "
            f"filtered_names={names}"
        )
        return set(_unique_preserving_order(names))

    def _names_from_completion_items(self, items, prefix: str = ""):
        names = []
        for item in items:
            kind = item.get("kind")
            if kind == KIND_KEYWORD:
                continue
            label = item.get("label")
            if not isinstance(label, str) or not label:
                continue
            if prefix and not label.startswith(prefix):
                continue
            if not label.isidentifier() or keyword.iskeyword(label):
                continue
            names.append(label)
        return names
