#!/usr/bin/env python3
"""Install project-owned runtimes and validate them before publishing selection.

The bootstrap uses only Python's standard library (Python >= 3.8). Runtimes and
package caches live in .gencor. Missing system prerequisites are reported;
setup never installs system packages or edits shell profiles/the user's opam root.
"""
import argparse
import ctypes
import hashlib
import json
import os
import platform
import shutil
import subprocess
import sys
import tarfile
import urllib.request
import zipfile
from pathlib import Path

REPO = Path(__file__).resolve().parents[1]
GENCOR = REPO / "tools/gencor"
STATE = REPO / ".gencor"
VERSIONS = {
    "uv": "0.12.20", "python": "3.12.11", "scope_python": "3.10.18",
    "node": "22.14.0", "typescript": "6.0.3", "opam": "2.5.2", "ocaml": "5.2.1",
    "merlin": "5.3-502", "ocaml-lsp-server": "1.21.0",
    "scopelens": "6c6cc46db595c9bf680c4d2cf98552605670b547",
    "scopelens_cache_patch": "0581c332ab935cd55e1b7af0a942f0d4d5be499ad1f7781789e8e7f9a2ba50f4",
}
SCOPE_SHA256 = "043087d16ec0ef56e4dcbca0a078dfe5babdaff5c624083831e0f25564360e53"
EVALUATION_PYTHON = "3.10.18"
OPAM_SHA256 = {
    ("Linux", "x86_64"): "edfca2630c373b44b7ee1c2f81cd8dcf67468d0db57d6c02158de553ac63dbd4",
    ("Linux", "aarch64"): "c4106ece84bcb60c68342573d2d6b4f0d6770ee088015c2216adc83d8854dcf9",
    ("Darwin", "x86_64"): "9c3fbee04f64f5caf6875697c84bf87092f71e1170b08b2a7bed744ed02e7b2f",
    ("Darwin", "arm64"): "407e53416cfb49b41ce80e6d3c67a3df08df7f5028f407311f457f4e2a19004b",
}


def say(message):
    print("[setup] " + message, flush=True)


def run(command, env=None, capture=False, cwd=REPO):
    result = subprocess.run([str(x) for x in command], cwd=str(cwd), env=env,
                            check=True, text=True, stdout=subprocess.PIPE if capture else None)
    return result.stdout.strip() if capture else None


def download(url, target):
    target.parent.mkdir(parents=True, exist_ok=True)
    temporary = target.with_name(target.name + ".download")
    with urllib.request.urlopen(url, timeout=90) as response, temporary.open("wb") as out:
        shutil.copyfileobj(response, out)
    temporary.replace(target)


def extract(archive, destination):
    destination.mkdir(parents=True, exist_ok=True)
    with tarfile.open(str(archive)) as tar:
        for member in tar.getmembers():
            path = (destination / member.name).resolve()
            if destination.resolve() not in path.parents and path != destination.resolve():
                raise RuntimeError("Invalid archive path: " + member.name)
            if member.issym() or member.islnk():
                link = Path(member.linkname)
                parent = destination if member.islnk() else path.parent
                resolved = (parent / link).resolve()
                if destination.resolve() not in resolved.parents:
                    raise RuntimeError("Invalid archive link: " + member.name)
        tar.extractall(str(destination))


def check_system_dependencies(bcb, evaluation_only=False):
    missing = [] if evaluation_only else [
        name for name in ("git", "make", "cc", "m4", "patch", "pkg-config", "curl", "unzip")
        if not shutil.which(name)]
    packages = ["build-essential", "git", "m4", "patch", "pkg-config", "curl", "unzip",
                "ca-certificates"] if missing else []
    # Python wheels do not supply these OpenCV runtime libraries on Linux.
    # Check them even when all compiler/build commands are already installed.
    if bcb and platform.system() == "Linux":
        for library, package in (("libGL.so.1", "libgl1"),
                                 ("libglib-2.0.so.0", "libglib2.0-0"),
                                 ("libgthread-2.0.so.0", "libglib2.0-0")):
            try:
                ctypes.CDLL(library)
            except OSError:
                missing.append(library)
                if package not in packages:
                    packages.append(package)
    if not missing:
        return
    instruction = "Install the missing prerequisites with your system package manager."
    if platform.system() == "Linux" and shutil.which("apt-get"):
        instruction = "On Debian/Ubuntu, run as administrator:\n  apt-get update\n  apt-get install --no-install-recommends " + " ".join(packages)
    raise RuntimeError("Missing system prerequisites: " + ", ".join(missing)
                       + ". No system packages were installed.\n" + instruction)


