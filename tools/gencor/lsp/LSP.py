from abc import ABC, abstractmethod

class LSP(ABC):
    def __init__(self):
        self.variables = set()
        self.prefix_cache = set()

    def hint_update(self, hint):
        pass

    @abstractmethod
    def get_variables(self, code_snippet, line = None, col = None):
        pass
        
    @abstractmethod
    def get_variables_from_terminals(self, terminals, term_idx):
        pass

    def update_variables(self, code_snippet, line = None, col = None):
        self.variables = self.get_variables(code_snippet, line, col)
        self.prefix_cache = set()
        self.prefix_cache.add("")
        for var in self.variables:
            tmp = ""
            for c in var:
                tmp += c
                self.prefix_cache.add(tmp)

    def is_exact_in_variables(self, name: str) -> bool:
        return name in self.variables

    def is_prefix_in_variables(self, prefix: str) -> bool:
        return prefix in self.prefix_cache
