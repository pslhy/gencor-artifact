#!/usr/bin/env python3
"""Recompute Tables 1 and 2 from the preserved data/paper snapshot, without generation."""
import argparse
import csv
import hashlib
import json
import math
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MODELS = {
    "codellama/CodeLlama-7b-Instruct-hf": ("CodeLlama 7B", "codellama-7b"),
    "deepseek-ai/deepseek-coder-6.7b-instruct": ("DS Coder 6.7B", "deepseek-6.7b"),
    "Qwen/Qwen2.5-Coder-7B-Instruct": ("Qwen2.5 7B", "qwen2.5-coder-7b"),
    "codellama/CodeLlama-34b-Instruct-hf": ("CodeLlama 34B", "codellama-34b"),
}
DATASETS = {"python": "bigcodebench-hard", "ocaml": "all_in_one_v2.4",
            "typescript": "humaneval-mbpp-ts"}
EXTENSIONS = {"python": ".py", "ocaml": ".ml", "typescript": ".ts"}
METHODS = {"vanilla": "Vanilla", "repair": "ReSample", "mundler": "TCG",
           "gencor": "GenCor", "chopchop": "ChopChop", "gencor_type": "GenCor"}
MODEL_IDS = {values[1]: model for model, values in MODELS.items()}


def add_selection_arguments(parser):
    parser.add_argument("--models", nargs="+", choices=list(MODEL_IDS), default=list(MODEL_IDS),
                        help="Models to include (default: all four paper models)")
    parser.add_argument("--seeds", nargs="+", type=int, choices=range(5), default=list(range(5)),
                        help="Generation seeds to include (default: 0 1 2 3 4)")
    parser.add_argument("--tables", nargs="+", choices=("table1", "table2"), default=["table1", "table2"])


def selected_groups(tables, languages):
    return [(table, language) for table in dict.fromkeys(tables)
            for language in dict.fromkeys(languages)
            if table == "table1" or language == "typescript"]


def read_json(path):
    return json.loads(path.read_text(encoding="utf-8"))


def case_ids(path):
    ids = path.read_text(encoding="utf-8").splitlines()
    ids = [x.strip() for x in ids if x.strip()]
    if len(ids) != len(set(ids)):
        raise ValueError(f"Duplicate task IDs: {path}")
    return ids


def failure_list(data, language, model, seed):
    tag = MODELS[model][1]
    return data / "case-lists/table1" / language / tag / f"seed-{seed}.txt"


def load_runs(data):
    runs = {}
    for run in read_json(data / "manifest.json")["runs"]:
        directory = data / run["destination"]
        config = read_json(directory / "config.json")
        # Read the actual run configuration, not an alias guessed from a filename.
        model = config["model"]
        if model not in MODELS or config["seed"] != run["seed"]:
            raise ValueError(f"Unexpected model/seed: {directory}")
        key = (run["table"], run["language"], model, run["seed"], run["method"])
        if key in runs:
            raise ValueError(f"Duplicate run: {key}")
        runs[key] = directory
    return runs


def token_count(meta, code, signature, model, tokenizers, repair=False):
    if meta.get("decoded") is None:
        if model not in tokenizers:
            from transformers import AutoTokenizer
            print(f"tokenizer: {model}", file=sys.stderr, flush=True)
            tokenizers[model] = AutoTokenizer.from_pretrained(model)
        tokenizer = tokenizers[model]
        # Keep the whole generated code, including its fixed signature. Saved
        # prompt metadata is removed when the TypeScript result is loaded.
        # Identical special-token settings on both terms cancel BOS/EOS additions.
        count = (len(tokenizer.encode(code.strip(), add_special_tokens=False))
                 - len(tokenizer.encode(signature, add_special_tokens=False)) + 1)
    elif repair:
        # ReSample's total_time includes all attempts; the denominator is the
        # final output's tokens, not the sum of rejected attempts' tokens.
        count = meta["decoded_at_turn"][str(meta["turns"])]
    else:
        count = meta["decoded"]
    if isinstance(count, bool) or not isinstance(count, int) or count < 0:
        raise ValueError(f"Invalid token count: {count}")
    return count