def bootstrap_uv(env):
    binary = STATE / "bin/uv"
    if binary.is_file():
        try:
            if run([binary, "--version"], capture=True).split()[:2] == ["uv", VERSIONS["uv"]]:
                return binary
        except (OSError, subprocess.CalledProcessError):
            pass  # A partial or non-executable binary must be replaced.
    say("Installing project-local uv")
    # PyPI wheels contain the official standalone binaries, without a global pip
    # install or an installer that edits shell profiles.
    system, arch = platform.system(), platform.machine()
    tag = {
        ("Linux", "x86_64"): "manylinux_2_17_x86_64",
        ("Linux", "aarch64"): "manylinux_2_17_aarch64",
        ("Darwin", "x86_64"): "macosx_10_12_x86_64",
        ("Darwin", "arm64"): "macosx_11_0_arm64",
    }.get((system, arch))
    if not tag:
        raise RuntimeError("Unsupported setup platform: " + system + " " + arch)
    with urllib.request.urlopen("https://pypi.org/pypi/uv/{}/json".format(VERSIONS["uv"]), timeout=90) as response:
        metadata = json.load(response)
    distribution = next(item for item in metadata["urls"]
                        if item["packagetype"] == "bdist_wheel" and tag in item["filename"])
    archive = STATE / "downloads" / distribution["filename"]
    download(distribution["url"], archive)
    if hashlib.sha256(archive.read_bytes()).hexdigest() != distribution["digests"]["sha256"]:
        raise RuntimeError("Downloaded uv failed SHA256 verification")
    binary.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(str(archive)) as wheel:
        # Publish uv last, after both verified wheel members are executable.
        for name in ("uvx", "uv"):
            member = next(path for path in wheel.namelist() if path.endswith("/scripts/" + name))
            destination = binary.parent / name
            pending = destination.with_name(name + ".pending")
            pending.write_bytes(wheel.read(member))
            pending.chmod(0o755)
            if name == "uv" and run([pending, "--version"], capture=True).split()[:2] != ["uv", VERSIONS["uv"]]:
                raise RuntimeError("Downloaded uv does not match the pinned version")
            pending.replace(destination)
    return binary


def install_node(env):
    system = platform.system().lower()
    arch = {"x86_64": "x64", "aarch64": "arm64", "arm64": "arm64"}.get(platform.machine())
    if system not in ("linux", "darwin") or not arch:
        raise RuntimeError("Setup supports Linux/macOS on x86_64 or arm64")
    distribution = "node-v{}-{}-{}".format(VERSIONS["node"], system, arch)
    folder = STATE / distribution
    binary = folder / "bin/node"
    if binary.is_file() and os.access(folder / "bin/npm", os.X_OK):
        try:
            if run([binary, "--version"], capture=True) == "v" + VERSIONS["node"]:
                run([binary, folder / "bin/npm", "--version"], env=env, capture=True)
                return binary
        except (OSError, subprocess.CalledProcessError):
            pass  # Node alone does not establish that npm was fully extracted.
    say("Installing project-local Node.js")
    base = "https://nodejs.org/download/release/v{}/".format(VERSIONS["node"])
    archive = STATE / "downloads" / (distribution + ".tar.gz")
    sums = STATE / "downloads/node-SHASUMS256.txt"
    download(base + "SHASUMS256.txt", sums)
    expected = next(line.split()[0] for line in sums.read_text().splitlines()
                    if line.split()[-1] == archive.name)
    if not archive.is_file() or hashlib.sha256(archive.read_bytes()).hexdigest() != expected:
        download(base + archive.name, archive)
    if hashlib.sha256(archive.read_bytes()).hexdigest() != expected:
        raise RuntimeError("Downloaded Node.js failed SHA256 verification")
    if folder.exists():
        shutil.rmtree(folder)
    extract(archive, STATE)
    if run([binary, "--version"], capture=True) != "v" + VERSIONS["node"]:
        raise RuntimeError("Installed Node.js does not match the pinned version")
    if not os.access(folder / "bin/npm", os.X_OK):
        raise RuntimeError("Installed npm is not executable")
    run([binary, folder / "bin/npm", "--version"], env=env, capture=True)
    return binary


