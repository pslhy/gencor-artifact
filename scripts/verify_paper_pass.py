#!/usr/bin/env python3
"""Regrade saved paper programs; Python/OCaml reuse the preserved evaluators."""
import argparse
import concurrent.futures
import csv
import hashlib
import importlib.metadata
import json
import os
from pathlib import Path
import shlex
import subprocess
import sys
import tempfile
import time

from paper_tables import DATASETS, EXTENSIONS, METHODS, MODELS, MODEL_IDS, ROOT, add_selection_arguments, selected_groups, case_ids, failure_list, load_runs, read_json, target_error

sys.path.insert(0, str(ROOT / "tools/evaluation"))
import eval_bcb
import eval_ocaml

GENERATION_FAILURE_FIELDS = ("is_err", "is_uv", "is_synerr", "is_timeout")


def grade_case(job):
    path = Path(job["code_path"])
    raw = path.read_text(encoding="utf-8")
    result = {key: value for key, value in job.items() if key not in ("test", "entry_point", "ocaml", "node", "typescript")}
    result["code_sha256"] = hashlib.sha256(path.read_bytes()).hexdigest()
    result["test_sha256"] = hashlib.sha256(job["test"].encode()).hexdigest()
    metadata = read_json(path.with_suffix(".json"))
    skip_reason = ("generation_timeout" if metadata.get("is_timeout") else
                   "generation_failure" if any(metadata.get(k, False) for k in GENERATION_FAILURE_FIELDS)
                   else job.get("skip_reason"))
    if skip_reason:
        result.update(status="failed", detail="Functional tests not run: " + skip_reason,
                      skip_reason=skip_reason, test_executed=False,
                      tests_passed=0, tests_run=0, elapsed_s=0.0)
        return result
    started = time.monotonic()
    # The original Python evaluator creates task directories without removing
    # them; keep all of those under one disposable directory for this case.
    with tempfile.TemporaryDirectory(prefix="gencor-grade-") as temporary:
        previous = tempfile.tempdir
        tempfile.tempdir = temporary
        try:
            if job["language"] == "python":
                code = eval_bcb.extract_last_turn(raw) if job["method"] == "repair" else raw
                code = code.replace("`", "")
                ntotal = len(eval_bcb._TESTDEF.findall(job["test"])) or 1
                status, detail, passed, total = eval_bcb.run_one(
                    code, job["test"], job["entry_point"], ntotal, 12, seed=job["eval_seed"])
            elif job["language"] == "ocaml":
                code = (eval_ocaml.extract_last_turn(raw) if job["method"] == "repair"
                        else eval_ocaml.strip_echo(raw))
                status, detail, passed, total = eval_ocaml.run_one(job["ocaml"], code, job["test"], 12)
            else:
                code = raw.split("\n\n// <System Prompt>", 1)[0].split("```", 1)[0]
                response = Path(temporary) / "result.json"
                env = dict(os.environ, GENCOR_TYPESCRIPT_PATH=job["typescript"])
                try:
                    with (Path(temporary) / "execution.log").open("w") as log:
                        process = subprocess.run(
                            [job["node"], str(ROOT / "tools/evaluation/eval_typescript.js"), str(response)],
                            input=json.dumps({"code": code, "tests": job["test"]}),
                            text=True, stdout=log, stderr=log, cwd=temporary, env=env, timeout=5)
                    if response.exists() and process.returncode == 0:
                        grade = read_json(response)
                        status, detail = grade["status"], grade["detail"]
                    else:
                        status = "failed"
                        detail = f"ProcessExit {process.returncode}; " + (Path(temporary) / "execution.log").read_text(errors="replace")[-2000:]
                except subprocess.TimeoutExpired:
                    status, detail = "timeout", "5s functional evaluation timeout"
                passed, total = int(status == "passed"), 1
        finally:
            tempfile.tempdir = previous
    result.update(status=status, detail=detail, test_executed=True, tests_passed=passed, tests_run=total,
                  elapsed_s=time.monotonic() - started)
    return result


