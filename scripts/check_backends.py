"""Real backend checks; no model downloads or GPU allocation."""
import argparse
import os
from pathlib import Path
import shlex
import sys

ARTIFACT = Path(__file__).resolve().parents[1]
REPO = ARTIFACT / "tools/gencor"
sys.path.insert(0, str(REPO))
os.environ.setdefault("GENCOR_RUNTIME_CONFIG", str(ARTIFACT / ".gencor/runtime.json"))


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def check_parser():
    import lark

    actual = Path(lark.__file__).resolve()
    expected = (REPO / "sem-lark/lark/__init__.py").resolve()
    require(actual == expected, f"Imported {actual} instead of sem-lark. Check the tools/gencor/lark symlink.")
    return str(actual)


def check_python(timeout=60):
    from lsp.LSPScopeLens import LSPScopeLens, _default_server_command
    from utils import langprofile

    command = _default_server_command()
    print(f"[INFO] ScopeLens: {shlex.join(command)}", flush=True)
    server = LSPScopeLens(server_command=command)
    profile = langprofile.get_language_profile("python")
    try:
        from utils.utils import time_limit
        with time_limit(timeout):
            names = server.get_variables("known_local = 1\nknown_local")
            require("known_local" in names, f"ScopeLens did not find a defined name: {names}")
            good = profile.analyze("known_local = 1\nresult = known_local\n", "probe.py", "uv_open")
            bad = profile.analyze("result = gencor_missing_probe\n", "probe.py", "uv_open")
            require(not good, f"Valid Python code was reported as erroneous: {good}")
            require(any(profile.is_undefined_error(msg) for msg in bad),
                    f"Python undefined-name detection failed: {bad}")
            # The production finished-code path also checks module members via LSP.
            member_bad = profile.analyze("import math\nresult = math.gencor_missing_probe\n", "probe.py", "uv_open")
            require(any("undefined module member" in msg for msg in member_bad),
                    f"ScopeLens module-member checking failed: {member_bad}")
        return f"{shlex.join(_default_server_command())}; scope/Pyflakes/module-member checks passed"
    finally:
        server.close()
        if langprofile._PY_MEMBER_LSP is not None:
            langprofile._PY_MEMBER_LSP.close()
            langprofile._PY_MEMBER_LSP = None


def check_ocaml():
    import subprocess
    from lark import Token
    from lsp.LSPMerlin import LSPMerlin, _resolve_ocamllsp
    from lsp.runtime import backend_environment
    from utils.langprofile import get_language_profile, _resolve_ocamlc, _resolve_ocamlmerlin

    compiler = _resolve_ocamlc()
    require(compiler is not None, "ocamlc is missing; fallback analysis cannot validate the environment.")
    version = subprocess.check_output([compiler, "-version"], text=True, timeout=10).strip()
    require(version == "5.2.1", f"Selected OCaml {version} instead of pinned version 5.2.1")
    merlin = _resolve_ocamlmerlin()
    require(merlin is not None, "ocamlmerlin is missing")
    merlin_version = subprocess.check_output([merlin, "-version"], text=True, timeout=10).strip()
    require("5.3-502" in merlin_version, f"Selected Merlin {merlin_version} instead of pinned version 5.3-502")
    lsp_version = subprocess.check_output([_resolve_ocamllsp(), "--version"], text=True, timeout=10).strip()
    require(lsp_version == "1.21.0", f"Selected ocamllsp {lsp_version} instead of pinned version 1.21.0")
    import json
    merlin_bad = subprocess.run([merlin, "single", "errors", "-filename", "probe.ml"],
                                input="let result = gencor_missing_probe\n", text=True,
                                capture_output=True, timeout=10, env=backend_environment()).stdout
    require(any("Unbound value" in d.get("message", "") for d in json.loads(merlin_bad).get("value", [])),
            f"Merlin undefined-name detection failed: {merlin_bad}")
    server = LSPMerlin()
    try:
        terminals = [Token("LET", "let "), Token("LOWERCASE_IDENT", "known_local"),
                     Token("EQ", " = "), Token("INTEGER_LITERAL", "1"), Token("IN", " in ")]
        names = server.get_variables_from_terminals(terminals, len(terminals))
        require("known_local" in names, f"ocamllsp did not find a defined name: {names}")
        profile = get_language_profile("ocaml")
        good = profile.analyze("let known_local = 1\nlet result = known_local\n", "probe.ml", "uv_open")
        bad = profile.analyze("let result = gencor_missing_probe\n", "probe.ml", "uv_open")
        require(not good, f"Valid OCaml code was reported as erroneous: {good}")
        require(any(profile.is_undefined_error(msg) for msg in bad),
                f"OCaml undefined-name detection failed: {bad}")
        return f"ocamlc={compiler} ({version}); {merlin_version}; ocamllsp={_resolve_ocamllsp()}; scope/unbound checks passed"
    finally:
        server.close()


def check_model_runtime(cuda=False):
    import numpy
    import torch
    import transformers
    # Import the actual main.py dependency graph, but never construct a model.
    from gencor.gencor import Gencor  # noqa: F401

    array = numpy.array([1], dtype=numpy.int64)
    require(torch.from_numpy(array).numpy().tolist() == [1], "PyTorch/NumPy interoperability check failed.")
    if cuda:
        require(torch.cuda.is_available(), "CUDA is unavailable in the current Python/PyTorch environment.")
    return f"Python {sys.version.split()[0]}, torch {torch.__version__}, transformers {transformers.__version__}, numpy {numpy.__version__}"


