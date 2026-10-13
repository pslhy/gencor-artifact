"""Language-specific behavior for Gencor.

Everything that differs between target languages — static analysis (repair),
comment syntax, file extension, chat prompt / fence, generation seed and
dataset filtering — is bundled into a single :class:`LanguageProfile`.  The
rest of the pipeline stays language-agnostic and just talks to the active
profile, which is selected from the ``-l/--language`` value through
:func:`get_language_profile`.
"""
from dataclasses import dataclass
from typing import Callable, List, Optional, Tuple
from lsp.runtime import backend_environment, backend_path


@dataclass(frozen=True)
class LanguageProfile:
    family: str                                # language family: "python", "ocaml"
    file_ext: str                              # output extension: ".py", ".ml"
    analysis_tag: str                          # pseudo-filename handed to the analyzer
    line_comment: Tuple[str, str]              # (prefix, suffix): ("# ", "") / ("(* ", " *)")
    # Diagnostic check on FINISHED code, used by the repair loop ("complete code"
    # check). Takes (code, filename, mode) so it can vary by the active constraint
    # mode (syntax / uv_open / uv_open_ummac / none) as well as by language.
    analyze: Callable[[str, str, str], List[str]]
    is_undefined_error: Callable[[str], bool]  # classify a message as undefined-variable (UV)
    # Factory for the scope/completion LSP queried during constrained decoding
    # ("incomplete code" check by the semantic constrainer). Zero-arg callable
    # returning an LSP instance, or None when the language has no scope LSP wired
    # up yet (in which case uv_open / uv_open_ummac modes are unavailable).
    lsp_factory: Optional[Callable[[], object]]
    display_name: str                          # prose name used in prompts: "OCaml"
    fence_lang: str                            # markdown fence tag: "ocaml"
    gen_seed: str                              # generation seed postfix: "def" / "let"
    system_prompt: str                         # default chat system prompt
    dataset_langs: frozenset                   # dataset lang-column values that map here
    prelude: str = ""                          # code inserted right after the fence (e.g. python pre-imports)
    is_syntax_error: Callable[[str], bool] = lambda m: False  # classify a message as a syntax error

    def comment_line(self, line: str) -> str:
        prefix, suffix = self.line_comment
        return f"{prefix}{line}{suffix}"

    def comment_block(self, text: str) -> str:
        return "\n".join(self.comment_line(l) for l in text.split("\n"))

    @property
    def code_fence_prefix(self) -> str:
        return f"```{self.fence_lang}\n" + self.prelude

    def matches_lang(self, value) -> bool:
        return str(value).strip().lower() in self.dataset_langs


_PY_MEMBER_LSP = None


def _py_module_member_errors(code: str, filename: str) -> List[str]:
    """Undefined module-member accesses (e.g. ``docx.TextDocument``).

    Detection is delegated to ScopeLens (``undefined_module_members``): the LSP
    server resolves modules with jedi against its own interpreter, so it sees the
    packages the generated code imports and matches the decoding-time member
    constraint -- no import/AST work in this process. Formatted in pyflakes'
    ``<file>:<line>:<col>: <message>`` shape with an ``undefined module member``
    message, so ``is_undefined_error`` counts them as UV (``is_uv``).
    """
    global _PY_MEMBER_LSP
    if _PY_MEMBER_LSP is None:
        _PY_MEMBER_LSP = _py_scope_lsp()
    diags = _PY_MEMBER_LSP.undefined_module_members(code)
    return [
        "%s:%d:%d: undefined module member '%s'"
        % (filename, d["line"], d["character"], d["name"])
        for d in diags
    ]


def _py_analyze(code: str, filename: str, mode: str) -> List[str]:
    # lazy import keeps pyflakes out of module load for non-python runs
    from utils.utils import code_analysis
    messages = code_analysis(code, filename)
    member_errors = _py_module_member_errors(code, filename)
    if member_errors:
        # merge undefined-member lines into the pyflakes list, re-sorted by
        # position so the report reads top-to-bottom (no-op when there are none).
        import re
        messages.extend(member_errors)

        def _pos(msg):
            m = re.search(r":(\d+):(\d+):", msg)
            return (int(m.group(1)), int(m.group(2))) if m else (0, 0)

        messages.sort(key=_pos)
    return messages