def jobs_for(data, language, ocaml, node=None, typescript=None, models=None, seeds=None, tables=None):
    runs = load_runs(data)
    dataset = {x["task_id"]: x for x in read_json(data / "datasets" / f"{DATASETS[language]}.json")
               if x.get("language", language) == language}
    jobs = []
    for table, _ in selected_groups(["table1", "table2"] if tables is None else tables, [language]):
        methods = (["chopchop", "gencor_type"] if table == "table2" else
                   ["vanilla", "mundler" if language == "typescript" else "repair", "gencor"])
        for model in (MODELS if models is None else dict.fromkeys(models)):
            for seed in (range(5) if seeds is None else dict.fromkeys(seeds)):
                selected = set(case_ids(data / "case-lists/table2/tasks.txt" if table == "table2"
                                        else failure_list(data, language, model, seed)))
                for method in methods:
                    key = (table, language, model, seed, method)
                    full_key = (table, language, model, seed, "vanilla-full")
                    if method == "vanilla" and full_key in runs:
                        key = full_key
                    directory = runs[key]
                    for task, item in dataset.items():
                        if method != "vanilla" and task not in selected:
                            continue
                        code = directory / (task + EXTENSIONS[language])
                        if not code.is_file():
                            raise FileNotFoundError(code)
                        jobs.append(dict(table=table, language=language, model=model, seed=seed,
                                         method=method, task_id=task, in_failure_subset=task in selected,
                                         code_path=str(code), test=item["test" if language == "python" else "tests"],
                                         entry_point=item.get("entry_point", "task_func"), ocaml=ocaml,
                                         node=node, typescript=typescript))
    return jobs


def check_typescript(jobs, output):
    """Keep compile validity separate from whether emitted JS passes tests."""
    sys.path.insert(0, str(ROOT / "tools/gencor"))
    from lsp.TypeScriptCompilerAPI import TypeScriptCompilerAPI
    from lsp.runtime import backend_path
    checks = {}
    with tempfile.TemporaryDirectory(prefix="gencor-grade-ts-") as temporary:
        # Deeply nested generated casts exceed Node's default V8 stack. Use
        # the 4096 KiB stack from the earlier offline compiler audit, without
        # changing GenCor's production worker or treating a crash as a pass.
        wrapper = Path(temporary) / "node"
        wrapper.write_text("#!/bin/sh\nexec " + shlex.quote(backend_path("node")) + ' --stack-size=4096 "$@"\n')
        wrapper.chmod(0o700)
        old_node = os.environ.get("GENCOR_NODE_PATH")
        os.environ["GENCOR_NODE_PATH"] = str(wrapper)
        compiler = TypeScriptCompilerAPI(root=temporary)
        try:
            with (output / "compiler.jsonl").open("w") as file:
                for i, job in enumerate(jobs, 1):
                    path = Path(job["code_path"])
                    raw = path.read_text(encoding="utf-8")
                    code = raw.split("\n\n// <System Prompt>", 1)[0]
                    error = target_error({"is_timeout": False}, code, "typescript", compiler)
                    if error:
                        job["skip_reason"] = "typescript_compiler_error"
                    check = dict(code_path=str(path), code_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                                 compile_error=bool(error), generation_timeout=read_json(path.with_suffix(".json"))["is_timeout"])
                    checks[str(path)] = check
                    file.write(json.dumps(check) + "\n")
                    file.flush()
                    if i % 1000 == 0:
                        print(f"Compiled {i}/{len(jobs)}", flush=True)
        finally:
            compiler.close()
            if old_node is None:
                os.environ.pop("GENCOR_NODE_PATH", None)
            else:
                os.environ["GENCOR_NODE_PATH"] = old_node
    return checks


def apply_compile_result(record, checks):
    check = checks[record["code_path"]]
    if record["code_sha256"] != check["code_sha256"]:
        raise ValueError(f"Code changed between compilation and execution: {record['code_path']}")
    record = dict(record, runtime_status=record["status"] if record["test_executed"] else "not_run",
                  runtime_detail=record["detail"],
                  compile_error=check["compile_error"], generation_timeout=check["generation_timeout"])
    if check["compile_error"]:
        record.update(status="failed", detail="TypeScript compiler error")
    return record


