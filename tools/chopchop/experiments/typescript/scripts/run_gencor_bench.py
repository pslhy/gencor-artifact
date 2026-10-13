#!/usr/bin/env python3
"""Run chopchop's TS decoders over GENCOR's benchmark (humaneval-mbpp-ts.json),
emitting GENCOR-style output so gencor's analysis tooling reads chopchop results
directly:

    {out}/typescript/{model_id}/{exp_id}/{variant}/
        {task_id}.ts            cleaned generated code
        {task_id}.json          gencor per-task statics shape
        config.json  avgerage.json  summary.txt  list_timeout.txt  uv.json  err.json

Decoding config matches gencor run.sh: temperature 1.0, repetition_penalty 1.0,
timeout 90s, top_p 1.0 / top_k 0, seed 0 re-fixed per task. System prompt comes
from context.txt (already swapped to gencor's chat system message).

Prompt construction mirrors gencor --chat: system = context.txt, user =
instruct_prompt, forced code prefix = "```typescript\\n" + code_prompt.

Use ./chopchop-run from the artifact root for environment and path selection.
Direct invocation from this tool's directory:

  PYTHONPATH=. python experiments/typescript/scripts/run_gencor_bench.py \
      --models llama7b --checkers semantic grammar unconstrained \
      --benchmark-json ../gencor/humaneval-mbpp-ts.json \
      --index-file tasksets/chopchop72.idx -x chopchop -o output/popl27

checker <-> gencor mode:  semantic<->sem_type (TypedCD), grammar<->syntax (GCD),
unconstrained<->none (vanilla).

COVERAGE WARNING: chopchop's grammar is a number/boolean-only subset (no strings,
arrays, or lambdas). On the full 549-task gencor benchmark, GCD/TypedCD reject
every string/array token -- and many task SIGNATURES already contain number[]/
string, which are pre-committed as the fixed prefix -- so those tasks burn the
whole timeout and record is_timeout=true. Only the numeric subset (the 72 curated
MBPP ids) is within chopchop's expressible domain. Restrict with --index-file for
the constrained modes; Unconstrained is fine on the full set.
"""
import argparse
import json
import os
import subprocess
import tempfile
import time
from pathlib import Path

from transformers import set_seed

from llm.run_llm import Config, LanguageModelRunner, ModelConfig
from experiments.typescript.typescript_typechecker import typescript_typechecker
from experiments.typescript.typescript_abstract_syntax import typescript_grammar_checker

CONTEXT_FILE_PATH = "experiments/typescript/benchmarks/context.txt"

# Default benchmark: the sibling gencor checkout (repo_root/../gencor). Overridable
# via --benchmark-json; the artifact's chopchop-run passes it explicitly.
_REPO_ROOT = Path(__file__).resolve().parents[3]
_DEFAULT_BENCH = _REPO_ROOT.parent / "gencor" / "humaneval-mbpp-ts.json"

VALID_MODELS = {
    "llama34b": "codellama/CodeLlama-34b-Instruct-hf",
    "llama13b": "codellama/CodeLlama-13b-Instruct-hf",
    "llama7b": "codellama/CodeLlama-7b-Instruct-hf",
    "deepseek": "deepseek-ai/deepseek-coder-6.7b-instruct",
    "qwen": "Qwen/Qwen2.5-Coder-7B-Instruct",
}
CHECKER_MAP = {"semantic": "TypedCD", "unconstrained": "Unconstrained", "grammar": "GCD"}
# chopchop mode -> gencor -c checker name, used for the {variant} dir (mirrors main.py).
GENCOR_CHECKER = {"TypedCD": "sem_type", "GCD": "syntax", "Unconstrained": "none"}


def ts_clean(initial_output: str) -> str:
    out = initial_output
    i = initial_output.find('```typescript')
    if i != -1:
        out = initial_output[i + len('```typescript'):]
        j = out.find('```')
        if j != -1:
            out = out[:j]
    return out


def gencor_prompt_footer(system_prompt: str, user_prompt: str) -> str:
    """System/User prompt trailer gencor appends to each chat result file (see
    gencor/gencor.py run_benchmark's `self.chat and is_single_turn` write path),
    rendered as TypeScript `// ` comments (TYPESCRIPT_PROFILE line_comment)."""
    def cmt(s):
        return "// " + s
    lines = ["", "", cmt("<System Prompt>")]
    lines += [cmt("    " + l) for l in system_prompt.split("\n")]
    lines += [cmt(""), cmt("< User Prompt >")]
    lines += [cmt("    " + l) for l in user_prompt.split("\n")]
    return "\n".join(lines) + "\n"