def target_error(meta, code, language, compiler):
    if language != "typescript":
        return any(meta[k] for k in ("is_uv", "is_synerr", "is_timeout"))
    if meta["is_timeout"]:
        return True
    generated = code.split("```", 1)[0]
    result = compiler.inspect(
        generated, offset=len(generated.encode("utf-16-le")) // 2,
        include_completions=False, include_symbols=False, skip_hole_probe=True,
    )
    diagnostics = result.get("diagnostics")
    # The bridge may turn a compiler failure into empty diagnostics plus error;
    # that fail-open generation response is not a successful offline grade.
    if result.get("error") or result.get("fatalError") or not isinstance(diagnostics, dict):
        raise ValueError(f"TypeScript inspection failed: {result.get('error', result)}")
    if not all(isinstance(diagnostics.get(k), list) for k in ("syntactic", "semantic")):
        raise ValueError(f"Incomplete TypeScript diagnostics: {diagnostics}")
    return any(d["category"] == "Error" for k in ("syntactic", "semantic")
               for d in diagnostics[k])


def load_pass_results(paths, data, seeds=None):
    results = {}
    manifest = hashlib.sha256((data / "manifest.json").read_bytes()).hexdigest()
    for path in paths:
        path = path.resolve()
        environment_path = path.parent / "environment.json"
        environment = read_json(environment_path)
        if environment["manifest_sha256"] != manifest:
            raise ValueError(f"Grading used a different data manifest: {path}")
        language = environment["language"]
        selection = environment.get("selection", {})
        graded_seeds = selection.get("seeds", list(range(5)))
        if sorted(graded_seeds) != sorted(range(5) if seeds is None else seeds):
            raise ValueError(f"Grading used different generation seeds: {path}")
        if language == "typescript" and "compiler_helper_sha256" not in environment:
            raise ValueError(f"TypeScript results must include compiler and functional checks; regrade with paper-pass: {path}")
        summary = read_json(path)
        expected = {(table, language, model, method)
                    for table, _ in selected_groups(selection.get("tables", ["table1", "table2"]), [language])
                    for model in selection.get("models", list(MODELS))
                    for method in (["chopchop", "gencor_type"] if table == "table2" else
                                   ["vanilla", "mundler" if language == "typescript" else "repair", "gencor"])}
        keys = [(row["table"], row["language"], row["model"], row["method"]) for row in summary]
        if language not in DATASETS or len(keys) != len(expected) or set(keys) != expected:
            raise ValueError(f"Incomplete or duplicate grading rows: {path}")
        if sum(row["evaluated"] for row in summary) != environment["cases"]:
            raise ValueError(f"Grading case count does not match its environment record: {path}")
        for key, row in zip(keys, summary):
            if key in results:
                raise ValueError(f"Multiple grading sources for {key}")
            population = row.get("full_population", row["evaluated"])
            passed = row["pass_at_1"]
            if type(passed) is not int or not 0 <= passed <= population:
                raise ValueError(f"Invalid pass count in {path}: {key}")
            results[key] = (passed, population)
    return results