def summarize(records):
    rows = []
    language = records[0]["language"]
    for model in MODELS:
        if not any(x["model"] == model for x in records):
            continue
        group = [x for x in records if x["model"] == model and x["table"] == "table1"]
        vanilla = [x for x in group if x["method"] == "vanilla"]
        subset = [x for x in vanilla if x["in_failure_subset"]]
        vanilla_pass = sum(x["status"] == "passed" for x in vanilla)
        subset_pass = sum(x["status"] == "passed" for x in subset)
        for method in ("vanilla", "mundler" if language == "typescript" else "repair", "gencor"):
            if not group:
                continue
            part = [x for x in group if x["method"] == method]
            passed = sum(x["status"] == "passed" for x in part)
            total = passed if method == "vanilla" else vanilla_pass - subset_pass + passed
            row = dict(table="table1", language=language, model=model, method=method, evaluated=len(part),
                       passed=passed, failed=sum(x["status"] == "failed" for x in part),
                       timeout=sum(x["status"] == "timeout" for x in part),
                       full_vanilla_pass=vanilla_pass, replaced_vanilla_pass=subset_pass,
                       full_population=len(vanilla), pass_at_1=total)
            rows.append(row)
            print(json.dumps(row, ensure_ascii=False), flush=True)
        if language == "typescript" and any(x["table"] == "table2" and x["model"] == model for x in records):
            for method in ("chopchop", "gencor_type"):
                part = [x for x in records if x["table"] == "table2" and x["model"] == model and x["method"] == method]
                row = dict(table="table2", language=language, model=model, method=method, evaluated=len(part),
                           pass_at_1=sum(x["status"] == "passed" for x in part),
                           failed=sum(x["status"] == "failed" for x in part),
                           timeout=sum(x["status"] == "timeout" for x in part))
                rows.append(row)
                print(json.dumps(row, ensure_ascii=False), flush=True)
    return rows


