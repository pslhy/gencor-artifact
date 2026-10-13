"""OCaml scope/completion LSP for constrained decoding, backed by ocamllsp.

Ported from the white-space-bug branch. The class name ``LSPMerlin`` is
historical -- it speaks LSP to the ``ocamllsp`` binary (ocaml-lsp-server, which
is built on merlin's libraries). It drives an ``ocamllsp`` subprocess and
answers "which value names are in scope at this cursor?" via
``textDocument/completion``, filtering to value completions (kind == 12).

``ocamllsp`` resolution: $OCAMLLSP_PATH > setup's runtime > opam's ACTIVE switch > PATH >
newest-versioned switch. The resolved path+version is logged once per process
-- WHICH merlin a run used must be recoverable from its log.
"""
from lsp.LSP import LSP
from lsp.runtime import backend_environment, backend_path
import json
import os
import re
import shutil
import subprocess
from pathlib import Path
from urllib.parse import urljoin
from urllib.request import pathname2url

from utils import utils


def path_to_uri(p: Path) -> str:
    # file:///... URI
    return urljoin("file:", pathname2url(str(p.resolve())))


def _ocamllsp_version(path):
    try:
        out = subprocess.run([path, "--version"], capture_output=True, text=True,
                             timeout=5).stdout.strip()
        return tuple(int(x) for x in re.findall(r"\d+", out)[:3]) or (0,), out
    except Exception:
        return (0,), "?"


def _opam_active_switch_candidate():
    """ocamllsp of the opam-ACTIVE switch (``switch: "..."`` in ~/.opam/config),
    read without shelling out to opam (which may itself be off PATH)."""
    try:
        cfg = (Path.home() / ".opam" / "config").read_text()
    except OSError:
        return None
    m = re.search(r'^switch:\s*"([^"]+)"', cfg, re.M)
    if not m:
        return None
    cand = Path.home() / ".opam" / m.group(1) / "bin" / "ocamllsp"
    return str(cand) if cand.is_file() else None


_RESOLVED_OCAMLLSP = None


def _resolve_ocamllsp() -> str:
    """Locate the ocamllsp binary: $OCAMLLSP_PATH > setup runtime > opam's ACTIVE switch >
    PATH > newest-versioned switch under ~/.opam/*/bin.

    The original fallback scanned ~/.opam/*/bin ALPHABETICALLY, so a launcher
    without ``eval $(opam env)`` silently picked ls48's ocamllsp 1.4.1 over
    ls5x's 1.21.0 -- and merlin 1.4.1 cannot resolve a for-loop variable in an
    incomplete body, so the uv check rejected every completion of the loop var
    (kind-s0 HumanEval/39: one position rejected 201x until the turn timeout).
    The ACTIVE SWITCH now outranks PATH (one declared standard environment
    across generation/classification/execution, matching _resolve_ocamlc).
    Resolved once per process and logged with its version."""
    global _RESOLVED_OCAMLLSP
    if _RESOLVED_OCAMLLSP is not None:
        return _RESOLVED_OCAMLLSP

    path = os.environ.get("OCAMLLSP_PATH") or backend_path("ocamllsp") or _opam_active_switch_candidate() \
        or shutil.which("ocamllsp")
    if not path:
        cands = [str(c) for c in Path.home().glob(".opam/*/bin/ocamllsp") if c.is_file()]
        if cands:
            path = max(cands, key=lambda c: _ocamllsp_version(c)[0])
    if not path:
        path = "ocamllsp"  # spawn raises a clear error if it is missing

    _, ver = _ocamllsp_version(path)
    utils.info(f"[LSPMerlin] ocamllsp = {path} (version {ver})")
    _RESOLVED_OCAMLLSP = path
    return path


class Merlin:
    """Minimal LSP JSON-RPC client over an ocamllsp subprocess."""

    def __init__(self, cmd):
        self.proc = subprocess.Popen(
            cmd,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            bufsize=0,
            env=backend_environment(),
        )
        self._id = 0

    def _send(self, payload: dict):
        body = json.dumps(payload)
        header = f"Content-Length: {len(body.encode('utf-8'))}\r\n\r\n"
        self.proc.stdin.write(header + body)
        self.proc.stdin.flush()

    def _read(self) -> dict:
        content_length = None
        while True:
            line = self.proc.stdout.readline()
            if line == "":
                raise RuntimeError("LSP server closed. stderr:\n" + self.proc.stderr.read())
            line = line.rstrip("\r\n")
            if line == "":
                break
            k, v = line.split(":", 1)
            if k.lower() == "content-length":
                content_length = int(v.strip())
        if content_length is None:
            raise RuntimeError("Missing Content-Length")
        body = self.proc.stdout.read(content_length)
        return json.loads(body)

    def request(self, method: str, params: dict) -> dict:
        self._id += 1
        self._send({"jsonrpc": "2.0", "id": self._id, "method": method, "params": params})
        # notifications may interleave; read until the matching id comes back
        while True:
            m = self._read()
            if "id" in m and m["id"] == self._id:
                return m

    def notify(self, method: str, params: dict):
        self._send({"jsonrpc": "2.0", "method": method, "params": params})

    def close(self):
        try:
            self.proc.terminate()
            self.proc.wait(timeout=5)
        except Exception:
            try:
                self.proc.kill()
            except Exception:
                pass


