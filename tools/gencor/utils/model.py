import os
import shutil
import torch
from utils import utils
import config
import time
import json
from collections import defaultdict
from transformers import (
    AutoTokenizer,
    AutoModelForCausalLM,
    LogitsProcessorList
)

HF_ACCESS_TOKEN = os.environ['HF_ACCESS_TOKEN'] if 'HF_ACCESS_TOKEN' in os.environ else None
HF_CACHE = os.environ['HF_CACHE'] if 'HF_CACHE' in os.environ else 'cache/'
TMP_TOK_PATH = f'./.tmp_tokenizer_{os.getpid()}'   # per-process: safe under concurrent runs in one cwd

def _trust_remote_code(model_name):
    # DeepSeek-Coder-V2 ships outdated remote code that calls Cache APIs removed
    # in current transformers (e.g. get_usable_length); its architecture is
    # natively supported, so load the native impl instead of the bundled code.
    # Phi-4-mini's remote code imports LossKwargs (removed in current
    # transformers); its Phi3 architecture is native too, so do the same.
    name = model_name.lower()
    return "deepseek-coder-v2" not in name and "phi-4-mini" not in name

def remove_split(tokenizer):
    tok_dict = json.loads(tokenizer.backend_tokenizer.to_str())
    if tok_dict['decoder'].get('type', None) and tok_dict['decoder']['type'] == 'Sequence':
        decoder = tok_dict['decoder']['decoders']
        if dec := decoder[-1]:
            if dec['type'] == 'Strip' and dec['start'] == 1 and dec['stop'] == 0 and dec['content'] == ' ':
                tok_dict['decoder']['decoders'] = decoder[:-1]
        else:
            print("NO STRIP FOUND :", decoder)
        if tok_dict['normalizer'].get('type', None) and tok_dict['normalizer']['type'] == 'Sequence':
            normalizer = tok_dict['normalizer']['normalizers']
            if norm := normalizer[0]:
                if norm['type'] == 'Prepend':
                    tok_dict['normalizer']['normalizers'] = normalizer[1:]
            else:
                print("NO PREPEND FOUND :", normalizer)
        tokenizer.save_pretrained(TMP_TOK_PATH)
        with open(os.path.join(TMP_TOK_PATH, 'tokenizer.json'), 'w') as f:
            json.dump(tok_dict, f)
        new_tok = AutoTokenizer.from_pretrained(TMP_TOK_PATH, local_files_only=True)
        shutil.rmtree(TMP_TOK_PATH)
        return new_tok
    else:
        return tokenizer




