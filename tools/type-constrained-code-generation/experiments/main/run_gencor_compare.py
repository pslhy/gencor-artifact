"""
TCG (type-constrained-code-generation) driver that mirrors gencor's output so
the two systems can be compared on the SAME benchmark / prompts.

- Reads gencor's `humaneval-mbpp-ts.json` directly (identical prompts to gencor).
- Builds the prompt exactly like gencor:
      system(TS expert + suffix) + instruct_prompt + ```typescript\n + code_prompt
  using the model's chat template (enable_thinking=False for Qwen3).
- Generates with TCG's type-constrained sampler (sample_constrained, constrained=True),
  temperature=1, do_sample=True, try_top_k=1e16 (no top-k / top-p / repetition penalty),
  matching the gencor sampling axes (gencor: top_p=1.0 == no top_p).
- Writes per-task `{task_id}.ts` (gencor footer format: code + commented
  System/User prompt) plus a `timings.jsonl` per seed.

Run from the artifact root after setup:
  ./tcg-run \
      --model Qwen/Qwen3-1.7B --seeds 0,1,2,3,4 --device cuda:0 --timeout 30
"""
import os
import sys
import json
import time
import argparse

# make `typesafe_llm` and `experiments` importable when run from the repo root
_REPO_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, _REPO_ROOT)
import torch
from stopit import TimeoutException
from transformers import AutoModelForCausalLM, AutoTokenizer, set_seed

from typesafe_llm.sampling import sample_constrained
from experiments.main.util import extract_code

# gencor's TypeScript system prompt + default suffix (utils/langprofile.py),
# kept verbatim so the prompt fed to TCG is identical to gencor's.
SYSTEM_PROMPT = (
    "You are an expert in TypeScript programming. Solve the given problem by "
    "writing solution code in TypeScript. When answering, insert the solution "
    "code in a ```typescript...``` block."
    "\nDo not include test cases or explanations as comments in the code."
)
FENCE = "```typescript\n"      # gencor code_fence_prefix


def comment_footer(system_prompt: str, instruct: str) -> str:
    """Reproduce gencor's commented System/User prompt footer (line_comment '// ')."""
    out = ["", "// <System Prompt>"]
    out += ["// " + "    " + l for l in system_prompt.split("\n")]
    out += ["// "]
    out += ["// < User Prompt >"]
    out += ["// " + "    " + l for l in instruct.split("\n")]
    return "\n".join(out)


def build_prompt(tokenizer, instruct: str, code_prompt: str) -> str:
    messages = [
        {"role": "system", "content": SYSTEM_PROMPT},
        {"role": "user", "content": instruct},
    ]
    try:
        chat = tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True, enable_thinking=False
        )
    except TypeError:
        chat = tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )
    return chat + FENCE + code_prompt


def gencor_run_dir(base, runset, model, exp_id, variant, seed):
    """gencor-style run dir: <base>/<runset>/typescript/<org>/<name>/<exp_id>/<variant>-s<seed>/."""
    org, _, name = model.partition("/")
    if not name:            # model id without an org prefix
        org, name = "", org
    return os.path.join(base, runset, "typescript", org, name, exp_id, f"{variant}-s{seed}")


def task_paths(run_dir, task_id):
    """gencor-style per-task paths: <run_dir>/<subset>/<num>.{ts,json} (e.g. HumanEval/0.ts)."""
    sub, _, num = task_id.partition("/")
    d = os.path.join(run_dir, sub)
    return os.path.join(d, f"{num}.ts"), os.path.join(d, f"{num}.json")


def run_config_dict(args, variant, seed):
    """gencor-style per-run config.json contents."""
    return {
        "model": args.model,
        "language": "typescript",
        "variant": f"{variant}-s{seed}",
        "checker": variant,
        "benchmark": "humaneval-mbpp-ts",
        "timeout": args.timeout,
        "seed": seed,
        "temperature": args.temp,
        "top_p": 1.0,
        "top_k": 0,
        "repetition_penalty": 1.0,
        "prefix": FENCE,
        "postfix": "",
        "chat": True,
        "constrained": args.constrained,
        "forward_mode": "sample_constrained",
        "max_tokens": (args.max_tokens if args.max_tokens and args.max_tokens > 0
                       else "no-cap (context+timeout bound)"),
        "exp_id": args.exp_id,
        "runset": args.runset,
        "prompt": SYSTEM_PROMPT,
        "system_prompt_suffix":
            "\nDo not include test cases or explanations as comments in the code.",
        "source": "type-constrained-code-generation (TCG)",
        "sampler": "fp32 softmax + multinomial(replacement=False) reject-resample; "
                   "top_p=1, top_k=0, rep_penalty=1",
    }