def _py_scope_lsp():
    # Scope/completion LSP queried during decoding to know which names are in
    # scope. Lazy import keeps lsp deps off the module-load path.
    from lsp.LSPScopeLens import LSPScopeLens
    return LSPScopeLens()


_RESOLVED_OCAMLMERLIN = None


def _resolve_ocamlmerlin() -> Optional[str]:
    """Locate ocamlmerlin: $OCAMLMERLIN_PATH > setup runtime > opam's ACTIVE switch > PATH >
    newest-versioned switch (active switch before PATH, same rationale as
    _resolve_ocamlc: one declared standard environment for every layer).
    Resolved once per process and logged."""
    global _RESOLVED_OCAMLMERLIN
    if _RESOLVED_OCAMLMERLIN is not None:
        return _RESOLVED_OCAMLMERLIN or None
    import os
    import re
    import shutil
    import subprocess
    from pathlib import Path

    def version(p):
        try:
            out = subprocess.run([p, "-version"], capture_output=True, text=True,
                                 timeout=5).stdout
            return tuple(int(x) for x in re.findall(r"\d+", out)[:3]) or (0,)
        except Exception:
            return (0,)

    path = os.environ.get("OCAMLMERLIN_PATH") or backend_path("ocamlmerlin")
    if not path:
        try:
            cfg = (Path.home() / ".opam" / "config").read_text()
            m = re.search(r'^switch:\s*"([^"]+)"', cfg, re.M)
            if m:
                cand = Path.home() / ".opam" / m.group(1) / "bin" / "ocamlmerlin"
                if cand.is_file():
                    path = str(cand)
        except OSError:
            pass
    if not path:
        path = shutil.which("ocamlmerlin")
    if not path:
        cands = [str(c) for c in Path.home().glob(".opam/*/bin/ocamlmerlin")
                 if c.is_file()]
        path = max(cands, key=version) if cands else None
    if path:
        from utils import utils
        utils.info(f"[langprofile] ocamlmerlin = {path}")
    _RESOLVED_OCAMLMERLIN = path or ""
    return path


def _ocaml_analyze(code: str, filename: str, mode: str) -> List[str]:
    # Compile-check finished OCaml with `ocamlc -c` (the COMPILER is the
    # ground truth for run classification -- merlin's recovering dialect
    # accepts things the compiler rejects, e.g. `_` typed holes, and its
    # verdicts drift across merlin versions). ocamlc stops at the FIRST error,
    # so is_uv means "the first compile error is an unbound" -- a deliberate
    # trade against merlin's all-diagnostics list (user call, 2026-07-05).
    # Non-fatal diagnostics (warnings/alerts) are DROPPED -- compilation
    # succeeds with them, but they were counting toward is_err (e.g. MBPP/470
    # flagged by a lone Warning 11). Falls back to `ocamlmerlin single errors`
    # when ocamlc is unavailable. `mode` is unused. Lazy imports keep this
    # machinery off the module-load path for non-ocaml runs.
    import json
    import subprocess

    marker = code.find("```")
    if marker != -1:
        code = code[:marker]

    label = filename if filename.endswith((".ml", ".mli")) else "test.ml"
    out = _ocaml_analyze_ocamlc(code, label)
    if out is not None:
        return out

    merlin = _resolve_ocamlmerlin()
    if merlin is not None:
        try:
            # code comes in over stdin; -filename only labels diagnostics. `single`
            # is standalone (no dune/project needed) and resolves the stdlib.
            proc = subprocess.run(
                [merlin, "single", "errors", "-filename", label],
                input=code, capture_output=True, text=True,
                env=backend_environment(),
            )
            payload = json.loads(proc.stdout)
            if payload.get("class") == "return" and isinstance(payload.get("value"), list):
                out = []
                for e in payload["value"]:
                    if not (isinstance(e, dict) and e.get("message")):
                        continue
                    # non-fatal: merlin tags warnings via `type`, but belt-and-
                    # braces on the message prefix too (alerts carry type
                    # "warning" in some merlin versions, "typer" in others).
                    if (e.get("type") == "warning"
                            or e["message"].startswith(("Warning", "Alert"))):
                        continue
                    st = e.get("start") or {}
                    # `file:line:col: message` -- mirror the python analyzer's
                    # shape (col 1-based); merlin cols are 0-based.
                    out.append("%s:%d:%d: %s" % (label, st.get("line", 0),
                                                 st.get("col", 0) + 1, e["message"]))
                return out
        except Exception:
            pass  # any merlin hiccup -> no diagnostics

    return []