class ModelConnector:

    def __init__(self, model_name, device, constrainer, tokenizer=None):
        self.llm_time = 0.0
        self.after_llm_time = 0.0
        self.check_after_gen_time = 0.0
        self.constrainer_time = 0.0
        # Set per generate_from_id call: True when the decode-retry loop bailed
        # because it ran past the deadline (remaining turn time budget).
        self.decode_timed_out = False
        self.model_name = model_name
        self.model = self.load_model(model_name, device)
        self.tokenizer = ModelConnector.load_tokenizer(model_name) if tokenizer is None else tokenizer
        # Stop-token set. Chat models end a turn with a token that is NOT
        # tokenizer.eos_token_id (e.g. gemma <end_of_turn>=106 vs <eos>=1);
        # generation_config.eos_token_id carries the full set HF generate stops
        # on. Constrained decoding must stop on the same set, else the model's
        # turn-terminator slips through (decodes to '' -> passes as whitespace)
        # and the model degenerates past the closing fence.
        _ge = getattr(getattr(self.model, "generation_config", None), "eos_token_id", None)
        self.eos_ids = set()
        if isinstance(_ge, (list, tuple)):
            self.eos_ids.update(int(x) for x in _ge if x is not None)
        elif _ge is not None:
            self.eos_ids.add(int(_ge))
        if self.tokenizer.eos_token_id is not None:
            self.eos_ids.add(int(self.tokenizer.eos_token_id))
        utils.info(f"eos_ids = {sorted(self.eos_ids)} (tokenizer.eos={self.tokenizer.eos_token_id})")
        # Gate eos_handling (grammar accept-check) on the full stop-token set, so
        # any turn-terminator (e.g. <end_of_turn>) only ends generation when the
        # grammar accepts -- otherwise check_after_gen rejects it and decoding
        # continues until the program is syntactically complete.
        if constrainer is not None:
            constrainer.eos_ids = self.eos_ids
        self.logits_processor = LogitsProcessorList([constrainer])
        self.btokenizer = None #ByteTokenizer(self.tokenizer)
        self.step = 0
        self.tokens_tried = defaultdict(int)
        self.tmp_tokens_tried = defaultdict(int)
        # Model-call mode for the per-token forward (see _forward):
        #   "plain"    -- full forward over the whole sequence, no KV cache
        #   "cache"    -- raw forward reusing past_key_values (wsb-style)
        #   "generate" -- HF generate() API as a 1-token primitive (API-style)
        self.forward_mode = getattr(config.args, "forward_mode", "cache") if config.args else "cache"
        self.past_key_values = None
        self.cache_token_count = 0
        # # print all vocabs 
        # vocab = self.tokenizer.get_vocab()
        # alphabet = set()

        # for token in vocab:
        #     # Decode escaped characters if needed (depends on tokenizer type)
        #     decoded = self.tokenizer.convert_tokens_to_string([token])
        #     alphabet.update(decoded)

        # alphabet = sorted(alphabet)
        # print("Alphabet size:", len(alphabet))
        # print("Characters:", ''.join(alphabet)) 

    def load_model(self, model_name, device):
        utils.info(f"Loading model {model_name} on device {device}")
        device_auto = {}
        if config.args.device_map or device == "auto":
            device_auto = {"device_map": "auto"}
        if torch.cuda.is_available() and device[:4] == "cuda":
            torch.cuda.empty_cache()
            
        # add local_files_only=True to expedite
        model = AutoModelForCausalLM.from_pretrained(model_name, torch_dtype=torch.bfloat16, token=HF_ACCESS_TOKEN, trust_remote_code=_trust_remote_code(model_name), **device_auto).eval()
        if not (config.args.device_map or device == "auto"):
            device = torch.device(device if torch.cuda.is_available() else "cpu")
            model = model.to(device)
        return model

    @staticmethod
    def load_tokenizer(model_name):
        utils.info(f"Loading tokenizer for model {model_name}")
        # add local_files_only=True to expedite
        tokenizer = AutoTokenizer.from_pretrained(model_name, token=HF_ACCESS_TOKEN, trust_remote_code=_trust_remote_code(model_name))
        # NOTE: was `tokenizer = remove_split(tokenizer)`. remove_split dropped the
        # SentencePiece first-token space Strip, but it ALSO dropped the Prepend
        # normalizer -- which changes prompt encoding (`▁def` -> `def`) and breaks
        # reproduction against any repo using the standard tokenizer. We now keep
        # the STANDARD tokenizer and recover the same per-token surface strings at
        # the grammar layer via utils.surface_decode (proven byte-identical map).
        # Ensure pad_token_id exists
        if 'pad_token_id' not in dir(tokenizer):
            if tokenizer.pad_token_id is None:
                tokenizer.pad_token_id = tokenizer.eos_token_id
        return tokenizer
    
    def tokenize(self, prompt):
        # tokenize into token strings
        return self.tokenizer.tokenize(prompt)

    def reset_statics(self):
        self.llm_time = 0.0
        self.after_llm_time = 0.0
        self.check_after_gen_time = 0.0
        self.constrainer_time = 0.0
        self.step = 0
        self.tmp_tokens_tried = defaultdict(int)
    
    @torch.inference_mode()
    def generate_logits_from_id(self, input_ids):
        logits = self.model(input_ids.to(self.model.device)).logits
        next_token_logits = logits[:, -1, :]
        return next_token_logits
    
    @torch.inference_mode()
    def select_topk(self, logits, top_k=5):
        # Select top k logits
        next_token_probabilities = torch.softmax(logits, dim=-1)
        top_k_probabilities, top_k_indices = torch.topk(next_token_probabilities, top_k, dim=-1)
        for i, (prob, idx) in enumerate(zip(top_k_probabilities[0], top_k_indices[0])):
            token = self.tokenizer.decode([idx.item()], skip_special_tokens=True)
            utils.verbose(f"Top {i+1}: ({prob.item():.6f}) {repr(token)}")
        return zip(top_k_probabilities[0], top_k_indices[0])

    def reset_cache(self):
        # Drop the KV cache at the start of a new generation (new turn/task).
        self.past_key_values = None
        self.cache_token_count = 0

    @torch.inference_mode()
    def _forward(self, input_ids):
        """Return next-token logits (1, vocab) for ``input_ids[0]`` per forward_mode.

        Plugs into the same mask + reject loop in generate_from_id; only the model
        call differs. The reject loop re-topks the same logits (no re-forward), and
        only committed tokens reach here, so the KV cache never needs cropping.
        """
        input_ids = input_ids.to(self.model.device)

        if self.forward_mode == "plain":
            return self.model(input_ids).logits[:, -1, :]

        if self.forward_mode == "generate":
            # HF generate() as a 1-token forward primitive (API-style): we read
            # only generate()'s scores. It caches the input (not the picked
            # token), so reuse the cache only when the input extends the cached
            # prefix by one. (The actual generate-mode decode loop, with reject
            # handling, lives in _generate_decode_api.)
            #
            # repetition_penalty=1.0: generate() returns generation_config-PROCESSED
            # scores, so a model that ships repetition_penalty!=1.0 (e.g. Qwen2.5-
            # Coder: 1.1) would silently penalize repeated tokens -- diverging from
            # plain/cache (raw logits) by up to ~2.6 on Qwen-7B. Passing 1.0
            # explicitly neutralizes it so generate matches plain/cache.
            if self.past_key_values is not None and self.cache_token_count != input_ids.shape[1] - 1:
                self.past_key_values = None
            outputs = self.model.generate(
                input_ids,
                max_new_tokens=1,
                do_sample=False,
                repetition_penalty=1.0,
                output_scores=True,
                return_dict_in_generate=True,
                use_cache=True,
                past_key_values=self.past_key_values,
                pad_token_id=self.tokenizer.eos_token_id,
            )
            self.past_key_values = outputs.past_key_values
            self.cache_token_count = input_ids.shape[1]
            return outputs.scores[0]

        # "cache": raw forward reusing past_key_values (wsb-style).
        input_len = input_ids.shape[1]
        should_prefill = (
            self.past_key_values is None
            or input_len <= self.cache_token_count
            or input_len != self.cache_token_count + 1
        )
        if should_prefill:
            outputs = self.model(input_ids, use_cache=True)
            self.cache_token_count = input_len
        else:
            outputs = self.model(
                input_ids[:, -1:],
                past_key_values=self.past_key_values,
                use_cache=True,
            )
            self.cache_token_count += 1
        self.past_key_values = outputs.past_key_values
        return outputs.logits[:, -1, :]

    @torch.inference_mode()
    def generate_from_id(self, input_ids, top_k=5, initialize=False, deadline=None):
        # Generate text from input_ids
        # output = self.model.generate(
        #     input_ids=input_ids.to(self.model.device),
        #     # logits_processor=self.logits_processor, # token masking happens by logits_processor
        #     output_scores=True, 
        #     return_dict_in_generate=True
        # )
        # generated_ids = output.sequences
        # logits = output.scores
        # logits = self.model(input_ids.to(self.model.device), logits_processor=self.logits_processor).logits
        if self.forward_mode == "generate":
            # API-style decode: generate() picks the (greedy) token, semantic
            # rejects are re-generated with bad_words. plain/cache keep the
            # re-topk path below.
            return self._generate_decode_api(input_ids, top_k=top_k, deadline=deadline)
        llm_start = time.time()
        next_token_logits = self._forward(input_ids)
        self.llm_time += time.time() - llm_start
        # after_llm_start = time.time()
        origin_next_token_prob = torch.softmax(next_token_logits, dim=-1)
        org_top_k_prob, org_top_k_idx = torch.topk(origin_next_token_prob, top_k, dim=-1)
        if self.logits_processor is not None:
            constrainer_start = time.time()
            self.logits_processor[0].update_by_decoded(input_ids)
            self.constrainer_time += time.time() - constrainer_start

        decode_loop = True
        max_decode_attempts = 10
        decode_attempts = 0
        self.decode_timed_out = False
        if utils.can_log_debug():
            org_next_token_logits = next_token_logits.clone().detach()
        while decode_loop:
            decode_attempts += 1
            next_token_probabilities = torch.softmax(next_token_logits, dim=-1)
            # print(next_token_probabilities, next_token_probabilities.shape)
            con_top_k_prob, con_top_k_idx = torch.topk(next_token_probabilities, top_k, dim=-1)
            # print(con_top_k_idx[0][0].item())
            check_after_gen_start = time.time()
            # print("tagcor call")
            # check_after_gen -> eos_handling re-lexes the remainder, which can
            # backtrack for hours on a degenerate (unterminated-string) tail.
            # Bound it at the remaining turn deadline; on timeout end as a timeout.
            try:
                with utils.time_limit(None if deadline is None else deadline - time.time()):
                    decode_loop = not self.logits_processor[0].check_after_gen(con_top_k_idx[0][0].item())
            except utils.TimeLimitExceeded:
                self.decode_timed_out = True
                break
            gap = time.time() - check_after_gen_start
            self.check_after_gen_time += gap
            # print("tagcor return", self.check_after_gen_time, f"(+{gap})")
            # print(f"Testing token id {con_top_k_idx[0][0].item()} ({repr(self.tokenizer.decode([con_top_k_idx[0][0].item()]))}): {'INVALID' if decode_loop else 'VALID'}")
            if decode_loop:
                # if decode_attempts == 0:
                #     for i, (prob, idx) in enumerate(zip(org_top_k_prob[0], org_top_k_idx[0])):
                #         token = self.tokenizer.decode([idx.item()], skip_special_tokens=True)
                #         print(f"Top {i+1} before constraining: ({prob.item():.6f}) {repr(token)}")
                #     print("Code:\n"+self.logits_processor[0].prompt + self.logits_processor[0].tmp_remainder + "@\n###")
                # print("Regenerating because the top token is not valid...")
                # time.sleep(1)
                # Out of the remaining turn-time budget: stop deleting tokens and
                # retrying check_after_gen, so a single position can't grind past
                # the timeout. The turn ends as a timeout (see gencor caller).
                if deadline is not None and time.time() > deadline:
                    self.decode_timed_out = True
                    break
                con_idx = con_top_k_idx[0][0].item()
                # print(f"Top token (id : {con_idx}):", repr(self.tokenizer.decode([con_idx])))
                # print(con_top_k_idx[0][0].item(), con_top_k_prob[0][0].item())
                next_token_logits[0][con_idx] = -float('Inf')
        self.tokens_tried[decode_attempts] += 1
        self.tmp_tokens_tried[decode_attempts] += 1

        # # top_k_tokens = [self.tokenizer.decode([idx.item()], skip_special_tokens=True) for idx in top_k_indices[0]] 
        if utils.can_log_debug():
            self.step += 1
            utils.debug(f"[{self.step:<4}] Top-k tokens after constraining:")
            for i, ((org_prob, org_idx),(con_prob, con_idx)) in enumerate(zip(zip(org_top_k_prob[0], org_top_k_idx[0]), zip(con_top_k_prob[0], con_top_k_idx[0]))):
                org_token = self.tokenizer.decode([org_idx.item()], skip_special_tokens=True)
                con_token = self.tokenizer.decode([con_idx.item()], skip_special_tokens=True)
                # utils.verbose(f"Top {i+1}: ({prob.item():.6f}) {repr(token)}")
                con_origin_rank = (origin_next_token_prob >= origin_next_token_prob[0][con_idx]).sum().item()
                utils.debug(f"Top {i + 1} before constraining: [{org_idx.item():<5}] ({org_prob.item():.6f}) ({org_next_token_logits[0][org_idx.item()]:.6f}) {repr(org_token):<15} "
                f"| after constraining: [{con_idx.item():<5}] ({con_prob.item():.6f}) ({next_token_logits[0][con_idx.item()]:.6f}) {repr(con_token):<15} (Original rank: {con_origin_rank})")
            # the token actually picked = top-1 after constraining (greedy), with
            # its rank in the raw (pre-constraining) distribution.
            sel_idx = con_top_k_idx[0][0].item()
            sel_token = self.tokenizer.decode([sel_idx], skip_special_tokens=True)
            sel_before_rank = (origin_next_token_prob >= origin_next_token_prob[0][sel_idx]).sum().item()
            utils.debug(f"  => selected [{sel_idx:<5}] ({con_top_k_prob[0][0].item():.6f}) ({next_token_logits[0][sel_idx]:.6f}) {repr(sel_token):<15} (rank 1 after / {sel_before_rank} before)")
        #     # print(f"Top {i+1}:  ({prob.item():.6f}) {idx.item()} - {repr(token)} (Original rank: {origin_rank})")
        # # self.after_llm_time += time.time() - after_llm_start
        return zip(con_top_k_prob[0], con_top_k_idx[0])
        # return zip(top_k_probabilities[0], top_k_tokens)

    @torch.inference_mode()
    def _generate_decode_api(self, input_ids, top_k=5, deadline=None):
        """Choose candidates with generate(), then run the rejection checks.

        With neutral top-k/top-p, retries reuse the current position's scores.
        Filtered retries retain the existing generate() path (see its TODO).
        plain/cache use the re-topk loop in generate_from_id.
        """
        input_ids = input_ids.to(self.model.device)
        seq_len = input_ids.shape[1]
        eos = self.tokenizer.eos_token_id

        # Advance the confirmed state once before choosing a candidate.
        constrainer_start = time.time()
        self.logits_processor[0].update_by_decoded(input_ids)
        self.constrainer_time += time.time() - constrainer_start

        # 2) reject loop. Cache is reused across tokens; on reject we crop it
        #    back one step so the re-generate re-forwards the last token with the
        #    updated bad_words (falls back to a full re-prefill if the cache
        #    object has no crop()).
        if self.past_key_values is not None and self.cache_token_count != seq_len - 1:
            self.past_key_values = None
        # Sample when a seed (-s) OR any of -T/-p/-k is given (a seed is pointless
        # for deterministic greedy, so -s alone = default sampling); greedy (argmax)
        # otherwise. The seed is fixed per task in gencor.py (no-op for greedy).
        # Unspecified knobs get neutral defaults (temp 1.0 / top_p 1.0 / top_k 0 =
        # pure softmax sampling; top_p & top_k may be combined), and repetition_
        # penalty (-R, default 1.0 = off) is passed too -- all explicit so the
        # model's generation_config sampling params never leak in.
        a = config.args
        s_seed = getattr(a, "seed", None) if a else None
        s_temp = getattr(a, "temperature", None) if a else None
        s_top_p = getattr(a, "top_p", None) if a else None
        s_top_k = getattr(a, "top_k", None) if a else None
        rep_pen = getattr(a, "repetition_penalty", 1.0) if a else 1.0
        if s_seed is not None or any(v is not None for v in (s_temp, s_top_p, s_top_k)):
            sampling_kwargs = {
                "do_sample": True,
                "temperature": s_temp if s_temp is not None else 1.0,
                "top_p": s_top_p if s_top_p is not None else 1.0,
                "top_k": s_top_k if s_top_k is not None else 0,
            }
        else:
            sampling_kwargs = {"do_sample": False}
        bad_words = []
        self.decode_timed_out = False
        decode_attempts = 0
        allow_fn = None
        # Only fetch raw (pre-mask) logits when debug logging is on, so normal
        # runs don't pay for output_logits.
        log_topk = utils.can_log_debug()
        dbg = None
        # HF token selection we mirror on reject (transformers 4.57.6, _sample):
        # https://github.com/huggingface/transformers/blob/753d61104116eefc8ffc977327b441ee0c8d599f/src/transformers/generation/utils.py#L2802-L2833
        #     next_token_logits = outputs.logits[:, -1, :].to(copy=True, dtype=torch.float32, device=input_ids.device)
        #     next_token_scores = logits_processor(input_ids, next_token_logits)
        #     if do_sample:
        #         probs = nn.functional.softmax(next_token_scores, dim=-1)
        #         next_tokens = torch.multinomial(probs, num_samples=1).squeeze(1)
        #     else:
        #         next_tokens = torch.argmax(next_token_scores, dim=-1)
        # Sampling warpers (temperature -> top_k -> top_p -> min_p) are part of
        # logits_processor, appended in this order by _get_logits_processor:
        # https://github.com/huggingface/transformers/blob/753d61104116eefc8ffc977327b441ee0c8d599f/src/transformers/generation/utils.py#L1266-L1275
        # Re-picking from the already-computed scores is bit-exact vs HF only when
        # no top_k/top_p warper renormalizes the tail (temperature is order-
        # invariant with -inf banning). Otherwise fall back to per-reject generate.
        do_sample = sampling_kwargs.get("do_sample", False)
        _tk = sampling_kwargs.get("top_k", 0)
        _tp = sampling_kwargs.get("top_p", 1.0)
        reuse_logits = (_tk in (0, None)) and (_tp is None or _tp >= 1.0)
        base_scores = None  # this position's selection dist, reused across rejects
        while True:
            decode_attempts += 1
            if base_scores is None or not reuse_logits:
                # Forward. generate(max_new_tokens=1) does NOT cache the token it
                # samples (it only forwards up to the last input token), so the KV
                # cache stays valid across reuse re-picks -- no crop on reject.
                llm_start = time.time()
                outputs = self.model.generate(
                    input_ids,
                    max_new_tokens=1,
                    repetition_penalty=rep_pen,
                    bad_words_ids=(bad_words or None),
                    prefix_allowed_tokens_fn=(allow_fn or None),
                    output_scores=True,
                    output_logits=log_topk,
                    return_dict_in_generate=True,
                    use_cache=True,
                    past_key_values=self.past_key_values,
                    pad_token_id=eos,
                    **sampling_kwargs,
                )
                self.past_key_values = outputs.past_key_values
                self.llm_time += time.time() - llm_start
                token_id = outputs.sequences[0, -1].item()
                if reuse_logits:
                    # HF's selection distribution (raw fp32 + grammar mask +
                    # warpers; bad_words empty). Clone to -inf rejects in place.
                    base_scores = outputs.scores[0].clone()
            else:
                # REUSE: re-pick from base_scores with rejects masked -- mirrors HF
                # _sample (multinomial if do_sample else argmax). One draw per
                # attempt keeps the torch RNG cadence identical to per-reject
                # generate(), so the picked token matches; no re-forward.
                if do_sample:
                    token_id = torch.multinomial(torch.softmax(base_scores, dim=-1), num_samples=1)[0, 0].item()
                else:
                    token_id = torch.argmax(base_scores, dim=-1)[0].item()
            if log_topk and decode_attempts == 1:
                # Same before/after format as the cache path (generate_from_id):
                # before = raw model logits (output_logits), after = the
                # grammar-masked scores generate() actually selects from.
                self.step += 1
                raw, msk = outputs.logits[0], outputs.scores[0]
                raw_prob, msk_prob = torch.softmax(raw, dim=-1), torch.softmax(msk, dim=-1)
                org_top_k_prob, org_top_k_idx = torch.topk(raw_prob, top_k, dim=-1)
                con_top_k_prob, con_top_k_idx = torch.topk(msk_prob, top_k, dim=-1)
                utils.debug(f"[{self.step:<4}] Top-k tokens after constraining:")
                for i, ((org_prob, org_idx), (con_prob, con_idx)) in enumerate(zip(zip(org_top_k_prob[0], org_top_k_idx[0]), zip(con_top_k_prob[0], con_top_k_idx[0]))):
                    org_token = self.tokenizer.decode([org_idx.item()], skip_special_tokens=True)
                    con_token = self.tokenizer.decode([con_idx.item()], skip_special_tokens=True)
                    con_origin_rank = (raw_prob >= raw_prob[0][con_idx]).sum().item()
                    utils.debug(f"Top {i + 1} before constraining: [{org_idx.item():<5}] ({org_prob.item():.6f}) ({raw[0][org_idx.item()]:.6f}) {repr(org_token):<15} "
                    f"| after constraining: [{con_idx.item():<5}] ({con_prob.item():.6f}) ({msk[0][con_idx.item()]:.6f}) {repr(con_token):<15} (Original rank: {con_origin_rank})")
                # Save this step's distributions; the ACTUAL committed token is
                # logged after the reject loop below -- generate()'s first pick
                # here can still be rejected by check_after_gen, so logging it as
                # "selected" was misleading (it may never reach the output).
                dbg = (raw_prob, msk_prob)

            check_start = time.time()
            try:
                with utils.time_limit(None if deadline is None else deadline - time.time()):
                    # accepted = self.logits_processor[0].check_after_gen(token_id)
                    # TODO (syntax): Connect syntax candidate checking here;
                    # GrammarConstrainer has no check_with_trie implementation.
                    rejected_ids = self.logits_processor[0].check_with_trie(token_id)
                    accepted = len(rejected_ids) == 0
            except utils.TimeLimitExceeded:
                self.decode_timed_out = True
                break
            self.check_after_gen_time += time.time() - check_start
            if accepted:
                break
            if deadline is not None and time.time() > deadline:
                self.decode_timed_out = True
                break
            # reject: ban this token and re-generate (crop the cache one step).
            if log_topk:
                rej = self.tokenizer.decode([token_id], skip_special_tokens=True)
                utils.debug(f"  -- rejected [{token_id:<5}] {repr(rej):<15} (attempt {decode_attempts})")
            # Each rejected id is its own single-token bad word. bad_words_ids is
            # List[List[int]] where an inner list is a banned token SEQUENCE, so
            # appending rejected_ids as one list would ban the n-gram 3204->6317->...
            # (never occurs) instead of each token -> nothing gets banned.
            # TODO: When top-k/top-p disables reuse_logits, add each rejected ID
            # to bad_words before retrying generate(). The name baseline omits
            # this, so a rejected candidate can be sampled again.
            if reuse_logits:
                # -inf the rejects out of the reused distribution; next iteration
                # re-picks from base_scores with no forward and no cache crop.
                base_scores[0, rejected_ids] = -float("inf")
            elif hasattr(self.past_key_values, "crop"):
                try:
                    self.past_key_values.crop(-1)
                except (ValueError, RuntimeError):
                    # Sliding-window caches (e.g. gemma-3) refuse to crop once
                    # the sequence has passed the window -- evicted states can't
                    # be restored. Fall back to a full re-prefill next generate().
                    self.past_key_values = None
            else:
                self.past_key_values = None
        # log the token that was ACTUALLY committed (passed check_after_gen), with
        # its rank in this step's constrained distribution and the attempt count.
        if log_topk and dbg is not None:
            raw_prob, msk_prob = dbg
            sel_token = self.tokenizer.decode([token_id], skip_special_tokens=True)
            after = (msk_prob[0] >= msk_prob[0][token_id]).sum().item()
            before = (raw_prob[0] >= raw_prob[0][token_id]).sum().item()
            tag = "committed" if not self.decode_timed_out else "TIMEOUT-unaccepted"
            utils.debug(f"  => {tag} [{token_id:<5}] ({msk_prob[0][token_id].item():.6f}) "
                        f"{repr(sel_token):<15} (rank {after} after / {before} before, "
                        f"{decode_attempts} attempt(s))")
        self.cache_token_count = seq_len
        self.tokens_tried[decode_attempts] += 1
        self.tmp_tokens_tried[decode_attempts] += 1

        # Return in generate_from_id's (prob, idx) format. token_id is generate's
        # ACTUAL pick (greedy argmax OR sampled draw) that check_after_gen accepted
        # -- not the argmax of scores, which differs under sampling.
        final_probs = torch.softmax(outputs.scores[0], dim=-1)
        chosen_prob = final_probs[0, token_id]
        chosen_idx = torch.tensor(token_id, device=final_probs.device)
        return zip([chosen_prob], [chosen_idx])

    def tokenize_ids(self, prompt):
        # tokenize into token ids
        return self.tokenizer.encode(prompt, return_tensors="pt").to(self.model.device)
    
    @torch.inference_mode()
    def generate(self, prompt, top_k=5):
        input_ids = self.tokenizer.encode(prompt, return_tensors="pt").to(self.model.device)
        self.generate_from_id(input_ids, top_k)
    
