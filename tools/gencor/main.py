import os
import json
import argparse
import config
import datetime
import subprocess
from gencor.gencor import Gencor
import utils.utils as utils
from utils.langprofile import get_language_profile


def git_commit():
    """Current commit of the gencor repo, with a '-dirty' suffix when the
    working tree has uncommitted changes. None if git is unavailable."""
    repo_dir = os.path.dirname(os.path.abspath(__file__))
    try:
        commit = subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=repo_dir, stderr=subprocess.DEVNULL
        ).decode().strip()
        dirty = bool(subprocess.check_output(
            ["git", "status", "--porcelain"], cwd=repo_dir, stderr=subprocess.DEVNULL
        ).decode().strip())
        return commit + ("-dirty" if dirty else "")
    except Exception:
        return None


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        prog="gencor",
        description="gencor is a framework for LLM code generation that guarantees syntactic and type correctness."
    )
    parser.add_argument("-m", "--model", type=str, action="store", required=True,
                        help="LLM Model for code generation")
    parser.add_argument("-l", "--language", type=str, choices=config.supported_language, default="python",
                        help="Target programming language")
    parser.add_argument("-v", "--variant", type=str, default=None,
                        help="Override the output sub-folder name (defaults to the -c checker value): output/{language}/{model}/{exp_id}/{variant}")
    parser.add_argument("-c", "--checker", type=str, nargs="+", required=True,
                        help="Correctness checker: 'name' selects uv_open ummac ai for Python or "
                             "uv_open ummac kind for OCaml; 'type' selects sem_type. "
                             "Base mode + flags are also accepted, e.g. '-c uv_open ummac ai'. "
                             f"Bases: {config.supported_mode}; flags (uv_open/policyB/uv_every): {config.supported_uv_flags}. "
                             "Legacy joined names (uv_open_ummac_kind) still accepted.")
    benchmarks = parser.add_mutually_exclusive_group()
    benchmarks.add_argument("-b", "--benchmark", type=str, choices=config.supported_benchmark, default="",
                            help="Run a bundled benchmark")
    benchmarks.add_argument("--benchmark-json", type=str,
                            help="Run custom chat tasks from a JSON file with task_id, system_prompt, user_prompt, and code_prompt")
    parser.add_argument("-t", "--timeout", type=int, default=config.timeout, help="timeout")
    parser.add_argument("-i", "--index", type=str, default=None, help="Run specific test-case of benchmark")
    parser.add_argument("-s", "--seed", type=int, nargs="?", const=0, default=None,
                        help="Random seed. Giving a seed enables sampling (greedy is "
                             "seed-independent, so -s alone = default sampling, seed 0). "
                             "Re-fixed at the start of every task for independent reproducibility.")
    parser.add_argument("-T", "--temperature", type=float, default=None, help="Sampling temperature")
    parser.add_argument("-p", "--top_p", type=float, default=None, help="Sampling top-p (nucleus)")
    parser.add_argument("-k", "--top_k", type=int, default=None, help="Sampling top-k")
    parser.add_argument("-R", "--repetition_penalty", type=float, default=1.0,
                        help="Repetition penalty for generate mode (default 1.0 = off, "
                             "passed explicitly so the model's generation_config never leaks in)")
    parser.add_argument("-f", "--file", type=str, default=None, help="Target index file for benchmark")
    parser.add_argument("-o", "--output", type=str, default="./output")
    parser.add_argument("-d", "--device", type=int, default=-1)
    parser.add_argument("--postfix", type=str, default="")
    parser.add_argument("--prefix", type=str, default="")
    parser.add_argument("--log", type=int, default=0, help="Log level (0: silent, 1: error, 2: warn, 3:info, 4: debug). If >0, also writes a per-task {id}.log next to {id}.py/.json")
    parser.add_argument("-q", "--quiet", action="store_true", help="Suppress log output to stdout; logs are still written to the per-task {id}.log file (requires --log > 0)")
    parser.add_argument("--n_beams", type=int, default=5, help="number of beams for beam search")
    parser.add_argument("--no-cuda", action="store_true", help="Disable CUDA")
    parser.add_argument("--device-map", action="store_true", help="Device map for CUDA")
    parser.add_argument("--forward-mode", choices=["plain", "cache", "generate"], default="cache",
                        help="Per-token model call: plain (no KV cache), cache (raw forward + KV cache), generate (HF generate() API)")
    parser.add_argument('prompt', type=str, nargs='?', default="",
                        help="Prompt for code generation")
    parser.add_argument("--system-prompt-suffix", type=str,
                        default="\nDo not include test cases or explanations as comments in the code.",
                        help="Text appended verbatim to the system prompt ({lang}/{fence} filled). Pass \"\" to disable.")
    parser.add_argument("--chat", action='store_true', help="Use chat model")
    parser.add_argument("-r", "--rejection-sampling", type=int, nargs="?", const=5, default=1, help="Use rejection sampling")
    parser.add_argument("-x", "--exp_id", type=str, nargs="?", const="tmp_exp/"+str(datetime.datetime.now()).replace(" ", "_"), default=None, help="Experiment ID for logging")
    parser.add_argument("--overwrite", action='store_true', help="Overwrite existing experiment")
    parser.add_argument("--resume", action='store_true', help="Resume an existing experiment: skip tasks whose {id}.json already exists, run the rest, and aggregate stats over all of them")
    config.args = parser.parse_args()

    if config.args.benchmark_json is not None:
        config.args.benchmark_json = os.path.abspath(config.args.benchmark_json)
        try:
            with open(config.args.benchmark_json, encoding="utf-8") as f:
                tasks = json.load(f)
        except (OSError, ValueError) as exc:
            parser.error(f"Cannot read --benchmark-json: {exc}")
        if not isinstance(tasks, list) or not tasks:
            parser.error("--benchmark-json must contain a nonempty JSON array of tasks")
        task_ids = set()
        for index, task in enumerate(tasks):
            if not isinstance(task, dict) or any(
                not isinstance(task.get(field), str)
                for field in ("task_id", "system_prompt", "user_prompt", "code_prompt")
            ):
                parser.error(f"Task {index} must contain string fields task_id, system_prompt, user_prompt, and code_prompt")
            task_id = task["task_id"]
            if not task_id or os.path.isabs(task_id) or any(part in ("", ".", "..") for part in task_id.split("/")):
                parser.error(f"Task {index} has an invalid relative task_id: {task_id!r}")
            if task_id in task_ids:
                parser.error(f"Duplicate task_id: {task_id!r}")
            task_ids.add(task_id)
        config.args.chat = True

    # -c base + flags: expand aliases and legacy names, validate tokens, and keep
    # a joined string in args.checker for output paths / config dumps.
    _tokens = config.args.checker
    _base, _flags = _tokens[0], list(_tokens[1:])
    if _base == "name":
        _name_flags = {"python": ("ummac", "ai"), "ocaml": ("ummac", "kind")}
        if config.args.language not in _name_flags:
            parser.error("'-c name' supports Python and OCaml; use '-c type' for TypeScript")
        _base, _flags = "uv_open", list(_name_flags[config.args.language]) + _flags
    elif _base == "type":
        _base = "sem_type"
    if _base in config.legacy_mode_map:
        _legacy_base, _implied = config.legacy_mode_map[_base]
        _base, _flags = _legacy_base, list(_implied) + _flags
    if _base not in config.supported_mode:
        parser.error(f"unknown checker base '{_base}' (choose from {config.supported_mode})")
    _bad = [f for f in _flags if f not in config.supported_uv_flags]
    if _bad:
        parser.error(f"unknown checker flags {_bad} (choose from {config.supported_uv_flags})")
    if _flags and _base not in ("uv_open", "policyB", "uv_every"):
        parser.error("checker flags are only supported with the 'uv_open', 'policyB' or 'uv_every' base")
    config.args.checker = "_".join([_base] + _flags)
    config.args.checker_base = _base
    config.args.checker_flags = tuple(_flags)

    # Sampling (seed / temperature / top_p / top_k) only takes effect under
    # forward-mode generate; a seed/knob with another forward-mode would be
    # silently ignored. Auto-switch to generate when any sampling arg is given.
    if (config.args.seed is not None or config.args.temperature is not None
            or config.args.top_p is not None or config.args.top_k is not None) \
            and config.args.forward_mode != "generate":
        print(f"[main] sampling arg given -> forward-mode '{config.args.forward_mode}' -> 'generate'")
        config.args.forward_mode = "generate"

    # Apply language-specific defaults from the profile selected by -l/--language.
    # Explicitly-passed values are kept but get {lang}/{fence} placeholders filled
    # ({lang} -> prose name "OCaml", {fence} -> fence tag "ocaml"); omitted values
    # fall back to the profile's defaults.
    profile = get_language_profile(config.args.language)

    def _fill(text):
        return text.replace("{lang}", profile.display_name).replace("{fence}", profile.fence_lang)

    config.args.prompt = _fill(config.args.prompt) if config.args.prompt else profile.system_prompt
    default_prefix = (f"```{profile.fence_lang}\n" if config.args.benchmark_json is not None
                      else profile.code_fence_prefix)
    config.args.prefix = _fill(config.args.prefix) if config.args.prefix else default_prefix
    config.args.postfix = config.args.postfix if config.args.postfix else profile.gen_seed

    # Append the suffix verbatim to the system prompt (it carries its own leading
    # separator, e.g. "\n"); pass "" to disable.
    if config.args.system_prompt_suffix:
        config.args.prompt = f"{config.args.prompt}{_fill(config.args.system_prompt_suffix)}".strip()

    # while True:
    #     try:
    #         gencor = Gencor(config.args.model, config.args.checker, config.args.language, config.args.prompt, config.args.n_beams)
    #         break
    #     except FSMError as e:
    #         print(e)
    #         pass

    gencor = Gencor(
        config.args.model,
        config.args.checker_base,
        config.args.language,
        config.args.prompt,
        config.args.n_beams,
        device="auto"if config.args.device == -1 else f"cuda:{config.args.device}",
        chat=config.args.chat,
        mode_flags=config.args.checker_flags,
        # rejection_sampling=config.args.rejection_sampling
    )
    
    if config.args.index is not None and config.args.index.isdigit():
        config.args.index = int(config.args.index)

    if config.args.exp_id is not None:
        model_name = config.args.model.replace(":", "_")
        benchmark_name = config.args.benchmark if config.args.benchmark != "" else "custom"
        variant = config.args.variant if config.args.variant else config.args.checker
        output_dir = config.args.output
        exp_id = config.args.exp_id
        language = profile.family
        new_output_dir = f"{output_dir}/{language}/{model_name}/{exp_id}/{variant}"
        exists = os.path.exists(new_output_dir)
        if exists and not config.args.overwrite and not config.args.resume:
            print(f"Experiment ID '{exp_id}' already exists. Please use a different ID (or --resume / --overwrite).")
            exit(1)
        os.makedirs(new_output_dir, exist_ok=True)
        if exists and config.args.resume:
            # Keep the original run's config.json (provenance); just resume into it.
            print(f"Resuming experiment: {new_output_dir}")
        else:
            print(f"Created output directory: {new_output_dir}")
            config_dict = vars(config.args)
            config_dict['start_at'] = str(datetime.datetime.now())
            config_dict['git_commit'] = git_commit()
            with open(f"{new_output_dir}/config.json", 'w') as f:
                json.dump(config_dict, f, indent=4)
        config.args.output = new_output_dir
        if config.args.file is not None:
            config.args.file = os.path.join(new_output_dir, "..", config.args.file)
    # config.args.prompt = utils.remove_escape_characters(config.args.prompt)
    # gencor.run()
    bench_idx = (
        config.args.index
        if config.args.index is not None
        else config.args.file
        if config.args.file is not None
        else (0, -1)  # no -i/-f -> whole benchmark (was -s/-e start/end_idx)
    )
    gencor.run_benchmark(
        config.args.benchmark_json if config.args.benchmark_json is not None else f"{config.args.benchmark}.json",
        config.args.timeout,
        prefix=config.args.prefix,
        postfix=config.args.postfix,
        sys_for_chat=config.args.prompt if config.args.chat else None,
        output_dir=config.args.output,
        bench_idx=bench_idx,
        is_exp=config.args.exp_id is not None,
        turns=config.args.rejection_sampling,
        resume=config.args.resume
    )


