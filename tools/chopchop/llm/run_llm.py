import gc
from dataclasses import dataclass
from collections import Counter, defaultdict
from typing import Any
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
from transformers.cache_utils import DynamicCache
import time


@dataclass
class ModelConfig:
    model_id: str = "codellama/CodeLlama-13b-Instruct-hf"
    device: str = "cuda"
    dtype: torch.dtype = torch.bfloat16


@dataclass
class Config:
    """
    Configuration for language model generation.
    """

    temperature: float = 0.5
    repetition_penalty: float = 1.0
    top_p: float = 1.0
    top_k: float = 0
    timeout: int = 99999  # no timeout by default


@dataclass
class RunInfo:
    llm_finished: bool
    output: str
    total_realizability_time: float
    num_tokens_guessed: int
    num_tokens_generated: int
    tries_per_token: Counter
    timed_out: bool = False


class LanguageModelRunner:
    def __init__(self, model_config: ModelConfig = ModelConfig()):
        self.model_config = model_config
        self.device = torch.device(model_config.device)
        self.model, self.tokenizer = self._load_model_and_tokenizer()

    def _load_model_and_tokenizer(self):
        """
        Load and configure the model and tokenizer.
        """
        tokenizer = AutoTokenizer.from_pretrained(self.model_config.model_id)
        tokenizer.pad_token = tokenizer.eos_token

        model = AutoModelForCausalLM.from_pretrained(
            self.model_config.model_id,
            device_map="auto",
            torch_dtype=self.model_config.dtype,
        )
        model.resize_token_embeddings(len(tokenizer))
        return model, tokenizer

    def _tokenize_prompt(
        self, prompt: str, context: str, fixed_prefix: str = ""
    ) -> torch.Tensor:
        """
        Tokenize the prompt EXACTLY as gencor does so the model input token ids
        match bit-for-bit (gencor.py run_benchmark builds `chat + prefix + code`
        as a STRING then `tokenize_ids` == tokenizer.encode(add_special_tokens=True)).

        SentencePiece is NOT concatenation-invariant: the old path rendered the
        chat template to *tokens* (add_special_tokens=False) and appended
        separately-tokenized prefix ids, which diverged from gencor at two spots
        -- a dropped leading <s> BOS (gencor's encode re-adds one on top of the
        template's, so gencor actually feeds a double <s>) and the
        `[/INST]`->```` ``` ```` fence seam (`]`+`▁```` vs the merged `]```+`` `` ``).
        We now render the chat template to a *string* (tokenize=False) and
        tokenize the whole `chat + fixed_prefix` in a single pass, reproducing
        gencor's ids including the leading double-<s>.
        """
        messages = [
            {"role": "system", "content": context},
            {"role": "user", "content": prompt},
        ]
        chat_str = self.tokenizer.apply_chat_template(
            messages,
            tokenize=False,
            add_generation_prompt=True,
            enable_thinking=False,
        )
        input_ids = self.tokenizer(
            chat_str + fixed_prefix,
            return_tensors="pt",
        )["input_ids"]  # add_special_tokens defaults True == gencor's encode()
        return input_ids.to(self.model.device)

    def _generate_next_token(
        self,
        input_ids: torch.Tensor,
        config: Config,
        generated_tokens: list[int],
        forbidden_tokens: set[int],
        cache: DynamicCache,
    ) -> Any:
        """
        Generate the next token using the model.
        """
        bad_words = [[id] for id in forbidden_tokens] if forbidden_tokens else None
        inp = torch.tensor([list(input_ids[0]) + generated_tokens])
        inp = inp.to(self.model_config.device)
        if self.tokenizer.eos_token_id in forbidden_tokens:
            eos_token_id = None
        else:
            eos_token_id = self.tokenizer.eos_token_id
        return self.model.generate(
            inp,
            do_sample=True,
            pad_token_id=self.tokenizer.eos_token_id,
            eos_token_id=eos_token_id,
            max_new_tokens=1,
            temperature=config.temperature,
            top_p=config.top_p,
            top_k=config.top_k,
            bad_words_ids=bad_words,
            repetition_penalty=config.repetition_penalty,
            num_return_sequences=1,
            output_scores=True,
            return_dict_in_generate=True,
            past_key_values=cache,
        )

    def run(
        self,
        config: Config,
        prompt: str,
        context: str,
        fixed_prefix: str = "",
        realizability_checker=None,
    ) -> RunInfo:
        input_ids = self._tokenize_prompt(prompt, context, fixed_prefix)
        # `input_ids` already contains `fixed_prefix` (tokenized together with the
        # chat template, gencor-style -- the chat/prefix boundary tokens merge, so
        # the prefix CANNOT be split back out as its own ids). `generated_tokens`
        # therefore tracks ONLY the tokens the model emits after the prompt (starts
        # empty); the forward input is input_ids + generated_tokens (see
        # _generate_next_token). Token statistics count only accepted generation
        # tokens, excluding the fixed input prefix.
        generated_tokens: list[int] = []
        forbidden_tokens: dict = defaultdict(set)
        cache = DynamicCache()
        decoded_output = fixed_prefix
        num_tokens_guessed = 0
        total_realizability_time = 0.0
        tries = 0
        try_counts: Counter[int] = Counter()
        start_time = time.time()

        while time.time() - start_time <= config.timeout:
            num_tokens_guessed += 1
            tries += 1
            output = self._generate_next_token(
                input_ids,
                config,
                generated_tokens,
                forbidden_tokens[tuple(generated_tokens)],
                cache,
            )
            new_token: int = output.sequences[0][-1].tolist()
            is_final = new_token == self.tokenizer.eos_token_id
            # generated_tokens is model-only now, so re-attach the fixed_prefix
            # text (the code seed) the grammar checker / ts_clean rely on.
            decoded_output = fixed_prefix + self.tokenizer.decode(
                generated_tokens + [new_token], skip_special_tokens=True
            )

            if realizability_checker is None:
                is_realizable = True
            else:
                check_start = time.time()
                is_realizable = realizability_checker.realizable(
                    decoded_output, is_final
                )
                total_realizability_time += time.time() - check_start

            if is_realizable:
                try_counts[tries] += 1
                tries = 0
                generated_tokens.append(new_token)
                # Fence-stop (ADDED -- see CHANGES.md). chopchop's loop originally
                # ended ONLY when the model emitted tokenizer.eos_token_id. Chat
                # models at temperature rarely emit it right after the closing ```
                # fence -- they degenerate into blank lines / filler that the grammar
                # %ignores or accepts as extra commands, so a complete-but-not-yet-eos
                # program burned the ENTIRE timeout (observed: is_not_prime solved in
                # ~80 tokens, then 300+ trailing '\n'). Stop as soon as the
                # ```typescript ... ``` block is closed -- the same boundary
                # ts_clean() extracts anyway.
                _open = decoded_output.find("```")
                fence_done = _open != -1 and "```" in decoded_output[_open + 3:]
                if is_final or fence_done:
                    return RunInfo(
                        llm_finished=True,
                        output=decoded_output,
                        total_realizability_time=total_realizability_time,
                        num_tokens_guessed=num_tokens_guessed,
                        num_tokens_generated=len(generated_tokens),
                        tries_per_token=try_counts,
                        timed_out=False,
                    )
            else:
                forbidden_tokens[tuple(generated_tokens)].add(new_token)
                cache.crop(-1)
        return RunInfo(
            llm_finished=False,
            output=decoded_output,
            total_realizability_time=total_realizability_time,
            num_tokens_guessed=num_tokens_guessed,
            num_tokens_generated=len(generated_tokens),
            tries_per_token=try_counts,
            timed_out=time.time() - start_time > config.timeout,
        )

    def __del__(self):
        del self.model
        del self.tokenizer
        gc.collect()
        torch.cuda.empty_cache()