def install_python(uv, env, minimal, refresh):
    say("Preparing Python 3.12 generation and Python 3.10 ScopeLens environments")
    run([uv, "python", "install", "--no-bin", VERSIONS["python"], VERSIONS["scope_python"]], env=env)
    gen = STATE / "venv"
    scope = STATE / "scopelens-venv"
    for folder, version in ((gen, VERSIONS["python"]), (scope, VERSIONS["scope_python"])):
        if not (folder / "bin/python").is_file():
            run([uv, "venv", "--quiet", "--python", version, folder], env=env)

    archive = REPO / "vendor/scopelens-6c6cc46.tar.gz"
    if hashlib.sha256(archive.read_bytes()).hexdigest() != SCOPE_SHA256:
        raise RuntimeError("Vendored ScopeLens failed SHA256 verification")
    patch = REPO / "vendor/scopelens-cache.patch"
    if hashlib.sha256(patch.read_bytes()).hexdigest() != VERSIONS["scopelens_cache_patch"]:
        raise RuntimeError("Vendored ScopeLens cache patch failed SHA256 verification")
    source = STATE / "src/scopelens"
    source_stamp = source / ".gencor-source.sha256"
    source_digest = SCOPE_SHA256 + "\n" + VERSIONS["scopelens_cache_patch"] + "\n"
    if (not (source / "pyproject.toml").is_file() or not source_stamp.is_file()
            or source_stamp.read_text() != source_digest):
        if source.exists():
            shutil.rmtree(source)
        try:
            extract(archive, source)
            run(["patch", "--batch", "-p1", "-i", patch], cwd=source)
            # A forced interruption before this point leaves no valid stamp.
            source_stamp.write_text(source_digest)
        except BaseException:
            # Leave a failed first installation retryable.
            shutil.rmtree(source, ignore_errors=True)
            raise
    (STATE / "locks").mkdir(exist_ok=True)
    constraints = STATE / "locks/constraints.txt"
    constraints.write_text("numpy==1.26.4\njedi==0.19.2\nparso==0.8.7\npygls==2.0.0\n")
    for name, folder, contents in (
        ("gencor", gen, (GENCOR / "requirements.txt").read_text() + "\n"
         + (REPO / "tools/type-constrained-code-generation/requirements.txt").read_text()),
        # The backup's wheel config force-includes a grammar already in the
        # package. Editable installation matches its original installation and
        # avoids duplicate wheel entries without modifying the archived source.
        ("scopelens", scope, "-e " + str(source) + "\n"),
    ):
        if not minimal:
            contents += "\n" + (REPO / "requirements-bcb.txt").read_text()
        # NumPy < 2 is required for torch 2.2's NumPy bridge, even without BCB.
        contents += "\nnumpy==1.26.4\n"
        inputs = STATE / "locks" / (name + ".in")
        inputs.write_text(contents)
        digest = hashlib.sha256((json.dumps(VERSIONS, sort_keys=True) + str(minimal)
                 + constraints.read_text() + (GENCOR / "requirements.txt").read_text()
                 + (REPO / "requirements-bcb.txt").read_text() + contents + SCOPE_SHA256).encode()).hexdigest()
        lock = STATE / "locks" / (name + ("-minimal" if minimal else "-bcb") + ".txt")
        stamp = lock.with_suffix(".sha256")
        if refresh or not lock.is_file() or not stamp.is_file() or stamp.read_text() != digest:
            say(name + " dependency lock generation")
            run([uv, "pip", "compile", "--python", folder / "bin/python", "-c", constraints,
                 "--output-file", lock, inputs], env=env, capture=True)
            stamp.write_text(digest)
        say(name + " dependency installation (reuse installed packages on subsequent runs)")
        run([uv, "pip", "sync", "--python", folder / "bin/python", lock], env=env)
        freeze = run([uv, "pip", "freeze", "--python", folder / "bin/python"], env=env, capture=True)
        (STATE / "locks" / (name + "-installed.txt")).write_text(freeze + "\n")
    say("Preparing ScopeLens disk cache for the installed analysis packages")
    modules = "scopelens-minimal-modules.txt" if minimal else "scopelens-bcb-modules.txt"
    run([scope / "bin/python", "-m", "scopelens.prepare_cache",
         "--modules", REPO / "scripts/setup" / modules,
         "--cache-home", STATE / "scopelens-cache"], env=env)
    return gen / "bin/python", scope / "bin/scopelens"


def install_evaluation_python(uv, env):
    say("Installing isolated Python and pinned BCB dependencies for pass@1 evaluation")
    run([uv, "python", "install", "--no-bin", EVALUATION_PYTHON], env=env)
    folder = STATE / "eval-python"
    python = folder / "bin/python"
    if not python.is_file():
        run([uv, "venv", "--quiet", "--python", EVALUATION_PYTHON, folder], env=env)
    actual = run([python, "-c", "import platform; print(platform.python_version())"], env=env, capture=True)
    if actual != EVALUATION_PYTHON:
        raise RuntimeError("Unexpected evaluation Python version: " + actual + ". Move .gencor/eval-python aside and install again.")
    run([uv, "pip", "sync", "--python", python, "--require-hashes",
         REPO / "scripts/evaluation/requirements-python.lock"], env=env)
    run([uv, "pip", "check", "--python", python], env=env)
    run([python, "-c", "import numpy, cv2; from faker import Faker"], env=env)
    (STATE / "locks").mkdir(exist_ok=True)
    freeze = run([uv, "pip", "freeze", "--python", python], env=env, capture=True)
    (STATE / "locks/evaluation-installed.txt").write_text(freeze + "\n")


