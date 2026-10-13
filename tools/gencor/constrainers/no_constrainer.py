import torch
from parsers.incremental_parser import IncrementalParser
from utils import utils 
import parsers.transducer as transducer
from typing import Any, Optional, Tuple, Iterable, Dict, List, Set
import os 
import pickle
from lark import Token
from lark.exceptions import UnexpectedCharacters
import time

class NoConstrainer:
    
    def __init__(self, model_name, tokenizer, incremental_parser: IncrementalParser):
        self.statics = {}
        self.prompt = ""
        self.tokenizer = tokenizer 
        self.tmp_remainder = ""
        self.initialized = False
        self.initial_code = ""
        self.init_statics()
        
    def init_statics(self):
        self.statics = {
            "decoded": 0,
        }

    def reset(self):
        self.prompt = ""
        self.tmp_remainder = ""
        self.initialized = False
        self.init_statics()
    
    def is_end(self):
        return False

    def results(self):
        prompt = "\n".join(self.prompt.split("\n")[1:])
        return self.statics, prompt + self.tmp_remainder

    def update_by_decoded(self, input_ids: torch.LongTensor):
        remover = False
        if self.initialized == False:
            token_ids = input_ids[0].tolist()
            self.initialized = True
            remover = True
        else: 
            self.statics["decoded"] += 1
            token_ids = [input_ids[0][-1].item()]

        decoded = utils.surface_decode(self.tokenizer, token_ids)
        if remover:
            decoded = self.initial_code
        self.prompt += decoded

    
    
    def check_after_gen(self, token_id: int) -> bool:
        return True

    def check_with_trie(self, token_id: int) -> List[int]:
        # Vanilla decoding imposes no grammar/type constraint, so no candidate
        # token is ever infeasible. The generate-mode sampler
        # (utils/model._generate_decode_api) reads an empty list as "accepted";
        # mirror the semantic constrainer's contract by returning []. Without
        # this, -c none (and -c syntax) crash under --forward-mode generate,
        # which sampling/seeds force.
        return []

    def eos_handling(self, decoded="") -> bool:
        return True