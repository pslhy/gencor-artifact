import config
import time
from utils import utils, model
from parsers.incremental_parser import IncrementalParser
from constrainers.grammar_constrainer import GrammarConstrainer
from constrainers.tag_open_constrainer_v2 import EfficientTagOpenConstrainer, PolicyBConstrainer, UVEveryConstrainer
from constrainers.no_constrainer import NoConstrainer
from utils.model import ModelConnector
from utils.utils import code_analysis
from utils.langprofile import get_language_profile
import os
import re
import json
import datetime
from collections import defaultdict
from transformers import AutoConfig
# from utils.utils import remove_escape_characters
import torch
import traceback

def sec_to_time_str(seconds, leng=8, precision=4):
    unit = ['s', 'm', 'h', 'd', 'y']
    unit_sec = [1, 60, 3600, 86400, 31536000]
    uidx = 0
    time = seconds
    while len(str(int(time))) + precision + 1 > leng and uidx + 1 < len(unit):
        time = seconds / unit_sec[uidx + 1]
        uidx += 1
    if uidx + 1 == len(unit) and len(str(int(time))) + precision + 1 > leng:
        import math
        if leng-4-len(str(math.ceil(math.log10(seconds+1)))) < 1:
            return "?" * leng + 's'
        fmt = "{:." + str(leng-4-len(str(math.ceil(math.log10(seconds+1))))) + "e}{}"
        return fmt.format(seconds, 's')
    fmt = "{:" + str(leng) + "." + str(precision) + "f}{}"
    return fmt.format(time, unit[uidx])

s2t = sec_to_time_str

# Dataset columns that may carry a per-row target language.
LANG_COLUMNS = ("lang", "language")


def _row_lang(row):
    if isinstance(row, dict):
        for key in LANG_COLUMNS:
            if key in row:
                return row[key]
    return None