def install_typescript(node, env):
    target = STATE / "typescript"
    target.mkdir(exist_ok=True)
    for name in ("package.json", "package-lock.json"):
        shutil.copyfile(REPO / "scripts/setup/npm" / name, target / name)
    package = target / "node_modules/typescript"
    local_env = dict(env, PATH=str(node.parent) + os.pathsep + env.get("PATH", ""),
                     npm_config_update_notifier="false")
    installed_lock = target / ".installed-lock"
    digest = hashlib.sha256((target / "package-lock.json").read_bytes()).hexdigest()
    if (not (package / "lib/typescript.js").is_file() or not installed_lock.is_file()
            or installed_lock.read_text() != digest):
        say("Installing TypeScript Compiler 6.0.3")
        run([node.parent / "npm", "ci", "--ignore-scripts", "--no-audit", "--no-fund"],
            env=local_env, cwd=target)
        installed_lock.write_text(digest)
    version = run([node, "-e", "console.log(require(process.argv[1]).version)", package],
                  env=local_env, capture=True)
    if version != VERSIONS["typescript"]:
        raise RuntimeError("Installed TypeScript version is not 6.0.3")
    return package


def install_ocaml(env, jobs):
    opam = STATE / "bin/opam"
    ready = False
    if opam.is_file():
        try:
            ready = run([opam, "--version"], capture=True) == VERSIONS["opam"]
        except (OSError, subprocess.CalledProcessError):
            pass
    if not ready:
        system, machine = platform.system(), platform.machine()
        digest = OPAM_SHA256.get((system, machine))
        if not digest:
            raise RuntimeError("Unsupported opam platform: " + system + " " + machine)
        system_tag = "macos" if system == "Darwin" else "linux"
        arch_tag = "arm64" if machine in ("arm64", "aarch64") else "x86_64"
        filename = "opam-{}-{}-{}".format(VERSIONS["opam"], arch_tag, system_tag)
        pending = opam.with_name("opam.pending")
        download("https://github.com/ocaml/opam/releases/download/{}/{}".format(VERSIONS["opam"], filename), pending)
        if hashlib.sha256(pending.read_bytes()).hexdigest() != digest:
            pending.unlink()
            raise RuntimeError("Downloaded opam failed SHA256 verification")
        pending.chmod(0o755)
        if run([pending, "--version"], capture=True) != VERSIONS["opam"]:
            raise RuntimeError("Downloaded opam does not match the pinned version")
        pending.replace(opam)
    root = STATE / "opam"
    switch = "gencor"
    local_env = dict(env, OPAMROOT=str(root), OPAMSWITCH=switch, OPAMYES="1", OPAMJOBS=str(jobs),
                     OPAMNODEPEXTS="1")
    say("Preparing project-local OCaml 5.2.1 / Merlin / ocamllsp")
    if not (root / "config").is_file():
        # Applies only to this project-owned root, including container installs.
        init_env = dict(local_env)
        init_env.pop("OPAMSWITCH", None)
        run([opam, "init", "--bare", "--no-setup", "--disable-sandboxing", "--yes",
             "default", "https://opam.ocaml.org"], env=init_env)
    if not (root / switch / ".opam-switch/switch-config").is_file():
        run([opam, "switch", "create", switch, "ocaml-base-compiler." + VERSIONS["ocaml"],
             "--yes", "--jobs", str(jobs)], env=local_env)
    run([opam, "install", "--yes", "--switch", switch, "--jobs", str(jobs),
         "ocaml-base-compiler." + VERSIONS["ocaml"], "merlin." + VERSIONS["merlin"],
         "ocaml-lsp-server." + VERSIONS["ocaml-lsp-server"]], env=local_env)
    packages = run([opam, "list", "--installed", "--columns=name,version", "--short"],
                   env=local_env, capture=True)
    (STATE / "locks/ocaml-installed.txt").write_text(packages + "\n")
    return root, switch, root / switch / "bin"