def check_typescript():
    import subprocess
    import tempfile
    from lsp.runtime import backend_environment, backend_path
    from lsp.TypeScriptCompilerAPI import TypeScriptCompilerAPI

    node = os.environ.get("GENCOR_NODE_PATH") or backend_path("node") or "node"
    package = os.environ.get("GENCOR_TYPESCRIPT_PATH") or backend_path("typescript") or "typescript"
    version = subprocess.check_output([node, "-e", "console.log(require(process.argv[1]).version)", package],
                                      env=backend_environment(), text=True, timeout=10).strip()
    require(version == "6.0.3", f"Selected TypeScript {version} instead of pinned version 6.0.3")
    with tempfile.TemporaryDirectory(prefix="gencor-ts-selection-") as directory:
        helper = Path(directory) / "ts_type_context.js"
        helper.write_text((REPO / "lsp/ts_type_context.js").read_text())
        wrong = Path(directory) / "node_modules/typescript"
        wrong.mkdir(parents=True)
        (wrong / "index.js").write_text("throw new Error('wrong nearest TypeScript package selected');\n")
        for worker in (True, False):
            _check_typescript_mode(TypeScriptCompilerAPI, helper, worker)
    return f"TypeScript {version}; worker/one-shot type and name error checks passed; ignored the adjacent obsolete package"


def _check_typescript_mode(api_class, helper, worker):
    server = api_class(root=REPO)
    server.helper = helper
    try:
        server._use_worker = worker
        good = server.inspect("const known_local: number = 1;\nknown_local;\n")
        bad = server.inspect('const result: number = "wrong";\ngencor_missing_probe;\n')
        for data in (good, bad):
            require(not data.get("error"), f"TypeScript backend failed: {data.get('error')}")
        require(not good["diagnostics"]["syntactic"] and not good["diagnostics"]["semantic"],
                f"Valid TypeScript code was reported as erroneous: {good['diagnostics']}")
        codes = {int(d["code"]) for d in bad["diagnostics"]["semantic"]}
        require({2322, 2304}.issubset(codes), f"TypeScript type/name error detection failed: {bad}")
        require(server.api_call_count >= 2, "Only cached results were used; the TypeScript backend was not exercised")
        require((server._worker is not None) == worker, "TypeScript worker/one-shot selection failed")
    finally:
        server.close()


def check_bcb():
    import json
    import subprocess
    from lsp.runtime import backend_environment, backend_path

    names = [name for line in (ARTIFACT / "requirements-bcb.txt").read_text().splitlines()
             if (name := line.split("#", 1)[0].strip())]
    script = "import cv2,numpy; from faker import Faker; import importlib.metadata as m,json,sys; print(json.dumps({n:m.version(n) for n in json.loads(sys.argv[1])}))"
    scope_python = str(Path(backend_path("scopelens")).parent / "python")
    evaluation_python = str(ARTIFACT / ".gencor/eval-python/bin/python")
    for python in (sys.executable, scope_python, evaluation_python):
        subprocess.check_output([python, "-c", script, json.dumps(names)],
                                env=backend_environment(), text=True, timeout=20)
    from lsp.LSPScopeLens import LSPScopeLens
    server = LSPScopeLens()
    try:
        require("array" in server.get_variables("import numpy as np\nnp."), "ScopeLens could not look up numpy.array")
    finally:
        server.close()
    return f"{len(names)} BCB packages installed and OpenCV/NumPy/Faker imports passed in generation, ScopeLens, and evaluation environments; ScopeLens numpy member lookup passed"


def main():
    parser = argparse.ArgumentParser(description="Check Python, OCaml, and TypeScript analysis and runtime environments (no model loading or GPU generation)")
    parser.add_argument("--model-runtime", action="store_true", help="Also check GenCor model imports and CPU PyTorch/NumPy interoperability")
    parser.add_argument("--cuda", action="store_true", help="Check model runtime and CUDA availability without loading a model")
    parser.add_argument("--timeout", type=int, default=60, help="Timeout in seconds per check (default: 60)")
    parser.add_argument("--bcb", action="store_true", help="Check BCB packages in both Python environments")
    args = parser.parse_args()
    if args.timeout <= 0:
        parser.error("--timeout must be positive")

    import config
    config.args = argparse.Namespace(log=0, quiet=True)

    checks = [("sem-lark", check_parser), ("Python", lambda: check_python(args.timeout)), ("OCaml", check_ocaml), ("TypeScript", check_typescript)]
    if args.bcb:
        checks.append(("BCB", check_bcb))
    if args.model_runtime or args.cuda:
        checks.append(("model runtime", lambda: check_model_runtime(args.cuda)))
    failed = 0
    for label, check in checks:
        try:
            from utils.utils import time_limit
            with time_limit(None if label == "Python" else args.timeout):
                detail = check()
            print(f"[PASS] {label}: {detail}", flush=True)
        except Exception as exc:
            failed += 1
            print(f"[FAIL] {label}: {type(exc).__name__}: {exc}", file=sys.stderr, flush=True)
    print(f"{len(checks) - failed}/{len(checks)} checks passed. Backend checks completed without loading models or datasets.")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
