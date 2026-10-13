__all__ = [
    "SemanticConstrain",
    "SymbolCheckResult",
    "UndefinedVariableConstrain",
    "UndefinedModuleMemberAccessConstrain",
    "MultipleConstrain",
]


def __getattr__(name):
    if name in {"SemanticConstrain", "SymbolCheckResult"}:
        from constrain.semantic_constrain import SemanticConstrain, SymbolCheckResult

        return {
            "SemanticConstrain": SemanticConstrain,
            "SymbolCheckResult": SymbolCheckResult,
        }[name]
    if name == "UndefinedVariableConstrain":
        from constrain.undefined_variable_constrain import UndefinedVariableConstrain

        return UndefinedVariableConstrain
    if name == "UndefinedModuleMemberAccessConstrain":
        from constrain.undefined_module_member_access_constrain import UndefinedModuleMemberAccessConstrain

        return UndefinedModuleMemberAccessConstrain
    if name == "MultipleConstrain":
        from constrain.multiple_constrain import MultipleConstrain

        return MultipleConstrain
    raise AttributeError(f"module 'constrain' has no attribute {name!r}")