_RESOLVED_OCAMLC = None


def _resolve_ocamlc():
    """Locate ocamlc: $OCAMLC_PATH > setup runtime > opam's ACTIVE switch > PATH > newest
    switch. ACTIVE SWITCH BEFORE PATH on purpose: the opam switch (ls5x,
    5.2.1) is the declared standard environment, aligned with the decoding
    merlin (same stdlib) -- a bare PATH would silently hand us the system
    4.08 and split the generation/classification worlds."""
    global _RESOLVED_OCAMLC
    if _RESOLVED_OCAMLC is not None:
        return _RESOLVED_OCAMLC or None
    import os
    import re
    import shutil
    import subprocess
    from pathlib import Path

    path = os.environ.get("OCAMLC_PATH") or backend_path("ocamlc")
    if not path:
        try:
            cfg = (Path.home() / ".opam" / "config").read_text()
            m = re.search(r'^switch:\s*"([^"]+)"', cfg, re.M)
            if m:
                cand = Path.home() / ".opam" / m.group(1) / "bin" / "ocamlc"
                if cand.is_file():
                    path = str(cand)
        except OSError:
            pass
    if not path:
        path = shutil.which("ocamlc")
    if not path:
        cands = sorted(str(c) for c in Path.home().glob(".opam/*/bin/ocamlc")
                       if c.is_file())
        path = cands[-1] if cands else None
    if path:
        from utils import utils
        try:
            ver = subprocess.run([path, "-version"], capture_output=True,
                                 text=True, timeout=5).stdout.strip()
        except Exception:
            ver = "?"
        utils.info(f"[langprofile] ocamlc = {path} (version {ver})")
    _RESOLVED_OCAMLC = path or ""
    return path


_OCAMLC_STDLIB = {}


def _ocamlc_stdlib(ocamlc):
    """`ocamlc -where` (stdlib dir), cached per binary."""
    if ocamlc not in _OCAMLC_STDLIB:
        import subprocess
        _OCAMLC_STDLIB[ocamlc] = subprocess.run(
            [ocamlc, "-where"], capture_output=True, text=True, timeout=5,
            env=backend_environment(),
        ).stdout.strip()
    return _OCAMLC_STDLIB[ocamlc]


def _ocaml_analyze_ocamlc(code: str, label: str = "test.ml"):
    """`ocamlc -c` diagnostics normalized to `label:line:col: message` lines,
    Warning/Alert blocks dropped (compilation succeeds with them). Returns
    None when ocamlc is unavailable (caller falls back to merlin)."""
    import re
    import subprocess
    import tempfile
    from pathlib import Path

    ocamlc = _resolve_ocamlc()
    if ocamlc is None:
        return None
    with tempfile.TemporaryDirectory() as tmpdir:
        (Path(tmpdir) / "test.ml").write_text(code, encoding="utf-8")
        try:
            # cwd=tmpdir keeps the emitted .cmi/.cmo inside the temp dir.
            # -nostdlib -I <stdlib>: register the stdlib WITHOUT the 5.x
            # auto-include hook, so otherlibs the default environment cannot
            # actually RUN (Str/Unix need their .cma loaded) resolve as a
            # plain `Unbound module ...` -> the uv bucket, aligned with the
            # decoding merlin (which cannot see them either) and with plain
            # `ocaml file.ml` execution.
            proc = subprocess.run(
                [ocamlc, "-nostdlib", "-I", _ocamlc_stdlib(ocamlc),
                 "-c", "test.ml"],
                capture_output=True, text=True, cwd=tmpdir, timeout=30,
                env=backend_environment(),
            )
        except FileNotFoundError:
            return None
        except subprocess.TimeoutExpired:
            return ["test.ml:0:0: ocamlc timed out"]

    if proc.returncode == 0:
        return []
    out = []
    # stderr = blocks of `File "test.ml", line L, characters A-B:` + source
    # echo/caret + `Error|Warning|Alert ...: message` (+ indented continuation)
    header = re.compile(r'^File "[^"]*", line (\d+), characters (\d+)-\d+')
    line = col = 0
    msg_lines = []
    def flush():
        if not msg_lines:
            return
        msg = "\n".join(msg_lines)
        if not msg.startswith(("Warning", "Alert")):
            msg = re.sub(r"^Error(?: \(warning \d+[^)]*\))?: ", "", msg)
            out.append(f"{label}:{line}:{col}: {msg}")
        msg_lines.clear()
    for ln in proc.stderr.splitlines():
        m = header.match(ln)
        if m:
            flush()
            line, col = int(m.group(1)), int(m.group(2)) + 1
            continue
        if re.match(r"^(Error|Warning|Alert)\b", ln):
            flush()
            msg_lines.append(ln)
        elif msg_lines:
            msg_lines.append(ln.strip())
    flush()
    return out