def aggregate(data, compiler, pass_results=None, models=None, seeds=None, languages=None, tables=None):
    runs = load_runs(data)
    models = list(MODELS) if models is None else list(dict.fromkeys(models))
    seeds = list(range(5)) if seeds is None else list(dict.fromkeys(seeds))
    languages = list(DATASETS) if languages is None else languages
    tables = ["table1", "table2"] if tables is None else tables
    historical = read_json(data / "manifest.json").get("source_mode", "paper") == "paper"
    tokenizers, rows, case_rows = {}, [], []
    for table, language in selected_groups(tables, languages):
        dataset = {x["task_id"]: x for x in read_json(data / "datasets" / f"{DATASETS[language]}.json")
                   if x.get("language", language) == language}
        for model in models:
            methods = (["chopchop", "gencor_type"] if table == "table2" else
                       ["vanilla", "mundler" if language == "typescript" else "repair", "gencor"])
            group_rows = []
            for method in methods:
                counts = {"errors": 0, "selected": 0, "timed_cases": 0, "tokens": 0,
                          "zero_token_cases": 0, "time_s": 0.0}
                for seed in seeds:
                    selected = case_ids(data / "case-lists/table2/tasks.txt" if table == "table2"
                                        else failure_list(data, language, model, seed))
                    run_method = method
                    if method == "vanilla" and language == "typescript":
                        run_method = "vanilla-full"
                    directory = runs[(table, language, model, seed, run_method)]
                    for task in selected:
                        signature = dataset[task]["code_prompt"]
                        path = directory / f"{task}.json"
                        meta = read_json(path)
                        code = path.with_suffix(EXTENSIONS[language]).read_text(encoding="utf-8")
                        if language == "typescript":
                            # The driver appends the conversation after the code.
                            # Those comments are metadata, not generated tokens.
                            code = code.split("\n\n// <System Prompt>", 1)[0]
                        # Vanilla's population is the original fixed failure list.
                        error = (historical and method == "vanilla") or target_error(meta, code, language, compiler)
                        counts["errors"] += int(error)
                        counts["selected"] += 1
                        timing = method == "vanilla" or not error
                        tokens = None
                        if timing:
                            # Older ChopChop decoded counts include the fixed prefix.
                            # Each frequency entry counts accepted tokens, so its
                            # values recover the generation count for old and new runs.
                            token_meta = (dict(meta, decoded=sum(meta["frequency"].values()))
                                          if method == "chopchop" else meta)
                            tokens = token_count(token_meta, code, signature, model, tokenizers,
                                                 repair=method == "repair")
                            seconds = meta["total_time"]
                            if not isinstance(seconds, (int, float)) or not math.isfinite(seconds) or seconds < 0:
                                raise ValueError(f"Invalid total_time: {path}")
                            if tokens == 0:
                                counts["zero_token_cases"] += 1
                            if tokens or language == "typescript":
                                counts["timed_cases"] += 1
                                counts["tokens"] += tokens
                                counts["time_s"] += seconds
                        case_rows.append({"table": table, "language": language, "model": model,
                                          "method": method, "seed": seed, "task_id": task,
                                          "target_error": bool(error),
                                          "timed": timing and (bool(tokens) or language == "typescript"),
                                          "tokens": tokens,
                                          "total_time": meta["total_time"]})
                population = len(dataset) * len(seeds) if table == "table1" else counts["selected"]
                key = (table, language, model, method)
                if pass_results and key in pass_results:
                    passed, graded_population = pass_results[key]
                    if graded_population != population:
                        raise ValueError(f"Graded population differs from table population: {key}")
                else:
                    passed = None
                row = {"table": table, "language": language, "model": model, "method": method,
                       "population": population, **counts,
                       "ms_per_token": 1000 * counts["time_s"] / counts["tokens"] if counts["tokens"] else None,
                       "pass_at_1": passed, "seeds": seeds}
                group_rows.append(row)
                print(f"{table} {language} {MODELS[model][0]} {METHODS[method]}: "
                      f"errors={row['errors']}, ms/token={display(row['ms_per_token'], 1)}, "
                      f"pass@1={display(passed) if passed is not None else 'pending grading'}", file=sys.stderr, flush=True)
            base = group_rows[0]
            for row in group_rows:
                row["error_reduction_pct"] = (100 * (base["errors"] - row["errors"]) / base["errors"]
                                               if base["errors"] else None)
                row["time_overhead_pct"] = (100 * (row["ms_per_token"] / base["ms_per_token"] - 1)
                                             if row["ms_per_token"] is not None and base["ms_per_token"] else None)
            rows.extend(group_rows)
    return rows, case_rows


def display(value, places=None):
    return "NA" if value is None else (f"{value:.{places}f}" if places is not None else str(value))