def check(config, minimal):
    candidate = STATE / "runtime.pending.json"
    candidate.write_text(json.dumps(config, indent=2) + "\n")
    env = os.environ.copy()
    # Check the tools just installed, even when setup was called from an unrelated
    # activated environment with overrides for an older artifact.
    for key in ("PYTHONPATH", "PYTHONHOME", "OCAMLLSP_PATH", "OCAMLMERLIN_PATH", "OCAMLC_PATH",
                "SCOPELENS_LANGSERVER", "GENCOR_TYPESCRIPT_PATH", "GENCOR_NODE_PATH"):
        env.pop(key, None)
    env["GENCOR_RUNTIME_CONFIG"] = str(candidate)
    command = [config["paths"]["python"], REPO / "scripts/check_backends.py", "--model-runtime"]
    if not minimal:
        command.append("--bcb")
    run(command, env=env)
    candidate.replace(STATE / "runtime.json")


def main():
    parser = argparse.ArgumentParser(description="Install GenCor Python/ScopeLens/OCaml/TypeScript environments with one command")
    parser.add_argument("--minimal", action="store_true", help="Install analysis and generation environments without BCB third-party packages")
    parser.add_argument("--check", action="store_true", help="Check the configured analysis backends without installing")
    parser.add_argument("--refresh-locks", action="store_true", help="Regenerate Python transitive dependency lock files")
    parser.add_argument("--evaluation-only", action="store_true", help="Install only the pinned Python pass@1 evaluation environment")
    parser.add_argument("--jobs", type=int, default=min(os.cpu_count() or 2, 8))
    args = parser.parse_args()
    if args.jobs < 1:
        parser.error("--jobs must be positive")
    if args.evaluation_only and (args.minimal or args.check or args.refresh_locks):
        parser.error("--evaluation-only cannot be combined with --minimal/--check/--refresh-locks")
    STATE.mkdir(exist_ok=True)
    # Concurrent setup processes would overwrite lock files and opam state.
    import fcntl
    with (STATE / "setup.lock").open("w") as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            raise RuntimeError("Another setup process is running")
        # Keep installer/build-tool caches in this artifact, not the user's home.
        os.environ.update(XDG_CACHE_HOME=str(STATE / "cache"),
                          XDG_CONFIG_HOME=str(STATE / "config"),
                          npm_config_cache=str(STATE / "cache/npm"),
                          KERAS_HOME=str(STATE / "config/keras"))
        if args.check:
            config = json.loads((STATE / "runtime.json").read_text())
            check(config, not config["bcb"])
            return
        env = os.environ.copy()
        for key in ("PYTHONPATH", "PYTHONHOME", "VIRTUAL_ENV", "CONDA_PREFIX"):
            env.pop(key, None)
        env.update(UV_CACHE_DIR=str(STATE / "cache"), UV_PYTHON_INSTALL_DIR=str(STATE / "python"),
                   UV_PYTHON_BIN_DIR=str(STATE / "bin"), UV_PYTHON_PREFERENCE="only-managed")
        check_system_dependencies(not args.minimal, args.evaluation_only)
        if args.evaluation_only:
            install_evaluation_python(bootstrap_uv(env), env)
            say("Done. Evaluate with ./paper-pass --language python --output <new-output-directory>.")
            return
        say("Checking bundled GenCor / sem-lark sources")
        if not (GENCOR / "lark/__init__.py").is_file():
            raise RuntimeError("Check the tools/gencor/lark -> sem-lark/lark symlink")
        uv = bootstrap_uv(env)
        node = install_node(env)
        python, scopelens = install_python(uv, env, args.minimal, args.refresh_locks)
        typescript = install_typescript(node, env)
        root, switch, ocaml_bin = install_ocaml(env, args.jobs)
        config = {
            "schema": 1, "versions": VERSIONS, "bcb": not args.minimal,
            "scopelens_cache": str(STATE / "scopelens-cache"),
            "opam_root": str(root), "opam_switch": switch,
            "paths": {"python": str(python), "scopelens": str(scopelens), "node": str(node),
                      "typescript": str(typescript), **{name: str(ocaml_bin / name)
                      for name in ("ocaml", "ocamlc", "ocamlmerlin", "ocamllsp")}},
        }
        if not args.minimal:
            install_evaluation_python(uv, env)
        say("Checking analysis backend operation")
        check(config, args.minimal)
        say("Done. Run ./gencor-run, ./chopchop-run, or ./tcg-run. Verify installation with ./setup.sh --check.")


if __name__ == "__main__":
    try:
        main()
    except (OSError, RuntimeError, subprocess.CalledProcessError) as exc:
        print("[setup] Failed: {}\nResolve the error and rerun ./setup.sh to resume installation.".format(exc), file=sys.stderr)
        sys.exit(1)