def write_pass_results(output, rows):
    (output / "summary.json").write_text(json.dumps(rows, ensure_ascii=False, indent=2) + "\n")
    fields = ["table", "language", "model", "method", "population", "pass_at_1", "evaluated", "passed", "failed", "timeout"]
    lines = ["table | language | model | method | pass@1 / population"]
    with (output / "pass-at-1.csv").open("w", encoding="utf-8", newline="") as file:
        writer = csv.DictWriter(file, fieldnames=fields, extrasaction="ignore")
        writer.writeheader()
        for row in rows:
            population = row.get("full_population", row["evaluated"])
            writer.writerow(dict(row, population=population, passed=row.get("passed", row["pass_at_1"])))
            lines.append(f"{row['table']} | {row['language']} | {MODELS[row['model']][0]} | "
                         f"{METHODS[row['method']]} | {row['pass_at_1']} / {population}")
    (output / "pass-at-1.txt").write_text("\n".join(lines) + "\n", encoding="utf-8")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--language", choices=list(DATASETS), required=True)
    parser.add_argument("--data", type=Path, default=ROOT / "data/paper")
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--workers", type=int, default=8, help="Original grading drivers used 8 workers.")
    parser.add_argument("--eval-seed", type=int, default=0, help="Python evaluation seed, separate from generation seeds (default: 0).")
    add_selection_arguments(parser)
    args = parser.parse_args()
    args.models = list(dict.fromkeys(args.models))
    args.seeds = list(dict.fromkeys(args.seeds))
    args.tables = list(dict.fromkeys(args.tables))
    if not selected_groups(args.tables, [args.language]):
        parser.error("Table 2 contains only TypeScript; the selection has no cases.")
    if args.language == "python":
        if not 0 <= args.eval_seed < 2**32:
            parser.error("--eval-seed must be in [0, 2**32).")
        # A hash seed takes effect at interpreter startup, not when assigned
        # inside a running task. All pool/task processes inherit this value.
        if os.environ.get("PYTHONHASHSEED") != str(args.eval_seed):
            os.execve(sys.executable, [sys.executable, *sys.argv],
                      dict(os.environ, PYTHONHASHSEED=str(args.eval_seed)))
        import numpy
        import faker
    data, output = args.data.resolve(), args.output.resolve()
    if output == data or data in output.parents:
        parser.error("Output must be outside preserved paper data.")
    output.mkdir(parents=True, exist_ok=False)
    sys.path.insert(0, str(ROOT / "tools/gencor"))
    os.environ.setdefault("GENCOR_RUNTIME_CONFIG", str(ROOT / ".gencor/runtime.json"))
    from lsp.runtime import backend_environment, backend_path
    if args.language == "ocaml":
        os.environ.update(backend_environment())
    ocaml = backend_path("ocaml") if args.language == "ocaml" else None
    node = backend_path("node") if args.language == "typescript" else None
    typescript = backend_path("typescript") if args.language == "typescript" else None
    jobs = jobs_for(data, args.language, ocaml, node, typescript,
                    [MODEL_IDS[tag] for tag in args.models], args.seeds, args.tables)
    if args.language == "python":
        for job in jobs:
            job["eval_seed"] = args.eval_seed
    evaluator = ROOT / "tools/evaluation" / {"python": "eval_bcb.py", "ocaml": "eval_ocaml.py", "typescript": "eval_typescript.js"}[args.language]
    timeout = 5 if args.language == "typescript" else 12
    metadata = dict(language=args.language, cases=len(jobs), workers=args.workers,
                    per_case_timeout_s=timeout, python=sys.version, executable=sys.executable,
                    ocaml=ocaml, node=node, typescript=typescript, evaluator=str(evaluator),
                    ocamllib=os.environ.get("OCAMLLIB") if ocaml else None,
                    evaluator_sha256=hashlib.sha256(evaluator.read_bytes()).hexdigest(),
                    manifest_sha256=hashlib.sha256((data / "manifest.json").read_bytes()).hexdigest(),
                    selection=dict(models=[MODEL_IDS[tag] for tag in args.models], seeds=args.seeds, tables=args.tables),
                    packages={x.metadata["Name"]: x.version for x in importlib.metadata.distributions()})
    if args.language == "python":
        metadata.update(eval_seed=args.eval_seed, pythonhashseed=os.environ["PYTHONHASHSEED"],
                        randomness_policy="Reset random, numpy.random and Faker in each task process, before executing code/tests. Same seed for every model/method/task. Explicit seeds in code/tests remain in effect; OS entropy and independently constructed RNGs are not overridden.",
                        seed_provenance="Artifact policy; no evaluation seed initialization found in preserved POPL grading drivers. Not selected to match paper counts.")
    if typescript:
        helper = ROOT / "tools/gencor/lsp/ts_type_context.js"
        metadata.update(typescript_version=read_json(Path(typescript) / "package.json")["version"],
                        compiler_stack_size_kb=4096,
                        compiler_helper_sha256=hashlib.sha256(helper.read_bytes()).hexdigest(),
                        pass_rule="No TypeScript compiler Error, and all supplied tests finish successfully.",
                        provenance_note="New TypeScript grading driver; historical POPL driver not found. Runtime timeout 5s follows the surviving TCG translation evaluator.")
    body = Path(__file__).read_bytes()
    (output / "driver.py").write_bytes(body)
    metadata["driver_sha256"] = hashlib.sha256(body).hexdigest()
    (output / "environment.json").write_text(json.dumps(metadata, ensure_ascii=False, indent=2) + "\n")
    print(f"Grading {len(jobs)} {args.language} programs with {args.workers} workers, {timeout}s per case.", flush=True)
    checks = check_typescript(jobs, output) if args.language == "typescript" else None
    records = []
    with (output / "records.jsonl").open("w") as file, concurrent.futures.ProcessPoolExecutor(max_workers=args.workers) as pool:
        pending = [pool.submit(grade_case, job) for job in jobs]
        for future in concurrent.futures.as_completed(pending):
            record = future.result()
            if checks is not None:
                record = apply_compile_result(record, checks)
            records.append(record)
            file.write(json.dumps(record, ensure_ascii=False) + "\n")
            file.flush()
            if len(records) % 100 == 0:
                print(f"Completed {len(records)}/{len(jobs)}", flush=True)
    rows = summarize(records)
    write_pass_results(output, rows)


if __name__ == "__main__":
    main()