def write_tables(output, rows, case_rows):
    output.mkdir(parents=True, exist_ok=True)
    (output / "tables.json").write_text(json.dumps({"rows": rows},
                                                  ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    with (output / "cases.csv").open("w", encoding="utf-8", newline="") as file:
        writer = csv.DictWriter(file, fieldnames=list(case_rows[0]))
        writer.writeheader()
        writer.writerows(case_rows)
    for table in ("table1", "table2"):
        selected = [row for row in rows if row["table"] == table]
        if not selected:
            # Do not leave a previous full-run table beside new subset results.
            for suffix in ("csv", "txt", "tex"):
                (output / f"{table}.{suffix}").unlink(missing_ok=True)
            continue
        fields = list(selected[0])
        with (output / f"{table}.csv").open("w", encoding="utf-8", newline="") as file:
            writer = csv.DictWriter(file, fieldnames=fields, extrasaction="ignore")
            writer.writeheader()
            writer.writerows(selected)
        nmethods = 3 if table == "table1" else 2
        labels = "Vanilla / Baseline / GenCor" if table == "table1" else "ChopChop / GenCor"
        lines = [f"{table} — {labels}",
                 "Baseline: ReSample (Python/OCaml), TCG (TypeScript).",
                 "language | model | errors | ms/token | pass@1"]
        tex = ["% Generated from saved programs; pass@1 uses saved or recomputed grading.",
               r"\begin{tabular}{ll" + "r" * (3 * nmethods) + "}", r"\hline",
               "Language & Model & " + " & ".join(["Errors"] * nmethods + ["ms/token"] * nmethods + ["pass@1"] * nmethods) + r" \\",
               " & & " + " & ".join(labels.split(" / ") * 3) + r" \\", r"\hline"]
        for i in range(0, len(selected), nmethods):
            group = selected[i:i + nmethods]
            language, model = group[0]["language"], MODELS[group[0]["model"]][0]
            values = [[display(row[key], places) for row in group]
                      for key, places in (("errors", None), ("ms_per_token", 1), ("pass_at_1", None))]
            lines.append(" | ".join([language, model] + [" / ".join(xs) for xs in values]))
            tex.append(" & ".join([language, model] + sum(values, [])) + r" \\")
        tex += [r"\hline", r"\end{tabular}"]
        (output / f"{table}.txt").write_text("\n".join(lines) + "\n", encoding="utf-8")
        (output / f"{table}.tex").write_text("\n".join(tex) + "\n", encoding="utf-8")
        print("\n".join(lines))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--data", type=Path, default=ROOT / "data/paper")
    parser.add_argument("--output", type=Path, default=ROOT / "output/paper-tables")
    parser.add_argument("--pass-results", type=Path, nargs="+", default=[], help="Existing paper-pass summary.json files for the selected data and seeds")
    parser.add_argument("--workers", type=int, default=8, help="Parallel workers for missing functional grading (default: 8)")
    parser.add_argument("--eval-seed", type=int, default=0, help="Python evaluation RNG seed (default: 0)")
    add_selection_arguments(parser)
    parser.add_argument("--languages", nargs="+", choices=list(DATASETS), default=list(DATASETS))
    args = parser.parse_args()
    for name in ("models", "seeds", "tables", "languages"):
        setattr(args, name, list(dict.fromkeys(getattr(args, name))))
    data, output = args.data.resolve(), args.output.resolve()
    if output == data or data in output.parents:
        parser.error("Output must be outside the preserved paper data directory.")
    if not selected_groups(args.tables, args.languages):
        parser.error("Table 2 contains only TypeScript; the selection has no rows.")
    if args.workers < 1 or not 0 <= args.eval_seed < 2**32:
        parser.error("--workers must be positive and --eval-seed must be in [0, 2**32).")
    pass_results = load_pass_results(args.pass_results, data, args.seeds)
    sys.path.insert(0, str(ROOT / "tools/gencor"))
    from lsp.TypeScriptCompilerAPI import TypeScriptCompilerAPI
    with tempfile.TemporaryDirectory(prefix="gencor-paper-tables-") as temporary:
        compiler = TypeScriptCompilerAPI(root=temporary) if "typescript" in args.languages else None
        try:
            rows, case_rows = aggregate(data, compiler, pass_results,
                                       [MODEL_IDS[tag] for tag in args.models], args.seeds, args.languages, args.tables)
        finally:
            if compiler is not None:
                compiler.close()
    missing = [row for row in rows if row["pass_at_1"] is None]
    for language, model in dict.fromkeys((row["language"], row["model"]) for row in missing):
        pending = [row for row in missing if row["language"] == language and row["model"] == model]
        tables = list(dict.fromkeys(row["table"] for row in pending))
        tag = MODELS[model][1]
        (output / "pass").mkdir(parents=True, exist_ok=True)
        # paper-pass requires a new directory; retain every grading run and its
        # provenance even when the same table output directory is used again.
        grade_output = Path(tempfile.mkdtemp(prefix=f"{language}-{tag}-", dir=output / "pass")) / "results"
        print(f"Computing missing pass@1 from saved programs: {language} {tag}, "
              f"tables {', '.join(tables)}, seeds {args.seeds}; results: {grade_output}", flush=True)
        subprocess.run([sys.executable, str(ROOT / "paper-pass"), "--language", language,
                        "--data", str(data), "--output", str(grade_output),
                        "--models", tag, "--seeds", *map(str, args.seeds), "--tables", *tables,
                        "--workers", str(args.workers), "--eval-seed", str(args.eval_seed)],
                       cwd=ROOT, check=True)
        graded = load_pass_results([grade_output / "summary.json"], data, args.seeds)
        # A grading job covers all methods in its selected tables. Only fill
        # missing values; keep any explicitly supplied counts.
        for row in pending:
            key = (row["table"], language, model, row["method"])
            passed, population = graded[key]
            if population != row["population"]:
                raise ValueError(f"Graded population differs from table population: {key}")
            row.update(pass_at_1=passed)
    write_tables(output, rows, case_rows)
    print(f"\nSaved to {output}")


if __name__ == "__main__":
    main()