class Gencor:
    # Legacy joined checker names -> (base mode, implied flags).
    LEGACY_MODES = {
        'uv_open_ummac': ('uv_open', ('ummac',)),
        'uv_open_ummac_kind': ('uv_open', ('ummac', 'kind')),
    }

    def __init__(
        self,
        _model: str,
        mode: str,
        language: str,
        prompt: str,
        n_beams: int = 30,
        device: str = "cuda",
        chat: bool = False,
        mode_flags=(),
        # rejection_sampling: bool = False
    ):
        self.test_result = {
            "total_time": 0,
            "parse_time": 0,
            "infer_time": 0,
            "backtrack_cnt": 0,
            "generated": "",
            "success": False
        }
        self.model_name = _model
        # Normalize legacy joined names into base + flags; explicit flags append.
        base_mode, implied_flags = self.LEGACY_MODES.get(mode, (mode, ()))
        if base_mode not in config.supported_mode:
            raise ValueError(f"Unknown checker mode {mode!r}; choose from {config.supported_mode}")
        self.mode = base_mode
        self.mode_flags = tuple(implied_flags) + tuple(mode_flags)
        self.language = language
        self.profile = get_language_profile(language)
        self.n_beams = n_beams
        self.device = "cpu" if config.args.no_cuda else device
        self.tokenizer = ModelConnector.load_tokenizer(self.model_name)
        if self.mode == 'none':
            # NoConstrainer ignores the parser, so skip loading/building the
            # grammar entirely.
            self.parser = None
        else:
            self.parser = IncrementalParser(self.language)
        if self.mode == 'syntax':
            # Indentation-aware grammars (%declare'd _INDENT/_DEDENT) need no
            # dedicated constrainer: GrammarConstrainer detects them from the
            # loaded parse table and routes its check/commit through the
            # postlex hooks (see constrainers/indent_grammar_constrainer.py).
            self.constrainer = GrammarConstrainer
        elif self.mode in ('uv_open', 'policyB', 'uv_every'):
            # Composed from flags (ummac/kind/fg/ai); legacy joined names were
            # normalized into mode_flags above.
            import functools
            self.constrainer = functools.partial(
                {'uv_open': EfficientTagOpenConstrainer,
                 'policyB': PolicyBConstrainer,
                 'uv_every': UVEveryConstrainer}[self.mode],
                uv_flags=self.mode_flags,
            )
        elif self.mode == 'sem_type':
            # Lazy import keeps TS/Node deps off non-TS runs.
            from constrainers.type_semantic_constrainer import TypeSemanticGrammarConstrainer
            self.constrainer = TypeSemanticGrammarConstrainer
        elif self.mode == 'sem_type_diag':
            # Isolated whole-prefix diagnostics experiment. It shares sem-lark's
            # grammar/trie engine and SymbolsToCheck with sem_type, but none of
            # sem_type's frontier/reachability/heuristic analysis policy.
            from constrainers.type_diagnostic_semantic_constrainer import (
                TypeDiagnosticSemanticGrammarConstrainer,
            )
            self.constrainer = TypeDiagnosticSemanticGrammarConstrainer
        elif self.mode == 'none':
            self.constrainer = NoConstrainer
        self.grammar_constrainer = self.constrainer(self.model_name, self.tokenizer, self.parser)
        self.model = model.ModelConnector(self.model_name, self.device, self.grammar_constrainer, self.tokenizer)
        model_config = AutoConfig.from_pretrained(self.model_name)
        self.max_context = (
            getattr(model_config, "max_position_embeddings", None)
            or getattr(getattr(model_config, "text_config", None), "max_position_embeddings", None)
        )
        assert self.max_context is not None, (
            f"could not resolve max_position_embeddings for {self.model_name}"
        )
        self.prompt = prompt 
        self.chat = chat
        # self.rejection_sampling = chat and rejection_sampling
        # self.set_prompt(prompt)

    def run(self):
        target_ids = self.model.tokenize_ids(self.prompt)[0] # torch.Tensor
        # convert torch.Tensor to list
        target_ids = target_ids.tolist()
        
        import sys
        from contextlib import redirect_stdout
        
        with open('output.txt', 'w') as f:
            with redirect_stdout(f):
                while True:
                    target_str = self.model.tokenizer.decode(target_ids)
                    utils.info(f"Generated: {repr(target_str)}")
                    generated = self.model.generate_from_id(torch.tensor([target_ids]), top_k=self.n_beams)
                    # pick the token of the highest probability
                    for prob, idx in generated:
                        next_token_id = idx.item()
                        break
                    target_ids = target_ids + [next_token_id]

                    if next_token_id in self.model.eos_ids:
                        utils.info("End of input (EOS)")
                        break

        return 

    def _dump_turn1(self, output_dir, bench_id, bidx, is_exp, turn_statics, code, err,
                    is_timeout, timeout, gen_time, sys_for_chat, instruct):
        """Save a repair (-r) run's FIRST turn under {variant}@1 -- code/json/log/config
        exactly as a no-repair (single-turn) run would produce it, so turn 1 is
        directly comparable to a plain run. Called once at turn 0; the model's
        cumulative timers and the task log are turn-1-only at that point.
        config.json = parent's, but rejection_sampling forced to 1."""
        import shutil
        t1 = output_dir + "@1"
        wid = bench_id if (is_exp and isinstance(bench_id, str) and '/' in bench_id) else bidx
        sub = os.path.dirname(str(wid)) if (is_exp and isinstance(wid, str) and '/' in wid) else ""
        os.makedirs(f"{t1}/{sub}" if sub else t1, exist_ok=True)
        # config.json: copy parent's, force rejection_sampling=1 (as if no -r)
        try:
            with open(f"{output_dir}/config.json") as cf:
                cfg = json.load(cf)
            cfg["rejection_sampling"] = 1
            with open(f"{t1}/config.json", 'w') as cf:
                json.dump(cfg, cf, indent=4)
        except Exception:
            pass
        # stats: turn-1 only (cumulative timers == turn 1 at turn 0)
        st = dict(turn_statics)
        st.pop("decoded_at_turn", None)
        st["llm_time"] = self.model.llm_time
        st["after_llm_time"] = self.model.after_llm_time
        st["check_after_gen_time"] = self.model.check_after_gen_time
        st["constrainer_time"] = self.model.constrainer_time
        if self.parser is not None and hasattr(self.parser, "attribute_memo_store_time"):
            st["attribute_memo_store_time"] = self.parser.attribute_memo_store_time
            st["attribute_memo_store_calls"] = self.parser.attribute_memo_store_calls
            st["attribute_memo_load_time"] = self.parser.attribute_memo_load_time
            st["attribute_memo_load_calls"] = self.parser.attribute_memo_load_calls
        st["total_time"] = gen_time
        st["frequency"] = self.model.tmp_tokens_tried
        st["is_uv"] = bool(err) and any(self.profile.is_undefined_error(e) for e in err)
        st["is_synerr"] = bool(err) and any(self.profile.is_syntax_error(e) for e in err)
        st["is_err"] = (bool(err) and not st["is_uv"]) or st["is_synerr"]
        st["is_timeout"] = is_timeout
        st["time_limit"] = timeout
        st["errors"] = err
        # code: same post-processing as the single-turn write path
        gen = re.sub(r'\s*`+\s*$', '', code)
        gen = re.sub(r'^\s*```[^\n]*\n', '', gen)
        with open(f"{t1}/{wid}{self.profile.file_ext}", 'w') as f:
            f.write(gen)
            if self.chat:
                f.write('\n\n')
                f.write(self.profile.comment_line('<System Prompt>') + '\n')
                for line in sys_for_chat.split('\n'):
                    f.write(self.profile.comment_line('    ' + line) + '\n')
                f.write(self.profile.comment_line('') + '\n')
                f.write(self.profile.comment_line('< User Prompt >') + '\n')
                for line in instruct.split('\n'):
                    f.write(self.profile.comment_line('    ' + line) + '\n')
        with open(f"{t1}/{wid}.json", 'w') as f:
            json.dump(st, f, indent=4)
        # log: the task log so far is turn-1's only (first turn)
        try:
            if utils._task_log_fh:
                utils._task_log_fh.flush()
        except Exception:
            pass
        src = f"{output_dir}/{bench_id}.log"
        if os.path.exists(src):
            try:
                shutil.copy(src, f"{t1}/{wid}.log")
            except Exception:
                pass

    def run_benchmark(
        self,
        benchmark,
        timeout,
        prefix="",
        postfix="",
        sys_for_chat="",
        output_dir="./output",
        bench_idx=-1,
        is_exp=False,
        analyis_on=True,
        turns=1,
        resume=False
    ):
        import json
        only_one = False
        turns = turns if self.chat else 1
        is_single_turn = turns == 1
        with open(benchmark, 'r') as f:
            benchmark_data = json.load(f)
            # If the dataset tags rows with a language column, keep only the
            # target language's rows; otherwise use every row as-is.
            if benchmark_data and _row_lang(benchmark_data[0]) is not None:
                before = len(benchmark_data)
                benchmark_data = [
                    row for row in benchmark_data
                    if self.profile.matches_lang(_row_lang(row))
                ]
                utils.info(
                    f"lang filter '{self.profile.family}': "
                    f"{len(benchmark_data)}/{before} rows"
                )
                if not benchmark_data:
                    raise ValueError(
                        f"No '{self.profile.family}' rows found in {benchmark}"
                    )
            indices = None
            if isinstance(bench_idx, int): 
                benchmark_data = [benchmark_data[bench_idx]]
                indices = [bench_idx]
                only_one = True
            elif isinstance(bench_idx, str):
                tid2idx = {bench['task_id']: i for i, bench in enumerate(benchmark_data)}
                if bench_idx in tid2idx:
                    bench_idx = [ tid2idx[bench_idx] ]
                else:
                    with open(bench_idx, 'r') as fidx:
                        lines = fidx.readlines()
                        is_all_int = all(line.strip().isdigit() for line in lines)
                        if is_all_int:
                            bench_idx = [int(line.strip()) for line in lines]
                        else:
                            bench_idx = [ tid2idx[line.strip()] for line in lines if line.strip() in tid2idx ]
                            not_hit = [ line.strip() for line in lines if line.strip() not in tid2idx ]
                            if len(not_hit) > 0:
                                raise ValueError(f"These task_ids are not found in the benchmark: {not_hit}")
                benchmark_data = [benchmark_data[i] for i in bench_idx]
                indices = bench_idx
            elif isinstance(bench_idx, tuple):
                s_idx, e_idx = bench_idx
                while s_idx < 0:
                    s_idx += len(benchmark_data)
                while e_idx < 0:
                    e_idx += len(benchmark_data)
                benchmark_data = benchmark_data[s_idx:e_idx+1]
                indices = list(range(s_idx, e_idx+1))

        all_gen_time = 0.0
        all_statics = []
        all_tests = len(indices)
        errs = defaultdict(dict)
        aborts = {}
        to_case = []
        tmp_turns = turns  # turn key for errs; single-turn -> 1. Kept defined even
                           # if every task is skipped on --resume (see below).
        for i, (bench, bidx) in enumerate(zip(benchmark_data, indices)):
            # --resume: if this task's output already exists, fold its saved statics
            # into the aggregation and skip regeneration. done_id mirrors the id used
            # for the {id}.json path below (task_id for exp with '/', else bidx).
            if resume:
                task_id = bench.get('task_id', bidx)
                done_id = task_id if (is_exp and isinstance(task_id, str) and '/' in task_id) else bidx
                done_json = f"{output_dir}/{done_id}.json"
                done_err = f"{output_dir}/{done_id}_error.txt"
                prev = None
                if os.path.exists(done_json):
                    try:
                        with open(done_json) as jf:
                            prev = json.load(jf)
                    except Exception:
                        prev = None
                if prev is not None:
                    all_statics.append(prev)
                    all_gen_time += prev.get("total_time", 0) or 0
                    if prev.get("is_timeout"):
                        to_case.append(done_id)
                    prev_errs = prev.get("errors") or []
                    if prev_errs:
                        errs[done_id][tmp_turns] = prev_errs
                    print(f"[resume] skip {done_id} (already done)")
                    continue
                if os.path.exists(done_err):
                    try:
                        with open(done_err) as ef:
                            aborts[done_id] = ef.read().splitlines()
                    except Exception:
                        aborts[done_id] = []
                    print(f"[resume] skip {done_id} (previous abort)")
                    continue
            # Re-fix the same seed at the start of every task, so each task
            # reproduces independently of run order/subset (re-running one task
            # alone gives the same result). No-op for greedy. base defaults to 0
            # when -s is omitted.
            from transformers import set_seed
            base_seed = config.args.seed if (config.args and config.args.seed is not None) else 0
            set_seed(base_seed)
            try:
                # self.grammar_constrainer.reset()
                initial_code = None
                self.model.reset_statics()
                if self.parser is not None and hasattr(self.parser, "reset_attribute_memo_stats"):
                    self.parser.reset_attribute_memo_stats()
                multi_statics = None
                turn_codes = []
                queries = []
                if self.chat:
                    system_prompt = bench.get('system_prompt', sys_for_chat)
                    instruct = (bench['user_prompt'] if 'user_prompt' in bench else
                                bench['instruct_prompt'] if 'instruct_prompt' in bench else bench['prompt'])
                    messages = [
                        {"role": "system", "content": system_prompt},
                        {"role": "user", "content": instruct},
                    ]
                    queries.append(messages[1]['content'])
                    chat = self.model.tokenizer.apply_chat_template(
                        messages,
                        tokenize=False,
                        add_generation_prompt=True,
                        enable_thinking=False
                    )
                    code = bench.get('code_prompt', postfix)
                    # Seed the parser with the opening fence as well as the code.
                    # sem_type blanks fence terminals for TypeScript analysis;
                    # the grammar needs the opening fence to accept its close.
                    initial_code = prefix + code
                    prompt = chat + prefix + code
                    # if self.rejection_sampling:
                    #     self.rejection_sample(messages, prefix, code, bidx, output_dir, timeout)
                    #     continue
                else:
                    prompt = prefix + bench['prompt'] + postfix
                    # self.grammar_constrainer.initial_code = prompt
                    initial_code = prompt
                # prompt = remove_escape_characters(prompt)
                bench_id = bench['task_id']
                utils.open_task_log(f"{output_dir}/{bench_id}.log")

                target_ids = self.model.tokenize_ids(prompt)[0]  # torch.Tensor
                # self.grammar_constrainer = self.constrainer(self.model_name, self.tokenizer, self.parser)
                # self.grammar_constrainer.init_statics()
                # convert torch.Tensor to list
                target_ids = target_ids.tolist()
                gen_time = 0.0
                is_timeout = False
                end_by_eos = False
                is_over_limit = False
                tmp_turns = turns
                steps = 0
                # init_ids = len(target_ids)
                # log = []
                for turn in range(turns):
                    gen_in_turn = 0.0
                    self.grammar_constrainer.reset()
                    self.model.reset_cache()
                    self.grammar_constrainer.initial_code = initial_code
                    end_by_eos = False
                    while True:
                        gen_start = time.time()
                        deadline = gen_start + max(0.0, timeout - gen_in_turn)
                        generated = self.model.generate_from_id(torch.tensor([target_ids]), top_k=self.n_beams, deadline=deadline)
                        # pick the token of the highest probability
                        # print(generated)
                        for prob, idx in generated:
                            # print(prob, idx)
                            next_token_id = idx.item()
                            break
                        target_ids = target_ids + [next_token_id]

                        cur_gen_time = time.time() - gen_start
                        # log.append((cur_gen_time, steps, self.model.tokenizer.decode(next_token_id)))
                        gen_in_turn += cur_gen_time
                        # Timeout takes priority over the eos stop: when
                        # check_after_gen's eos_handling hit the deadline, the
                        # decode loop bails returning the (rejected) eos token, so
                        # this would otherwise be mislabelled as a clean eos end.
                        if self.model.decode_timed_out:
                            is_timeout = True
                            break
                        if next_token_id in self.model.eos_ids:
                            end_by_eos = True
                            break

                        # Stop at a complete fenced program: once ``` appears in the
                        # recent output, eos_handling checks whether the grammar
                        # accepts $END (real closing fence, not a ``` inside a string
                        # or an incomplete program). Bounded by the remaining deadline
                        # so the re-lex can't hang; on timeout end the turn as is_timeout.
                        decoded = self.model.tokenizer.decode(target_ids[-3:])
                        if self.chat and decoded.find('```') != -1:
                            try:
                                with utils.time_limit(deadline - time.time()):
                                    done_eos = self.grammar_constrainer.eos_handling(self.model.tokenizer.decode(next_token_id))
                            except utils.TimeLimitExceeded:
                                is_timeout = True
                                break
                            if done_eos:
                                end_by_eos = True
                                break

                        if self.grammar_constrainer.is_end():
                            break

                        if gen_in_turn > timeout or self.model.decode_timed_out:
                            is_timeout = True
                            break
                            
                        if len(target_ids) > self.max_context:
                            is_over_limit = True
                            break
                        steps += 1
                    gen_time += gen_in_turn


                    turn_statics, turn_code = self.grammar_constrainer.results()
                    if multi_statics is None:
                        multi_statics = turn_statics
                        if not is_single_turn:
                            multi_statics["decoded_at_turn"] = {turn+1: turn_statics["decoded"]}
                    else:
                        for key in multi_statics:
                            if key == "decoded_at_turn":
                                continue
                            multi_statics[key] += turn_statics[key]
                        if not is_single_turn:
                            multi_statics["decoded_at_turn"][turn+1] = turn_statics["decoded"]
                    
                    if is_over_limit:
                        turn_code = self.profile.comment_block(turn_code)

                    turn_codes.append(turn_code)
                    if is_single_turn or is_timeout or is_over_limit:
                        tmp_turns = turn + 1
                        # turn-0 bailed early (timeout/over-limit) in a repair run:
                        # still snapshot it as {variant}@1 so the @1 set is complete.
                        if not is_single_turn and turn == 0:
                            try:
                                err0 = self.profile.analyze(turn_code, self.profile.analysis_tag, self.mode)
                                self._dump_turn1(output_dir, bench_id, bidx, is_exp,
                                                 turn_statics, turn_code, err0,
                                                 is_timeout, timeout, gen_time,
                                                 system_prompt, queries[0] if queries else "")
                            except Exception:
                                pass
                        break

                    err = self.profile.analyze(turn_code, self.profile.analysis_tag, self.mode)

                    # Save turn 1 separately as {variant}@1 (== a no-repair run).
                    if turn == 0:
                        try:
                            self._dump_turn1(output_dir, bench_id, bidx, is_exp,
                                             turn_statics, turn_code, err,
                                             is_timeout, timeout, gen_time,
                                             system_prompt, queries[0] if queries else "")
                        except Exception:
                            pass

                    # Repair targets undefined-variable AND syntax errors: feed
                    # just those back, and stop once none remain. Other errors
                    # (e.g. type errors) are recorded (so the turn classifies
                    # is_err) but not repaired.
                    feed_err = [e for e in err
                                if self.profile.is_undefined_error(e)
                                or self.profile.is_syntax_error(e)]
                    if len(feed_err) == 0:
                        if len(err) > 0:
                            errs[bench_id][turn + 1] = err
                            tmp_turns = turn + 1
                        break

                    errs[bench_id][turn+1] = err

                    if next_token_id not in self.model.eos_ids:
                        target_ids = target_ids + [self.model.tokenizer.eos_token_id]

                    repair_prompt = "The following errors were found in the previous code:"
                    for e in feed_err:
                        repair_prompt += f"\n- {e}"
                    repair_prompt += "\nPlease regenerate the code, taking these errors into account."

                    new_chat = self.model.tokenizer.apply_chat_template(
                        [{"role": "user", "content": repair_prompt}],
                        tokenize=False,
                        add_generation_prompt=True,
                        enable_thinking=False
                    )

                    append_prompt = new_chat + initial_code
                    append_ids = self.model.tokenize_ids(append_prompt)[0].tolist()[1:]  # remove the starting BOS token
                    target_ids = target_ids + append_ids

                    queries.append(repair_prompt)

                if only_one:
                    print(gen_time)
                else:
                    all_gen_time += gen_time
                    print(f"[{i+1:0{len(str(all_tests))}}/{all_tests}] gen: {s2t(gen_time)} " 
                          f"| avg: {s2t(all_gen_time/(i+1))} "
                          f"| lef: {s2t((all_gen_time/(i+1))*(all_tests - (i+1)))} "
                          f"| tot: {s2t(all_gen_time)} "
                          f"| id: {bench_id}")

                # log.sort(reverse=True, key=lambda x: x[0])
                # for t, s, tok in log[:25]:
                #     print(f"[{s}] ({t:.4f} sec) {repr(tok)}")
                #     print(f"{self.model.tokenizer.decode(target_ids[:init_ids+s])}@{tok}")
                if is_single_turn:
                    statics, gen = self.grammar_constrainer.results()
                else:
                    statics = multi_statics
                    gen = ""
                    gen += self.profile.comment_line('<System Prompt>') + '\n'
                    splited_sys = system_prompt.split('\n')
                    for line in splited_sys:
                        gen += self.profile.comment_line('    ' + line) + '\n'
                    gen += self.profile.comment_line('') + '\n'
                    gen += self.profile.comment_line('') + '\n'
                    for i, (instruct, turn_code) in enumerate(zip(queries, turn_codes)):
                        gen += self.profile.comment_line(f'=== Turn {i+1} ===') + '\n'
                        gen += self.profile.comment_line('< User Prompt >') + '\n'
                        splited_user = instruct.split('\n')
                        for line in splited_user:
                            gen += self.profile.comment_line('    ' + line) + '\n'
                        gen += turn_code + '\n'
                statics["llm_time"] = self.model.llm_time
                statics["after_llm_time"] = self.model.after_llm_time
                statics["check_after_gen_time"] = self.model.check_after_gen_time
                statics["constrainer_time"] = self.model.constrainer_time
                if self.parser is not None and hasattr(self.parser, "attribute_memo_store_time"):
                    statics["attribute_memo_store_time"] = self.parser.attribute_memo_store_time
                    statics["attribute_memo_store_calls"] = self.parser.attribute_memo_store_calls
                    statics["attribute_memo_load_time"] = self.parser.attribute_memo_load_time
                    statics["attribute_memo_load_calls"] = self.parser.attribute_memo_load_calls
                statics["total_time"] = gen_time
                statics["frequency"] = self.model.tmp_tokens_tried
                if not is_single_turn:
                    statics["turns"] = len(turn_codes)
                    statics["max_turns"] = tmp_turns
                all_statics.append(statics)
                # print(self.grammar_constrainer.incremental_parser.interactive.parser_state.value_stack)
                if is_exp and ('/' in bench_id):
                    bench_dir = os.path.dirname(bench_id)
                    os.makedirs(f"{output_dir}/{bench_dir}", exist_ok=True)
                else:
                    bench_id = bidx
                
                if is_timeout:
                    to_case.append(bench_id)

                # if idx != -1:
                #     # # print(bench_id, idx)
                #     # bench_id = idx
                with open(f"{output_dir}/{bench_id}{self.profile.file_ext}", 'w') as f:
                    # Strip a leaked trailing code fence. The inline fence trim
                    # relies on the fence being a single token (dropped by the
                    # 1-token decode lag); multi-token fences (e.g. Qwen3 emits
                    # ``+` ) leave backticks behind. Trailing backticks are never
                    # valid code, so removing them is safe across all models.
                    gen = re.sub(r'\s*`+\s*$', '', gen)
                    # External fix: drop a leaked leading ```lang fence (some
                    # constrainers keep it in the generated text; never valid code).
                    gen = re.sub(r'^\s*```[^\n]*\n', '', gen)
                    # NOTE: the cutoff last line WAS commented out here -- on a
                    # timeout/length cutoff the final line is a partial statement,
                    # and commenting it kept its SYNTAX error from masking the
                    # SEMANTIC/type errors in the rest (so analyze() could surface
                    # those). DISABLED: a timeout is itself treated as an error
                    # (is_timeout is recorded separately), so keep the raw cutoff
                    # line. Re-enable by uncommenting the block below.
                    # if not end_by_eos:
                    #     splited = gen.split('\n')
                    #     splited[-1] = self.profile.comment_line(splited[-1])
                    #     gen = '\n'.join(splited)
                    if is_exp and analyis_on and is_single_turn:
                        err = self.profile.analyze(gen, f"{bench_id}{self.profile.file_ext}", self.mode)
                        if len(err) > 0:
                            errs[bench_id][1] = err
                    f.write(gen)

                    if self.chat and is_single_turn:
                        f.write('\n\n')
                        splited_sys = system_prompt.split('\n')
                        f.write(self.profile.comment_line('<System Prompt>') + '\n')
                        for line in splited_sys:
                            f.write(self.profile.comment_line('    ' + line) + '\n')
                        f.write(self.profile.comment_line('') + '\n')
                        f.write(self.profile.comment_line('< User Prompt >') + '\n')
                        splited_user = instruct.split('\n')
                        for line in splited_user:
                            f.write(self.profile.comment_line('    ' + line) + '\n')

                # Record this task's outcome (uv / err / timeout) and the
                # configured time limit in its json so the category is visible
                # per-task, not only via list_uv/list_err. Same rule as the
                # end-of-run classification: a last turn with ANY undefined-
                # variable error -> uv; other errors (no UV) -> err.
                last_turn_errs = errs.get(bench_id, {}).get(tmp_turns, [])
                statics["is_uv"] = bool(last_turn_errs) and any(self.profile.is_undefined_error(e) for e in last_turn_errs)
                statics["is_synerr"] = bool(last_turn_errs) and any(self.profile.is_syntax_error(e) for e in last_turn_errs)
                statics["is_err"] = (bool(last_turn_errs) and not statics["is_uv"]) or statics["is_synerr"]
                statics["is_timeout"] = is_timeout
                statics["time_limit"] = timeout
                statics["errors"] = last_turn_errs
                with open(f"{output_dir}/{bench_id}.json", 'w') as f:
                    json.dump(statics, f, indent=4)
            except Exception as e:
                aborts[bench_id] = traceback.format_exc().splitlines()
                if is_exp and ('/' in bench_id):
                    bench_dir = os.path.dirname(bench_id)
                    os.makedirs(f"{output_dir}/{bench_dir}", exist_ok=True)
                with open(f"{output_dir}/{bench_id}_error.txt", 'w') as f:
                    traceback.print_exc(file=f)
                    traceback.print_exc()
            finally:
                utils.close_task_log()
        if not only_one:
            print(f"Total generation time  : {s2t(all_gen_time)} for {all_tests} tests")
            print(f"Average generation time: {s2t(all_gen_time/all_tests)}")
            if is_exp:
                with open(f"{output_dir}/avgerage.json", 'w') as f:
                    avg_statics = {}
                    avg_statics["total_tests"] = all_tests
                    for key in all_statics[0]:
                        if isinstance(all_statics[0][key], (int, float)):
                            avg_statics[key] = sum(stat.get(key, 0) for stat in all_statics) / len(all_statics)
                    avg_statics["end_at"] = str(datetime.datetime.now())
                    json.dump(avg_statics, f, indent=4)

                with open(f"{output_dir}/tried.json", 'w') as f:
                    json.dump(self.model.tokens_tried, f, indent=4)

                uvs = defaultdict(list)
                for bid, err in errs.items():
                    if tmp_turns in err:
                        for e in err[tmp_turns]:
                            if self.profile.is_undefined_error(e):
                                uvs[bid].append(e)

                with open(f"{output_dir}/uv.json", 'w') as f:
                    json.dump(uvs, f, indent=4)

                with open(f"{output_dir}/err.json", 'w') as f:
                    json.dump(errs, f, indent=4)

                with open(f"{output_dir}/abort.json", 'w') as f:
                    json.dump(aborts, f, indent=4)

                with open(f"{output_dir}/list_timeout.txt", 'w') as f:
                    f.write(f"Timeout cases (>{timeout} seconds): {len(to_case)} / {all_tests} {100.0*len(to_case)/all_tests:.2f}%\n")
                    for case in to_case:
                        f.write(f"{case}\n")
                
                with open(f"{output_dir}/list_err.txt", 'w') as f:
                    last_errs = {bid : err[tmp_turns] for bid, err in errs.items() if tmp_turns in err and bid not in uvs}
                    f.write(f"Error cases: {len(last_errs)} / {all_tests} {100.0*len(last_errs)/all_tests:.2f}%\n")
                    for case in last_errs.keys():
                        f.write(f"{case}\n")
                
                with open(f"{output_dir}/list_abort.txt", 'w') as f:
                    f.write(f"Abort cases: {len(aborts)} / {all_tests} {100.0*len(aborts)/all_tests:.2f}%\n")
                    for case in aborts.keys():
                        f.write(f"{case}\n")

                with open(f"{output_dir}/list_uv.txt", 'w') as f:
                    for case in uvs.keys():
                        f.write(f"{case}\n")

                with open(f"{output_dir}/summary.txt", 'w') as f:
                    f.write(f"Total generation time  : {s2t(all_gen_time)} for {all_tests} tests\n")
                    f.write(f"Average generation time: {s2t(all_gen_time/all_tests)}\n")
                    f.write(f"Timeout cases (>{timeout} seconds): {len(to_case)} / {all_tests} {100.0*len(to_case)/all_tests:.2f}%\n")
                    f.write(f"Error cases: {len(errs)} / {all_tests} {100.0*len(errs)/all_tests:.2f}%\n")
                    f.write(f"Abort cases: {len(aborts)} / {all_tests} {100.0*len(aborts)/all_tests:.2f}%\n")
                    f.write(f"UV cases: {len(uvs)} / {all_tests} {100.0*len(uvs)/all_tests:.2f}%\n")


    # def rejection_sample(self, messages, prefix, code_head, bench_idx, output_dir, timeout, turns = 5):
    #     sys_for_chat = messages[0]['content']
    #     user_prompts = [messages[1]['content']]
    #     generated_code = []
    #     analysis_list = []
    #     chat = self.model.tokenizer.apply_chat_template(
    #         messages,
    #         tokenize=False,
    #         add_generation_prompt=True
    #     )
    #     prompt = chat + prefix + code_head
    #     # print(prompt)
    #     target_ids = self.model.tokenize_ids(prompt)[0]  # torch.Tensor
    #     # self.grammar_constrainer = self.constrainer(self.model_name, self.tokenizer, self.parser)
    #     # self.grammar_constrainer.init_statics()
    #     # convert torch.Tensor to list
    #     target_ids = target_ids.tolist()
    #     gen_time = 0.0
    #     statics = None
    #     for turn in range(turns):
    #         self.grammar_constrainer.reset()
    #         self.grammar_constrainer.initial_code = prefix + code_head
    #         is_timeout = False
    #         end_by_eos = False
    #         over_token_limit = False
    #         init_ids = len(target_ids)
    #         while True:
    #             gen_start = time.time()
    #             target_str = self.model.tokenizer.decode(target_ids)
    #             generated = self.model.generate_from_id(torch.tensor([target_ids]), top_k=self.n_beams)
    #             # pick the token of the highest probability
    #             for prob, idx in generated:
    #                 # print(prob, idx)
    #                 next_token_id = idx.item()
    #                 break
    #             target_ids = target_ids + [next_token_id]

    #             cur_gen_time = time.time() - gen_start
    #             decoded = self.model.tokenizer.decode(target_ids[-3:])
    #             gen_time += cur_gen_time
    #             if (next_token_id == self.model.tokenizer.eos_token_id 
    #                 or (self.chat and decoded.find('```') != -1)):
    #                 end_by_eos = True
    #                 break
                
    #             if self.grammar_constrainer.is_end():
    #                 break

    #             if gen_time > timeout:
    #                 break
                    
    #             if len(target_ids) > 2048:
    #                 over_token_limit = True
    #                 break


    #         turn_statics, gen = self.grammar_constrainer.results()
    #         gen_splited = gen.split('\n')
    #         # if gen_splited[-1].strip().endswith('```'):
    #         #     gen_splited[-1] = gen_splited[-1].strip()[: -3]
    #         if len(gen_splited[-1]) > 0 and gen_splited[-1][0] == '`':
    #             gen_splited = gen_splited[: -1]
    #         if gen_splited[0].startswith('```'):
    #             gen_splited = gen_splited[1 :]
    #         gen = '\n'.join(gen_splited)
    #         generated_code.append(gen)
    #         if over_token_limit or gen_time > timeout:
    #             break

    #         code_analysis_results = code_analysis(gen, "<python>")

    #         if len(code_analysis_results) == 0:
    #             break

    #         analysis_list.append(code_analysis_results)
            
    #         if statics is None:
    #             statics = turn_statics
    #         else:
    #             for key in statics:
    #                 statics[key] += turn_statics[key]

    #         repair_prompt = "The following errors were found in the previous code:"
    #         for analysis in code_analysis_results:
    #             repair_prompt += f"\n- {analysis}"
    #         repair_prompt += "\nPlease regenerate the code, taking these errors into account."

    #         if next_token_id != self.model.tokenizer.eos_token_id:
    #             target_ids = target_ids + [self.model.tokenizer.eos_token_id]

    #         new_chat = self.model.tokenizer.apply_chat_template(
    #             [{"role": "user", "content": repair_prompt}],
    #             tokenize=False,
    #             add_generation_prompt=True
    #         )

    #         append_prompt = new_chat + prefix + code_head
    #         append_ids = self.model.tokenize_ids(append_prompt)[0].tolist()[1:]  # remove the starting BOS token
    #         target_ids = target_ids + append_ids

    #         user_prompts.append(repair_prompt)

    #     print(gen_time)
    #     # log.sort(reverse=True, key=lambda x: x[0])
    #     # for t, s, tok in log[:25]:
    #     #     print(f"[{s}] ({t:.4f} sec) {repr(tok)}")
    #     #     print(f"{self.model.tokenizer.decode(target_ids[:init_ids+s])}@{tok}")
    #     statics, gen = self.grammar_constrainer.results()
    #     statics["llm_time"] = self.model.llm_time
    #     statics["after_llm_time"] = self.model.after_llm_time
    #     statics["check_after_gen_time"] = self.model.check_after_gen_time
    #     statics["constrainer_time"] = self.model.constrainer_time
    #     # statics["item_time"] = self.model.item_time
    #     statics["total_time"] = gen_time

    #     statics["turns"] = len(generated_code)
    #     statics["max_turns"] = turns
    #     for i, msgs in enumerate(analysis_list):
    #         statics[f"feedback_turn_{i+1}"] = msgs
    #     # print(self.grammar_constrainer.incremental_parser.interactive.parser_state.value_stack)
    #     bench_id = bench_idx
    #     # if idx != -1:
    #     #     # # print(bench_id, idx)
    #     #     # bench_id = idx
    #     with open(f"{output_dir}/{bench_id}.json", 'w') as f:
    #         json.dump(statics, f, indent=4)
    #     with open(f"{output_dir}/{bench_id}.py", 'w') as f: 
    #         splited_sys = sys_for_chat.split('\n')
    #         f.write('# ' + '<System Prompt>' + '\n')
    #         for line in splited_sys:
    #             f.write('#     ' + line + '\n')
    #         f.write('#\n')

    #         for instruct, gen in zip(user_prompts, generated_code):
    #             f.write('# ' + '< User Prompt >' + '\n')
    #             splited_user = instruct.split('\n')
    #             for line in splited_user:
    #                 f.write('#     ' + line + '\n')
                
    #             if not end_by_eos:
    #                 splited = gen.split('\n')
    #                 splited[-1] = '# ' + splited[-1]
    #                 gen = '\n'.join(splited)
    #             f.write(gen)


    # def run(self):
    #     run_local = 0
    #     self.test_result = { "total_time": 0, "parse_time": 0, "infer_time": 0, "backtrack_cnt": 0, "generated": "", "success": False }
    #     total_start = time.time()
    #     while True:
    #         if time.time() - total_start > config.timeout:
    #             utils.info("Timeout!")
    #             break
    #         target_parent = self.result.marker
    #         target_ids = self.result.marker.node_ids
    #         # target_str = self.model.tokenizer.decode(target_ids[0])
    #         target_str = self.result.decode(target_ids)
    #         self.test_result["generated"] = target_str
    #         utils.info(f"Generated: {repr(target_str)}")

    #         if self.result.marker.llm_token_id == self.model.tokenizer.eos_token_id:
    #             utils.info("End of input (EOS)")
    #             self.test_result["success"] = True
    #             break

    #         # Token Generation
    #         infer_start = time.time()
    #         self.grammar_constrainer.set_parser_state(target_parent.parser_state)
    #         self.grammar_constrainer.set_remainder(target_parent.remainder)
    #         generated = self.model.generate_from_id(torch.tensor([target_ids]), top_k=self.n_beams)
    #         infer_end = time.time()
    #         self.test_result["infer_time"] += (infer_end - infer_start)
    #         start = time.time()
    #         # Token Generation
    #         n_add_failure = 0
    #         if self.mode == 'none':
    #             add_token_function = self.result.add_token_plain
    #         else:
    #             add_token_function = self.result.add_token
    #         for prob, idx in generated:
    #             # token = self.model.tokenizer.decode([idx.item()])
    #             if (add_token_function(idx, prob.item(), target_parent)) is None:
    #                 n_add_failure += 1
    #         if n_add_failure == self.n_beams:
    #             utils.info("All token generation failed")
    #             if not (self.result.discard_token(target_parent)):
    #                 utils.info("Exhausted all possible tokens")
    #                 break
    #         else:
    #             # move on to the next token
    #             self.result.set_next_marker()
                
    #         end = time.time()
    #         utils.info("Token generation time (milliseconds): %f" % ((end - start) * 1000.0))
    #         run_local += 1 
    #     pass
        
    #     total_end = time.time()
    #     self.test_result["total_time"] = total_end - total_start
    #     return self.test_result
