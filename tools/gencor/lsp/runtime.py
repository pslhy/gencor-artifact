"""Read setup's persistent backend selection independently of cwd and shell PATH."""
import json
import os
from pathlib import Path

REPO = Path(__file__).resolve().parents[1]


def runtime_config(required=False):
    path = Path(os.environ.get("GENCOR_RUNTIME_CONFIG", REPO / ".gencor/runtime.json"))
    if not path.is_file():
        if required or "GENCOR_RUNTIME_CONFIG" in os.environ:
            raise RuntimeError(f"GenCor runtime configuration is missing: {path}. Run setup to prepare the environment.")
        return None
    try:
        config = json.loads(path.read_text())
        if config.get("schema") != 1 or not isinstance(config.get("paths"), dict):
            raise ValueError("unsupported runtime schema")
        return config
    except (OSError, ValueError) as exc:
        raise RuntimeError(f"Cannot read GenCor runtime configuration: {path}. Regenerate it with setup.") from exc


def backend_path(name):
    config = runtime_config()
    if config is None:
        return None
    value = config["paths"].get(name)
    if not value:
        raise RuntimeError(f"GenCor runtime configuration has no path for {name}. Regenerate it with setup.")
    path = Path(value)
    if (not path.exists() or (name == "typescript" and not (path / "lib/typescript.js").is_file())
            or (name != "typescript" and not os.access(path, os.X_OK))):
        raise RuntimeError(f"Configured {name} is not executable: {path}. Repair the environment with setup.")
    return str(path)


def backend_environment():
    env = os.environ.copy()
    config = runtime_config()
    if config is None:
        return env
    # Environment construction must not require unrelated tools to be healthy.
    # Each adapter validates its selected executable through backend_path;
    # TypeScript loads the configured package when its worker starts.
    paths = config["paths"]
    bins = list(dict.fromkeys(str(Path(paths[key]).parent) for key in ("python", "node", "ocamlc")))
    env["PATH"] = os.pathsep.join(bins + [env.get("PATH", "")])
    if not any(env.get(key) for key in ("OCAMLC_PATH", "OCAMLLSP_PATH", "OCAMLMERLIN_PATH")):
        env["OPAMROOT"] = config["opam_root"]
        env["OPAMSWITCH"] = config["opam_switch"]
        env["OCAMLLIB"] = str(Path(paths["ocamlc"]).parent.parent / "lib/ocaml")
    env.setdefault("GENCOR_TYPESCRIPT_PATH", paths["typescript"])
    # Foreign Python activation should not alter the independently installed LSP.
    env.pop("PYTHONHOME", None)
    env.pop("PYTHONPATH", None)
    return env
