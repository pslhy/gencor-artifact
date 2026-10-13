"""sem-lark TypeScript TYPE-constrained decoder constrainer.

Mirrors EfficientTagOpenConstrainer (constrainers/tag_open_constrainer_v2.py):
the ONLY override is ``make_semantic_constrain``, which hands the engine a
``TypeSemanticConstrain``. The ``(model_name, tokenizer, incremental_parser)``
constructor and the entire per-token ``check_after_gen`` engine are inherited
from ``SemanticGrammarConstrainer``.

Wired from gencor/gencor.py for mode ``sem_type`` (the new sem-lark type path);
TypeScript checks use the shared sem-lark candidate driver.
"""

from constrainers.semantic_constrainer import SemanticGrammarConstrainer
from constrain.type_constrain import TypeSemanticConstrain


class TypeSemanticGrammarConstrainer(SemanticGrammarConstrainer):
    def make_semantic_constrain(self):
        return TypeSemanticConstrain(self.incremental_parser)
