#!/usr/bin/env python3
"""Generate the paper tables from saved data, or rerun a selected experiment set."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / "scripts"))
from paper_tables import (DATASETS, EXTENSIONS, MODEL_IDS, MODELS, add_selection_arguments,
                          case_ids, failure_list, load_runs, read_json, selected_groups)


def invoke(command, env=None, log=None):
    print("$ " + shlex.join([str(x) for x in command]), flush=True)
    if log is None:
        subprocess.run(command, cwd=ROOT, env=env, check=True)
    else:
        with log.open("w") as stream:
            stream.write(shlex.join([str(x) for x in command]) + "\n")
            stream.flush()
            attempt = 1
            while True:
                try:
                    subprocess.run(command, cwd=ROOT, env=env, stdout=stream,
                                   stderr=subprocess.STDOUT, check=True)
                    break
                except subprocess.CalledProcessError as exc:
                    # GenCor exits 42 during transducer construction, before
                    # generation starts. A fresh process can rebuild it.
                    if (exc.returncode != 42 or len(command) < 2
                            or Path(command[1]) != ROOT / "gencor-run"):
                        raise
                    attempt += 1
                    message = f"GenCor initialization exited 42; retrying (attempt {attempt})."
                    print(message, flush=True)
                    print(message, file=stream, flush=True)


def generation_command(table, language, model, seed, method, config, selected, stage, benchmark):
    """Use the existing drivers with the saved run configuration."""
    python = sys.executable
    if method == "mundler":
        command = [python, str(ROOT / "tcg-run"), "--model", model, "--seeds", str(seed),
                   "--bench", str(benchmark), "--output-root", str(stage),
                   "--runset", table, "--exp-id", "artifact", "--variant", "tcg",
                   "--device", "cuda:0", "--timeout", str(config["timeout"]),
                   "--temp", str(config["temperature"] if config.get("temperature") is not None else 1.0)]
        directory = stage / table / "typescript" / model / "artifact" / f"tcg-s{seed}"
    elif method == "chopchop":
        alias = {"codellama-7b": "llama7b", "codellama-34b": "llama34b",
                 "deepseek-6.7b": "deepseek", "qwen2.5-coder-7b": "qwen"}[MODELS[model][1]]
        command = [python, str(ROOT / "chopchop-run"), "--models", alias, "--seeds", str(seed),
                   "--checkers", "semantic", "--index-file", str(selected),
                   "--benchmark-json", str(benchmark), "-o", str(stage), "-x", "artifact",
                   "--temps", str(config["temperature"]), "--timeout", str(config["timeout"]),
                   "--top-p", str(config["top_p"]), "--top-k", str(config["top_k"]),
                   "--repetition-penalty", str(config["repetition_penalty"])]
        directory = stage / "typescript" / model / "artifact" / f"sem_type-s{seed}"
    else:
        checker = ["none"] if method in ("vanilla", "repair") else [
            config["checker_base"], *config.get("checker_flags", [])]
        command = [python, str(ROOT / "gencor-run"), "-m", model, "-l", language,
                   "-c", *checker, "-b", DATASETS[language], "-f", str(selected),
                   "-o", str(stage), "-x", "artifact", "-v", f"{method}-s{seed}",
                   "-s", str(seed), "-d", "0", "--chat", "-t", str(config["timeout"]),
                   "-T", str(config["temperature"] if config.get("temperature") is not None else 1.0),
                   "-p", str(config["top_p"] if config.get("top_p") is not None else 1.0),
                   "-k", str(config["top_k"] if config.get("top_k") is not None else 0),
                   "-R", str(config["repetition_penalty"]),
                   "--prefix", config["prefix"], "--postfix", config["postfix"],
                   "--system-prompt-suffix", "", "-r", str(config["rejection_sampling"] if method == "repair" else 1),
                   config["prompt"]]
        directory = stage / language / model / "artifact" / f"{method}-s{seed}"
    return command, directory


def rerun(args, data, output):
    """Rerun historical failure cases; inherit untouched vanilla cases for pass@1."""
    original_runs = load_runs(data)
    # GenCor's existing CLI selects bundled datasets by name. Do not silently
    # feed it different data from the baseline/evaluator when --data is supplied.
    for language in dict.fromkeys(lang for _, lang in selected_groups(args.tables, args.languages)):
        name = f"{DATASETS[language]}.json"
        if (data / "datasets" / name).read_bytes() != (ROOT / "tools/gencor" / name).read_bytes():
            raise ValueError(f"Generation requires the bundled {language} dataset; {data / 'datasets' / name} differs.")
    output.mkdir(parents=True, exist_ok=False)
    result_data = output / "data"
    for name in ("datasets", "case-lists"):
        shutil.copytree(data / name, result_data / name)
    stage = output / "generation"
    logs = output / "logs"
    logs.mkdir()
    env = os.environ.copy()
    if args.device is not None:
        env["CUDA_VISIBLE_DEVICES"] = str(args.device)
    run_records = []
    for table, language in selected_groups(args.tables, args.languages):
        dataset = read_json(data / "datasets" / f"{DATASETS[language]}.json")
        for tag in args.models:
            model = MODEL_IDS[tag]
            for seed in args.seeds:
                selected = (result_data / "case-lists/table2/tasks.txt" if table == "table2"
                            else failure_list(result_data, language, model, seed))
                tasks = set(case_ids(selected))
                # TCG already accepts a benchmark path. A task subset does not
                # alter its prompt construction or require a new driver option.
                subset = output / "inputs" / table / language / tag / f"seed-{seed}.json"
                subset.parent.mkdir(parents=True, exist_ok=True)
                subset.write_text(json.dumps([item for item in dataset if item["task_id"] in tasks],
                                             ensure_ascii=False, indent=2) + "\n")
                methods = (["chopchop", "gencor_type"] if table == "table2" else
                           ["vanilla", "mundler" if language == "typescript" else "repair", "gencor"])
                for method in methods:
                    source_method = method
                    full_key = (table, language, model, seed, "vanilla-full")
                    if method == "vanilla" and full_key in original_runs:
                        source_method = "vanilla-full"
                    source = original_runs[(table, language, model, seed, source_method)]
                    config = read_json(source / "config.json")
                    folder = {"repair": "resample", "mundler": "tcg", "gencor_type": "gencor"}.get(method, method)
                    destination = Path("results") / table / language / tag / folder / f"seed-{seed}"
                    target = result_data / destination
                    benchmark = subset if method == "mundler" else result_data / "datasets" / f"{DATASETS[language]}.json"
                    command, generated = generation_command(table, language, model, seed, method,
                                                            config, selected, stage, benchmark)
                    log = logs / f"{table}-{language}-{tag}-{folder}-seed-{seed}.log"
                    print(f"Running {table} {language} {tag} {folder} seed {seed}: {len(tasks)} cases; log: {log}", flush=True)
                    invoke(command, env, log)
                    for task in tasks:
                        for extension in (".json", EXTENSIONS[language]):
                            path = generated / (task + extension)
                            if not path.is_file():
                                raise RuntimeError(f"Driver did not produce {path}; see {log}. No table was produced from incomplete results.")
                    if method == "vanilla":
                        # Preserve only the untouched per-case records, not stale
                        # aggregate reports from the original generation run.
                        target.mkdir(parents=True)
                        for item in dataset:
                            task = item["task_id"]
                            if item.get("language", language) != language or task in tasks:
                                continue
                            for extension in (".json", EXTENSIONS[language]):
                                path = target / (task + extension)
                                path.parent.mkdir(parents=True, exist_ok=True)
                                shutil.copyfile(source / (task + extension), path)
                        shutil.copytree(generated, target, dirs_exist_ok=True)
                        shutil.rmtree(generated)
                    else:
                        target.parent.mkdir(parents=True, exist_ok=True)
                        shutil.move(str(generated), target)
                    run_records.append(dict(table=table, language=language, model=model, seed=seed,
                                            method="vanilla-full" if method == "vanilla" and language == "typescript" else method,
                                            generation_timeout_seconds=config["timeout"],
                                            destination=destination.as_posix()))
    timeouts = sorted({run["generation_timeout_seconds"] for run in run_records})
    manifest = dict(source_mode="rerun", source_manifest_sha256=hashlib.sha256((data / "manifest.json").read_bytes()).hexdigest(),
                    generation_timeout_seconds=timeouts[0] if len(timeouts) == 1 else None,
                    selection=dict(models=args.models, seeds=args.seeds, tables=args.tables, languages=args.languages),
                    policy="Table 1 reruns the historical failure lists. Vanilla cases outside those lists are inherited from the paper data for full-population pass@1. Table 2 reruns all 72 tasks.",
                    runs=run_records)
    (result_data / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    return result_data


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", nargs="?", choices=("tables", "run"), default="tables",
                        help="tables: aggregate saved data (default); run: generate, grade, and tabulate")
    add_selection_arguments(parser)
    parser.add_argument("--languages", nargs="+", choices=list(DATASETS), default=list(DATASETS))
    parser.add_argument("--data", type=Path, default=ROOT / "data/paper")
    parser.add_argument("--output", type=Path, help="Output directory; run requires a new directory")
    parser.add_argument("--regrade", action="store_true", help="Re-evaluate all selected pass@1 counts, including available grading; always enabled for run")
    parser.add_argument("--pass-results", type=Path, nargs="+", default=[], help="Existing paper-pass summary.json files")
    parser.add_argument("--workers", type=int, default=8, help="Parallel grading workers (default: 8)")
    parser.add_argument("--eval-seed", type=int, default=0, help="Python evaluation RNG seed (default: 0)")
    parser.add_argument("--device", type=int, help="GPU index for run; otherwise respect CUDA_VISIBLE_DEVICES")
    args = parser.parse_args()
    for name in ("models", "seeds", "tables", "languages"):
        setattr(args, name, list(dict.fromkeys(getattr(args, name))))
    if not selected_groups(args.tables, args.languages):
        parser.error("Table 2 contains only TypeScript; the selection is empty.")
    if args.workers < 1 or not 0 <= args.eval_seed < 2**32:
        parser.error("--workers must be positive and --eval-seed must be in [0, 2**32).")
    if args.device is not None and (args.device < 0 or args.command != "run"):
        parser.error("--device must be a nonnegative GPU index and is only used by run.")
    if args.pass_results and (args.regrade or args.command == "run"):
        parser.error("--pass-results cannot be combined with --regrade or run.")
    data = args.data.resolve()
    output = (args.output or ROOT / "output" / ("reproduction" if args.command == "run" else "paper-tables")).resolve()
    preserved = (ROOT / "data/paper").resolve()
    if output == data or data in output.parents or output == preserved or preserved in output.parents:
        parser.error("Output must be outside the input and preserved paper data directories.")
    if args.command == "run":
        data = rerun(args, data, output)
    selection = ["--models", *args.models, "--seeds", *map(str, args.seeds), "--tables", *args.tables]
    pass_results = args.pass_results
    if args.regrade or args.command == "run":
        pass_results = []
        for language in dict.fromkeys(language for _, language in selected_groups(args.tables, args.languages)):
            grade_output = output / "pass" / language
            invoke([sys.executable, str(ROOT / "paper-pass"), "--language", language,
                    "--data", str(data), "--output", str(grade_output), "--workers", str(args.workers),
                    "--eval-seed", str(args.eval_seed), *selection])
            pass_results.append(grade_output / "summary.json")
    table_output = output / "tables" if args.command == "run" else output
    command = [sys.executable, str(ROOT / "paper-tables"), "--data", str(data),
               "--output", str(table_output), *selection, "--languages", *args.languages,
               "--workers", str(args.workers), "--eval-seed", str(args.eval_seed)]
    if pass_results:
        command += ["--pass-results", *map(str, pass_results)]
    invoke(command)


if __name__ == "__main__":
    try:
        main()
    except (OSError, ValueError, RuntimeError, subprocess.CalledProcessError) as exc:
        print(f"Artifact command failed: {exc}", file=sys.stderr)
        sys.exit(1)