def _ocaml_scope_lsp():
    # OCaml scope/completion LSP (ocamllsp) queried during decoding for uv_* modes.
    # Lazy import keeps the lsp deps off the module-load path for non-ocaml runs.
    from lsp.LSPMerlin import LSPMerlin
    return LSPMerlin()


_TS_ANALYZE_API = None


def _ts_analyze(code, filename, mode):
    # Finished-code type check for the `-c type` repair/stats slot: reuse the
    # original TypeScriptCompilerAPI semantic diagnostics -- the same check the
    # constrainer's type_correct uses. Returns Error-category messages ([] = clean).
    # Lazy import + a cached worker keep the Node/TS deps off non-typescript runs.
    global _TS_ANALYZE_API
    if _TS_ANALYZE_API is None:
        import os
        from lsp.TypeScriptCompilerAPI import TypeScriptCompilerAPI
        root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        _TS_ANALYZE_API = TypeScriptCompilerAPI(root=root, filename="analyze_snippet.ts")
    fence = code.find("```")
    if fence != -1:
        code = code[:fence]
    return [
        f"TS{d.get('code', '')}: {d.get('message', '')}".strip()
        for d in _TS_ANALYZE_API.semantic_diagnostics(code)
        if d.get("category") == "Error"
    ]


_PYTHON_SYSTEM_PROMPT = (
    "You are an expert in Python programming. Solve the given problem by writing "
    "solution code in Python. When answering, insert the solution code in a "
    "```python...``` block."
    # temporarily excluded for MBPP/808 reproduction (commit 7737747 addition):
    # " \nDeclare each function before it is used — never call or reference a function "
    # "defined later."
)

_OCAML_SYSTEM_PROMPT = (
    "You are an expert in OCaml programming. Solve the given problem by writing "
    "solution code in OCaml. When answering, insert the solution code in a "
    "```ocaml...``` block."
)

_TYPESCRIPT_SYSTEM_PROMPT = (
    "You are an expert in TypeScript programming. Solve the given problem by "
    "writing solution code in TypeScript. When answering, insert the solution "
    "code in a ```typescript...``` block."
)


# DISABLED: pre-imports were inserted right after the ```python fence so
# generated HE/MBPP solutions didn't need to import these themselves (curated
# from task semantics + canonical solutions + vanilla generations; excluded
# random/string/os/time/statistics/fractions/calendar as unused, typing as
# already in every HE code_prompt). Removed now that the auto-import constrain
# (-c uv_open ... ai) resolves module heads by reserving the import instead --
# the prelude pre-defined every head and masked the feature. The curated list
# lives on as DEFAULT_IMPORT_MAP in constrain/auto_import_constrain.py.
# Restore by re-adding prelude=_PYTHON_PRELUDE to PYTHON_PROFILE.
_PYTHON_PRELUDE = (
    "import math\n"
    "import cmath\n"
    "import re\n"
    "import sys\n"
    "import copy\n"
    "import array\n"
    "import bisect\n"
    "import heapq\n"
    "import operator\n"
    "import itertools\n"
    "import collections\n"
    "import functools\n"
    "import hashlib\n"
    "import datetime\n"
    "\n"
)