def task_meta_dict(elapsed, eos, crashed, resamples, args, seed, decoded):
    """gencor-compatible per-task .json. tsc-derived fields (is_err/is_synerr/is_uv/
    errors) are None for a shared re-typecheck pass to fill (this driver never runs tsc)."""
    return {
        "decoded": decoded,
        "total_time": elapsed,
        "llm_time": elapsed,
        "constrainer_time": 0.0,
        "n_resamples": len(resamples),
        "eos": bool(eos),
        "is_timeout": bool(isinstance(crashed, (TimeoutError, TimeoutException))),
        "time_limit": args.timeout,
        "crashed": None if crashed is None else f"{type(crashed).__name__}: {crashed}",
        "constrained": args.constrained,
        "temp": args.temp,
        "seed": seed,
        "is_err": None,
        "is_synerr": None,
        "is_uv": None,
        "errors": None,
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--model", default="Qwen/Qwen3-1.7B")
    ap.add_argument("--bench", default=os.path.abspath(os.path.join(
        _REPO_ROOT, "../../data/paper/datasets/humaneval-mbpp-ts.json")))
    ap.add_argument("--seeds", default="0,1,2,3,4")
    ap.add_argument("--temp", type=float, default=1.0)
    ap.add_argument("--timeout", type=int, default=90,
                    help="per-task wall-clock cap (s); matches gencor/chopchop (90)")
    ap.add_argument("--max-tokens", type=int, default=0,
                    help="hard token cap; 0 = no cap (bounded by model context + timeout), "
                         "matching gencor/chopchop which rely on fence-stop/timeout")
    ap.add_argument("--try-top-k", type=int, default=10**16)
    ap.add_argument("--device", default="cuda:0")
    ap.add_argument("--output-root", default=None,
                    help="base output dir (before <runset>); default <repo>/output -> "
                         "<base>/<runset>/typescript/<org>/<name>/<exp_id>/<variant>-s<seed>/")
    ap.add_argument("--runset", default="popl27",
                    help="top-level run-set dir under the output base (gencor uses 'popl27')")
    ap.add_argument("--exp-id", default="hmts",
                    help="experiment id dir (gencor uses 'hmts' for humaneval-mbpp-ts)")
    ap.add_argument("-v", "--variant", default=None,
                    help="run name in the '<variant>-s<seed>' dir (gencor 'checker' slot); "
                         "default 'tcg' (constrained) / 'tcg_nc' (vanilla)")
    ap.add_argument("--constrained", type=lambda s: s.lower() != "false", default=True,
                    help="True = type-constrained sampling (TCG); False = vanilla")
    ap.add_argument("--layout", choices=["gencor", "flat"], default="gencor",
                    help="gencor (default) = <base>/<runset>/typescript/<org>/<name>/<exp_id>/"
                         "<variant>-s<seed>/ with per-task <n>.json + config.json; "
                         "flat = legacy <output-root>/s<seed>/<task_id>.ts + timings.jsonl")
    ap.add_argument("--limit", type=int, default=None, help="only first N tasks (debug)")
    ap.add_argument("--task-id", default=None, help="run a single task id, e.g. HumanEval/0")
    ap.add_argument("--overwrite", action="store_true")
    args = ap.parse_args()

    seeds = [int(x) for x in args.seeds.split(",") if x != ""]
    repo_root = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    variant = args.variant or ("tcg" if args.constrained else "tcg_nc")
    out_base = args.output_root or os.path.join(repo_root, "output")            # gencor layout base
    model_safe = args.model.replace("/", "_")
    flat_root = args.output_root or os.path.join(                              # legacy flat layout root
        repo_root, "results", "gencor_compare", model_safe, variant
    )

    with open(args.bench) as f:
        bench = json.load(f)
    if args.task_id is not None:
        bench = [b for b in bench if b["task_id"] == args.task_id]
        assert bench, f"task_id {args.task_id} not found"
    if args.limit is not None:
        bench = bench[: args.limit]

    print(f"[run] model={args.model} device={args.device} constrained={args.constrained} "
          f"variant={variant} layout={args.layout}")
    if args.layout == "gencor":
        print(f"[run] {len(bench)} tasks x {len(seeds)} seeds -> "
              f"{out_base}/{args.runset}/typescript/<org>/<name>/{args.exp_id}/{variant}-s<seed>/")
    else:
        print(f"[run] {len(bench)} tasks x {len(seeds)} seeds -> {flat_root}/s<seed>/")

    print("[load] loading model/tokenizer ...")
    tokenizer = AutoTokenizer.from_pretrained(args.model)
    model = AutoModelForCausalLM.from_pretrained(
        args.model, torch_dtype=torch.bfloat16
    ).to(args.device)
    model.eval()
    print("[load] done")

    do_sample = args.temp != 0

    for seed in seeds:
        if args.layout == "gencor":
            run_dir = gencor_run_dir(out_base, args.runset, args.model, args.exp_id, variant, seed)
            os.makedirs(run_dir, exist_ok=True)
            with open(os.path.join(run_dir, "config.json"), "w") as f:
                json.dump(run_config_dict(args, variant, seed), f, indent=4)
        else:
            run_dir = os.path.join(flat_root, f"s{seed}")
            os.makedirs(run_dir, exist_ok=True)
        timings_path = os.path.join(run_dir, "timings.jsonl")  # flat layout only
        total = 0.0
        for i, b in enumerate(bench):
            task_id = b["task_id"]
            if args.layout == "gencor":
                ts_path, json_path = task_paths(run_dir, task_id)
            else:
                ts_path, json_path = os.path.join(run_dir, f"{task_id}.ts"), None
            if os.path.exists(ts_path) and not args.overwrite:
                print(f"[s{seed}] skip {task_id} (exists)")
                continue
            os.makedirs(os.path.dirname(ts_path), exist_ok=True)

            instruct = b.get("instruct_prompt", b["prompt"])
            code_prompt = b["code_prompt"]
            prompt = build_prompt(tokenizer, instruct, code_prompt)

            # Seed once per task with transformers.set_seed (== gencor gencor.py:368
            # and chopchop run_gencor_bench.py:209), instead of sample_constrained's
            # internal torch.manual_seed. For the pure-temperature sampling used here
            # only the torch RNG matters, so this is functionally identical, but keeps
            # the seed *function* aligned across the three systems.
            set_seed(seed)

            # "No length cap" -> bound only by the model context window (+ timeout /
            # fence-stop), like gencor (max_context) and chopchop (timeout only).
            n_prompt = tokenizer(prompt, return_tensors="pt").input_ids.shape[1]
            ctx = getattr(model.config, "max_position_embeddings", 8192) or 8192
            max_new = max(1, ctx - n_prompt - 8)
            if args.max_tokens and args.max_tokens > 0:
                max_new = min(max_new, args.max_tokens)

            start = time.time()
            gen_stats = {"decoded": 0}
            with torch.no_grad():
                full, eos, crashed, resamples = sample_constrained(
                    device=args.device,
                    model_name=args.model,
                    prompt=prompt,
                    max_tokens=max_new,
                    temperature=args.temp,
                    do_sample=do_sample,
                    seed=None,  # already seeded above via set_seed(seed)
                    constrain_from=(FENCE if args.constrained else None),
                    constrain_until="```",
                    trace=False,
                    model=model,
                    tokenizer=tokenizer,
                    timeout=args.timeout,
                    try_top_k=args.try_top_k,
                    constrain_language="ts",
                    out_stats=gen_stats,
                )
            elapsed = time.time() - start
            total += elapsed
            decoded = gen_stats["decoded"]   # actual committed generation tokens

            gen = extract_code(full, "typescript", 0)
            with open(ts_path, "w") as f:
                f.write(gen)
                f.write("\n")
                f.write(comment_footer(SYSTEM_PROMPT, instruct))

            if args.layout == "gencor":
                # gencor-style per-task <n>.json alongside <n>.ts
                with open(json_path, "w") as f:
                    json.dump(task_meta_dict(elapsed, eos, crashed, resamples, args, seed, decoded),
                              f, indent=4)
            else:
                with open(timings_path, "a") as f:
                    f.write(json.dumps({
                        "task_id": task_id,
                        "seed": seed,
                        "decoded": decoded,
                        "time_taken": elapsed,
                        "eos": bool(eos),
                        "crashed": None if crashed is None else f"{type(crashed).__name__}: {crashed}",
                        "n_resamples": len(resamples),
                        "constrained": args.constrained,
                        "temp": args.temp,
                        "timeout": args.timeout,
                    }) + "\n")

            status = "ok" if crashed is None else type(crashed).__name__
            print(f"[s{seed}] [{i+1}/{len(bench)}] {task_id}  {elapsed:7.2f}s  {status}")
        print(f"[s{seed}] DONE  total {total:.1f}s  -> {run_dir}")


if __name__ == "__main__":
    main()