def typecheck_ts(code: str):
    """(ok, [tsc diagnostic lines]).  ok == (tsc returncode 0), same criterion as
    compile_typescript; we additionally capture the diagnostics so the per-task
    json can carry a gencor-style ``errors`` list."""
    fd, path = tempfile.mkstemp(suffix='.ts')
    try:
        with os.fdopen(fd, 'w') as f:
            f.write(code)
        r = subprocess.run(
            ['tsc', '--noEmit', '--target', 'es2016', '--module', 'commonjs', path],
            capture_output=True, text=True,
        )
        msgs = [l for l in (r.stdout + r.stderr).splitlines() if l.strip()]
        return r.returncode == 0, msgs
    finally:
        if os.path.exists(path):
            os.remove(path)


def gencor_statics(run_info, compiled, errors, elapsed, timeout):
    """Map a chopchop RunInfo onto gencor's single-turn per-task json shape
    (see gencor/gencor.py results() + the statics[...] assignments)."""
    # gencor TS profile: is_undefined_error = "Cannot find name"; no syntax classifier.
    is_uv = bool(errors) and any("Cannot find name" in m for m in errors)
    is_synerr = False
    is_err = (bool(errors) and not is_uv) or is_synerr
    return {
        "decoded": run_info.num_tokens_generated,
        "llm_time": max(0.0, elapsed - run_info.total_realizability_time),
        "after_llm_time": 0.0,
        "check_after_gen_time": run_info.total_realizability_time,
        # gencor's constrainer_time == vocab-wide masking time. chopchop does
        # post-sample reject only (no vocab pre-mask, like gencor -n), so 0.
        "constrainer_time": 0.0,
        "total_time": elapsed,
        "frequency": {str(k): v for k, v in run_info.tries_per_token.items()},
        "is_uv": is_uv,
        "is_synerr": is_synerr,
        "is_err": is_err,
        "is_timeout": run_info.timed_out,
        "time_limit": timeout,
        "errors": errors,
        # chopchop-native provenance (extra keys; ignored by gencor readers).
        "did_compile": compiled,
        "llm_finished": run_info.llm_finished,
        "num_tokens_guessed": run_info.num_tokens_guessed,
        "num_tokens_generated": run_info.num_tokens_generated,
        "total_realizability_time": run_info.total_realizability_time,
    }