PYTHON_PROFILE = LanguageProfile(
    family="python",
    file_ext=".py",
    analysis_tag="<python>",
    line_comment=("# ", ""),
    analyze=_py_analyze,
    # UV (undefined-reference) errors: pyflakes' "undefined name" plus our
    # "undefined module member" (accessing a member a module does not define).
    is_undefined_error=lambda m: "undefined name" in m or "undefined module member" in m,
    # syntax errors carry an out-of-band flag from code_analysis (utils._SyntaxStr),
    # set by pyflakes' own routing -- no CPython phrasing match, no marker in the text.
    is_syntax_error=lambda m: getattr(m, "is_syntax", False),
    lsp_factory=_py_scope_lsp,
    display_name="Python",
    fence_lang="python",
    gen_seed="def",
    system_prompt=_PYTHON_SYSTEM_PROMPT,
    dataset_langs=frozenset({"python", "py"}),
    prelude="from datetime import timedelta\n",
    # prelude=_PYTHON_PRELUDE,  # disabled: auto-import (ai flag) replaces it
)

OCAML_PROFILE = LanguageProfile(
    family="ocaml",
    file_ext=".ml",
    analysis_tag="<ocaml>",
    line_comment=("(* ", " *)"),
    analyze=_ocaml_analyze,
    # UV = unresolved-name references. Modules and constructors count (the
    # model hallucinating `Stringrev` / a nonexistent variant is the same
    # failure class as an unbound value); record fields are pending a call.
    is_undefined_error=lambda m: any(s in m for s in (
        "Unbound value", "Unbound module", "Unbound constructor",
    )),
    # Parser errors say "Syntax error"; LEXICAL errors use their own wording
    # and were slipping past the predicate into the generic-error pool
    # (vanilla corpus: "Illegal backslash escape .. (\0)" MBPP/242, "Illegal
    # character (\191)" MBPP/564, "Comment not terminated" MBPP/421).
    is_syntax_error=lambda m: any(s in m for s in (
        "Syntax error", "not terminated", "unterminated",
        "Illegal character", "Illegal backslash escape",
    )),
    lsp_factory=_ocaml_scope_lsp,
    display_name="OCaml",
    fence_lang="ocaml",
    gen_seed="let",
    system_prompt=_OCAML_SYSTEM_PROMPT,
    dataset_langs=frozenset({"ocaml", "ml"}),
)

# sem_type/sem_type_diag enforce TypeScript constraints while decoding.
# analyze() runs TypeScriptCompilerAPI semantic checks on
# the finished code for the repair/stats slot. No scope LSP -> uv_open unavailable.
TYPESCRIPT_PROFILE = LanguageProfile(
    family="typescript",
    file_ext=".ts",
    analysis_tag="<typescript>",
    line_comment=("// ", ""),
    analyze=_ts_analyze,
    is_undefined_error=lambda m: "Cannot find name" in m,
    lsp_factory=None,
    display_name="TypeScript",
    fence_lang="typescript",
    gen_seed="",
    system_prompt=_TYPESCRIPT_SYSTEM_PROMPT,
    dataset_langs=frozenset({"typescript", "ts"}),
)

# Fallback for languages without a dedicated analyzer (calc, cpp, ...): repair is
# disabled (analyze -> []), everything else still works with sensible defaults.
DEFAULT_PROFILE = LanguageProfile(
    family="generic",
    file_ext=".txt",
    analysis_tag="<code>",
    line_comment=("# ", ""),
    analyze=lambda code, filename, mode: [],
    is_undefined_error=lambda m: False,
    lsp_factory=None,
    display_name="code",
    fence_lang="",
    gen_seed="",
    system_prompt="",
    dataset_langs=frozenset(),
)

# Registry keyed by language family. Prefix matching also supports direct
# callers using an external grammar variant.
_PROFILES = {
    "python": PYTHON_PROFILE,
    "ocaml": OCAML_PROFILE,
    "typescript": TYPESCRIPT_PROFILE,
}


def get_language_profile(language: str) -> LanguageProfile:
    """Resolve a ``-l`` value (incl. grammar variants) to its LanguageProfile."""
    for family, profile in _PROFILES.items():
        if language == family or language.startswith(family + "_"):
            return profile
    return DEFAULT_PROFILE
