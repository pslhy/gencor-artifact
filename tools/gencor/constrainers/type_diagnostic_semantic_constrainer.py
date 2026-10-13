"""Isolated sem-lark wrapper for the whole-prefix diagnostic experiment."""

from constrain.type_diagnostic_constrain import TypeDiagnosticConstrain
from constrainers.semantic_constrainer import SemanticGrammarConstrainer


class TypeDiagnosticSemanticGrammarConstrainer(SemanticGrammarConstrainer):
    def make_semantic_constrain(self):
        return TypeDiagnosticConstrain(self.incremental_parser)