class LSPMerlin(LSP):
    def __init__(self):
        super().__init__()
        # Timing stats read by the semantic constrainer.
        self.check_time = 0.0
        self.autocomplete_time = 0.0

        root = Path(".").resolve()
        self.uri = path_to_uri(root / "test.ml")
        self.lsp = Merlin([_resolve_ocamllsp()])
        self.version = 1

        self.lsp.request("initialize", {
            "processId": os.getpid(),
            "rootUri": path_to_uri(root),
            "capabilities": {},
        })
        self.lsp.notify("initialized", {})
        self.lsp.notify("textDocument/didOpen", {
            "textDocument": {
                "uri": self.uri,
                "languageId": "ocaml",
                "version": self.version,
                "text": "",
            }
        })

    def get_variables(self, code_snippet, line=None, col=None, member_access=None):
        self.version += 1

        # After a member access "expr." keep the cursor right on the dot.
        # ``member_access`` may be passed explicitly by terminal-level callers (a
        # trailing DOT terminal); the string fallback can't tell a member-access
        # dot from a float operator (``-.``/``+.``/``*.``/``/.``), which also ends
        # in ".", so it wrongly queried members and dropped every in-scope var.
        if member_access is None:
            member_access = len(code_snippet) >= 2 and code_snippet[-2] == "."
        if member_access:
            code_snippet = code_snippet[:-1]

        self.lsp.notify("textDocument/didChange", {
            "textDocument": {"uri": self.uri, "version": self.version},
            "contentChanges": [{"text": code_snippet}],
        })

        resp = self.lsp.request("textDocument/completion", {
            "textDocument": {"uri": self.uri},
            "position": {"line": line - 1, "character": col},
            "context": {"triggerKind": 1},
        })

        result = resp.get("result")
        items = result["items"] if isinstance(result, dict) and "items" in result else (result or [])
        # kind == 12 -> Variable completions (in-scope value names)
        return {it.get("label") for it in items if it.get("kind") == 12}

    def name_kinds(self, terminals, head_idx):
        """LSP completion (label, kind) for names matching the CAPITALIZED head at
        ``head_idx`` -- the head's own text is the completion prefix, so merlin
        returns the in-scope names that start with it together with their kind
        (9=Module, 4=Constructor, 8=module-type, ...). SymbolKindConstrain
        intersects these kinds with the grammar-allowed set. Returns [] when the
        head names nothing in scope (a hallucination).

        Paren-probe fallback: merlin returns an EMPTY completion for a head that
        IS in scope when the cursor sits at certain reduction-boundary AST nodes
        -- notably a bare CAPITALIZED head as the trailing body of a ``let ... in``
        (verified: ``let y = 1 in String`` -> [], but ``let y = 1 in (String`` ->
        String/StringLabels). That false-negative empties SymbolKindConstrain's
        ``actual`` set, so a real module name (``String``) is judged a
        hallucination and every continuation (incl. its ``.``) gets rejected. When
        a capitalized head completes to nothing, re-query with a fresh ``(``
        before it, which puts the head in an unambiguously-incomplete
        sub-expression where merlin's scope-based completion fires. The probe can
        only RECOVER real in-scope names -- a true hallucination (``Strsplit``)
        still completes to [] under the paren too -- so it never fabricates a kind."""
        kept = self._strip_type_annotation_terminals(terminals[:head_idx])
        prefix = "".join("" if str(t.value).startswith("```") else t.value  # blank the ``` fence
                         for t in kept)
        head = terminals[head_idx].value

        def _complete(code):
            self.version += 1
            self.lsp.notify("textDocument/didChange", {
                "textDocument": {"uri": self.uri, "version": self.version},
                "contentChanges": [{"text": code}],
            })
            lines = code.split("\n")
            resp = self.lsp.request("textDocument/completion", {
                "textDocument": {"uri": self.uri},
                "position": {"line": len(lines) - 1, "character": len(lines[-1])},
                "context": {"triggerKind": 1},
            })
            result = resp.get("result")
            items = result["items"] if isinstance(result, dict) and "items" in result else (result or [])
            return [(it.get("label"), it.get("kind")) for it in items if it.get("label")]

        items = _complete(prefix + head)
        if not items and head.strip()[:1].isupper():
            items = _complete(prefix + "(" + head)
        return items

    # ---- bnd_if_module UMMAC interface (ocaml_sem_ummac) ----

    def module_status(self, terminals, span):
        """OCaml module paths are syntactic (CAPITALIZED_IDENT), and bnd_if_module
        is only attached on such paths, so the base is always a module."""
        return "MODULE"

    @staticmethod
    def _bare_op(label):
        s = label.strip()
        if s.startswith("(") and s.endswith(")"):
            s = s[1:-1]
        return s.replace(" ", "")

    def member_names(self, terminals, base_expr_span, prefix=""):
        """Members of the module path whose dot is at ``base_expr_span`` (= the
        DOT position carried by bnd_if_module). Returns a set the existing
        constraint can match uniformly:
          - value / submodule names        ``foo``, ``Bar``      (for members / nesting)
          - bare operators                 ``+``, ``|>``         (for ``M.(op)``)
          - ``"("`` sentinel iff the module exports >=1 operator (for ``M.(`` gating)
        """
        dot_idx = base_expr_span[1] if base_expr_span else -1
        code = "".join("" if str(t.value).startswith("```") else t.value  # blank the ``` fence
                       for t in terminals[:dot_idx + 1])                   # ends at the dot
        self.version += 1
        self.lsp.notify("textDocument/didChange", {
            "textDocument": {"uri": self.uri, "version": self.version},
            "contentChanges": [{"text": code}],
        })
        lines = code.split("\n")
        resp = self.lsp.request("textDocument/completion", {
            "textDocument": {"uri": self.uri},
            "position": {"line": len(lines) - 1, "character": len(lines[-1])},
            "context": {"triggerKind": 1},
        })
        result = resp.get("result")
        items = result["items"] if isinstance(result, dict) and "items" in result else (result or [])

        names = set()
        has_op = False
        for it in items:
            lab = it.get("label")
            if not lab:
                continue
            if lab.startswith("("):           # parenthesised label
                # Constructors like (::)/[] are NOT operators: there is no real
                # infix op to place in M.(...), so they must neither flip has_op
                # nor enter names (else "(" would be a prefix of "(::)" and the
                # gate leaks anyway). kind 4 == Constructor.
                if it.get("kind") == 4:
                    continue
                has_op = True                 # real operator, e.g. (+%), ( *! )
                names.add(self._bare_op(lab))
            else:
                # Existence only, namespaces mixed: kind correctness (e.g. the
                # TYPE `List.t` used in an expression, MBPP/296) is the
                # SymbolKindConstrain's job (grammar-declared kind set vs
                # the completion item's kind), not this set's.
                names.add(lab)                # value member or submodule
        if has_op:
            names.add("(")                    # gating sentinel
        return names

    # --- type-annotation stripping for robust scope queries ---
    #
    # merlin completion is type-aware: a wrong/incomplete type annotation makes it
    # drop in-scope bindings -- match-pattern vars when the pattern mistypes the
    # scrutinee, and EVERY local under a return-type vs incomplete-expression arity
    # conflict. uv only needs "is this name bound", so we remove COMPLETED `: typexpr`
    # annotations before querying. A no-semantics parser of the same OCaml grammar locates
    # which terminals belong to a `typexpr`; the trailing, still-being-generated
    # annotation never reduces to a `typexpr`, so it is left intact.
    _SYNTAX_PARSER = None

    @classmethod
    def _syntax_parser(cls):
        # Share the decoding grammar, with tree callbacks and no semantic rules.
        # sem-lark ignores the grammar's annotations when semantics=None.
        # TODO: Compare with the old ocaml_comment grammar at c8689c7 on the
        # same terminal prefixes: completed typexpr spans and incomplete
        # match-arm stripping may differ with the v3 grammar. Equivalence of
        # the intermediate completion queries has not been established.
        if cls._SYNTAX_PARSER is None:
            from lark import Lark
            grammar = Path(__file__).resolve().parents[1] / "grammars/ocaml_grammar.lark"
            cls._SYNTAX_PARSER = Lark(
                grammar.read_text(), parser="lalr", start="start",
                keep_all_tokens=True, semantics=None,
            )
        return cls._SYNTAX_PARSER

    def _strip_type_annotation_terminals(self, terminals):
        """Return ``terminals`` with completed ``: typexpr`` annotations removed.

        Works on the terminals directly (they already arrive lexed -- no re-lexing)
        and INCREMENTALLY: a persistent tree parser is advanced over the stable
        prefix (everything but the live candidate, ``terminals[-1]``), and the
        candidate tail is fed to a throwaway ``copy()``. Successive queries that
        share a prefix only pay for the delta. Terminals are stamped with their
        index so `typexpr` tree leaves map back to positions to drop; the
        introducing `COLON` is dropped with them.
        """
        from lark import Tree, Token
        parser = self._syntax_parser()
        n = len(terminals)

        sp = getattr(self, "_sp", None)
        keys = getattr(self, "_sp_keys", None)
        fed = getattr(self, "_sp_n", 0)
        if sp is not None:
            m, lim = 0, min(fed, n)
            while m < lim and keys[m] == (terminals[m].type, terminals[m].value):
                m += 1
            if m < fed:                       # generation backtracked -> rebuild
                sp = None
        if sp is None:
            sp = parser.parse_interactive("")   # tree-building (callbacks ON)
            keys, fed = [], 0

        i = fed
        while i < n - 1:                        # advance over the stable prefix only
            try:
                sp.feed_token(Token(terminals[i].type, terminals[i].value, start_pos=i))
            except Exception:
                break
            keys.append((terminals[i].type, terminals[i].value))
            i += 1
        self._sp, self._sp_keys, self._sp_n = sp, keys, i

        spec = sp.copy()                        # candidate tail on a throwaway copy
        for j in range(i, n):
            try:
                spec.feed_token(Token(terminals[j].type, terminals[j].value, start_pos=j))
            except Exception:
                break

        drop = set()
        # Only strip a COMPLETED annotation: its typexpr must be closed by a
        # terminator (`)`, `=`, `:>`, `;`, ...). A typexpr that runs to the end with
        # no closer is the still-being-generated annotation -- leave it (e.g.
        # `(x : int li` while the model is mid-typing `int list`).
        TERMINATORS = {"RPAREN", "EQ", "COLONGT", "SEMI", "SEMICOLON",
                       "RBRACE", "RBRACKET", "GT", "IN"}

        def walk(node):
            if isinstance(node, Tree):
                if node.data == "typexpr":
                    leaves = [lf.start_pos for lf in node.scan_values(
                        lambda v: isinstance(v, Token)) if lf.start_pos is not None]
                    if leaves:
                        end = max(leaves)
                        if end + 1 < n and terminals[end + 1].type in TERMINATORS:
                            drop.update(leaves)
                for child in node.children:
                    walk(child)

        try:
            stack = spec.parser_state.value_stack
            for value in stack:
                walk(value)
            # Drop the earlier arms of the innermost (incomplete) match -- keep only
            # the arm under the cursor -- so a sibling arm can't pin a conflicting
            # scrutinee type that hides this arm's pattern bindings (e.g. a string
            # matched by both `""` and `'(' :: rest`). The incomplete match's
            # structural tokens sit loose on the value stack (arm patterns/exprs are
            # reduced into Trees); arms begin after FUNCTION or a MATCH/TRY's WITH,
            # and the loose BARs separate them.
            loose = [v for v in stack if isinstance(v, Token) and v.start_pos is not None]
            head = None
            for v in loose:
                if v.type in ("WITH", "FUNCTION"):
                    head = v.start_pos
            if head is not None:
                bars = [v.start_pos for v in loose if v.type == "BAR" and v.start_pos > head]
                if bars:
                    drop.update(range(head + 1, max(bars)))
        except Exception:
            return terminals
        if not drop:
            return terminals
        # drop the COLON that introduces each contiguous typexpr run
        for k in sorted(drop):
            if k - 1 >= 0 and k - 1 not in drop and terminals[k - 1].type == "COLON":
                drop.add(k - 1)
        return [t for k, t in enumerate(terminals) if k not in drop]

    def get_variables_from_terminals(self, terminals, term_idx):
        # Reconstruct the code generated so far, query completion at its end.
        # Type annotations are stripped first: a wrong/incomplete annotation makes
        # merlin's type-aware completion drop in-scope bindings.
        kept = self._strip_type_annotation_terminals(terminals[:term_idx])
        # Blank the markdown code fence (```ocaml / ```): it is a real grammar
        # terminal but NOT OCaml. Keep the terminal (so term_idx stays aligned) and
        # empty its value, like the other LSPs (LSPScopeLens/LSPPyrightV2). Left in,
        # merlin parses the program as an argument to a `` `ocaml `` variant so the
        # outer `let ... in` never closes and a function parameter leaks into the
        # outer `in` body -- an out-of-scope use is then wrongly accepted.
        code = "".join("" if str(t.value).startswith("```") else t.value
                       for t in kept) + " "
        lines = code.split("\n")
        # Member access is a real DOT terminal, not a float operator that merely
        # ends in "." -- decide from the terminal, not the reconstructed string.
        member_access = bool(kept) and kept[-1].type == "DOT"
        return list(self.get_variables(
            code, len(lines), len(lines[-1]), member_access=member_access))

    def close(self):
        try:
            self.lsp.notify("textDocument/didClose", {"textDocument": {"uri": self.uri}})
        except Exception:
            pass
        self.lsp.close()

    def __del__(self):
        try:
            self.close()
        except Exception:
            pass