def main():
    p = argparse.ArgumentParser(description="chopchop over gencor benchmark, gencor-style output")
    p.add_argument("--models", nargs="+", choices=list(VALID_MODELS), default=["llama7b"])
    p.add_argument("--temps", nargs="+", type=float, default=[1.0])
    p.add_argument("--checkers", nargs="+", choices=list(CHECKER_MAP), default=list(CHECKER_MAP))
    p.add_argument("--benchmark-json", default=str(_DEFAULT_BENCH))
    p.add_argument("--index-file", default=None,
                   help="restrict to the task_ids listed one per line (e.g. the 72 numeric MBPP ids)")
    p.add_argument("-o", "--output", type=Path, default=Path("output"))
    p.add_argument("-x", "--exp-id", default="chopchop")
    p.add_argument("-v", "--variant", default=None,
                   help="variant tag prefix; per-(mode,seed) dir = [<tag>-]<gencor_checker>-s<seed>")
    p.add_argument("-s", "--seeds", nargs="+", type=int, default=[0],
                   help="seeds to sweep; each -> its own <checker>-s<seed> dir, set per task (== gencor -s)")
    p.add_argument("-t", "--timeout", type=int, default=90)
    p.add_argument("-R", "--repetition-penalty", type=float, default=1.0)
    p.add_argument("--top-p", type=float, default=1.0)
    p.add_argument("--top-k", type=float, default=0)
    args = p.parse_args()

    with open(CONTEXT_FILE_PATH) as f:
        context = f.read().rstrip()

    with open(args.benchmark_json) as f:
        bench = json.load(f)
    if args.index_file:
        with open(args.index_file) as f:
            keep = {l.strip() for l in f if l.strip()}
        bench = [b for b in bench if b["task_id"] in keep]
    print(f"[chopchop] {len(bench)} tasks from {args.benchmark_json}"
          + (f" (filtered by {args.index_file})" if args.index_file else ""), flush=True)

    for model_name in args.models:
        model_id = VALID_MODELS[model_name]
        runner = LanguageModelRunner(model_config=ModelConfig(model_id=model_id))
        model_dir = model_id.replace(":", "_")
        for temp in args.temps:
            config = Config(temperature=temp, repetition_penalty=args.repetition_penalty,
                            top_p=args.top_p, top_k=args.top_k, timeout=args.timeout)
            for checker_key in args.checkers:
                mode = CHECKER_MAP[checker_key]
                checker = {"TypedCD": typescript_typechecker,
                           "GCD": typescript_grammar_checker,
                           "Unconstrained": None}[mode]
                for seed in args.seeds:
                    base = f"{args.variant}-" if args.variant else ""
                    variant = f"{base}{GENCOR_CHECKER[mode]}-s{seed}"
                    vdir = args.output / "typescript" / model_dir / args.exp_id / variant
                    vdir.mkdir(parents=True, exist_ok=True)
                    with open(vdir / "config.json", "w") as f:
                        json.dump({"tool": "chopchop", "mode": mode, "checker": checker_key,
                                   "model": model_id, "language": "typescript",
                                   "temperature": temp, "repetition_penalty": args.repetition_penalty,
                                   "top_p": args.top_p, "top_k": args.top_k, "timeout": args.timeout,
                                   "seed": seed, "benchmark": os.path.basename(args.benchmark_json),
                                   "exp_id": args.exp_id, "variant": variant,
                                   "num_tasks": len(bench)}, f, indent=4)

                    all_statics, to_case, uvs, errs = [], [], {}, {}
                    t0 = time.time()
                    for n, b in enumerate(bench):
                        task_id = b["task_id"]
                        # Per-task guard: one bad task (OOM, tsc hiccup, tokenizer
                        # edge case) writes {task_id}_error.txt and is skipped instead
                        # of killing the whole 3240-run batch (mirrors gencor's abort).
                        try:
                            set_seed(seed)  # per-task reseed == gencor main.py set_seed(base_seed)
                            user = b.get("instruct_prompt") or b["prompt"]
                            fixed_prefix = "```typescript\n" + b.get("code_prompt", "")
                            start = time.time()
                            run_info = runner.run(config, user, context=context,
                                                  fixed_prefix=fixed_prefix, realizability_checker=checker)
                            elapsed = time.time() - start
                            code = ts_clean(run_info.output)
                            compiled, errors = typecheck_ts(code)
                            st = gencor_statics(run_info, compiled, errors, elapsed, args.timeout)

                            sub = os.path.dirname(task_id)
                            if sub:
                                (vdir / sub).mkdir(parents=True, exist_ok=True)
                            with open(vdir / f"{task_id}.ts", "w") as f:
                                f.write(code)
                                f.write(gencor_prompt_footer(context, user))
                            with open(vdir / f"{task_id}.json", "w") as f:
                                json.dump(st, f, indent=4)

                            all_statics.append(st)
                            if st["is_timeout"]:
                                to_case.append(task_id)
                            if st["errors"]:
                                errs[task_id] = st["errors"]
                                if st["is_uv"]:
                                    uvs[task_id] = st["errors"]
                            print(f"[{n+1}/{len(bench)}] {mode} {model_name} t{temp} s{seed} | {task_id} | "
                                  f"compile={compiled} timeout={st['is_timeout']} {elapsed:.1f}s", flush=True)
                        except Exception:
                            import traceback
                            sub = os.path.dirname(task_id)
                            if sub:
                                (vdir / sub).mkdir(parents=True, exist_ok=True)
                            with open(vdir / f"{task_id}_error.txt", "w") as ef:
                                traceback.print_exc(file=ef)
                            print(f"[{n+1}/{len(bench)}] {mode} {model_name} t{temp} s{seed} | {task_id} | "
                                  f"ABORT (see {task_id}_error.txt)", flush=True)

                    total = len(all_statics) or 1
                    avg = {"total_tests": len(all_statics)}
                    for k in (all_statics[0] if all_statics else {}):
                        if isinstance(all_statics[0][k], bool):
                            avg[k] = sum(1 for s in all_statics if s.get(k)) / total
                        elif isinstance(all_statics[0][k], (int, float)):
                            avg[k] = sum(float(s.get(k, 0)) for s in all_statics) / total
                    with open(vdir / "avgerage.json", "w") as f:  # gencor's (misspelled) filename
                        json.dump(avg, f, indent=4)

                    n_pass = sum(1 for s in all_statics if s["did_compile"] and not s["is_timeout"])
                    with open(vdir / "summary.txt", "w") as f:
                        f.write(f"tool: chopchop  mode: {mode}  model: {model_id}  temp: {temp}  seed: {seed}\n")
                        f.write(f"tasks: {len(all_statics)}\n")
                        f.write(f"compiled (pass): {n_pass}/{len(all_statics)} {100.0*n_pass/total:.2f}%\n")
                        f.write(f"timeout: {len(to_case)}/{len(all_statics)} {100.0*len(to_case)/total:.2f}%\n")
                        f.write(f"errors: {len(errs)}/{len(all_statics)}  uv: {len(uvs)}/{len(all_statics)}\n")
                        f.write(f"wallclock: {time.time()-t0:.1f}s\n")
                    with open(vdir / "list_timeout.txt", "w") as f:
                        f.write("\n".join(to_case) + ("\n" if to_case else ""))
                    with open(vdir / "uv.json", "w") as f:
                        json.dump(uvs, f, indent=4)
                    with open(vdir / "err.json", "w") as f:
                        json.dump(errs, f, indent=4)
                    print(f"[chopchop] {mode}/{model_name}/t{temp}/s{seed} -> {vdir}  "
                          f"pass {n_pass}/{len(all_statics)}", flush=True)
        del runner


if __name__ == "__main__":
    main()
