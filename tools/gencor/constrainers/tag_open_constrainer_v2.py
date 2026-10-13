from constrain.auto_import_constrain import AutoImportConstrain
from constrain.forward_callee_constrain import ForwardCalleeConstrain
from constrain.multiple_constrain import MultipleConstrain
from constrain.policy_b_constrain import PolicyBConstrain
from constrain.symbol_kind_constrain import SymbolKindConstrain
from constrain.undefined_module_member_access_constrain import UndefinedModuleMemberAccessConstrain
from constrain.undefined_variable_constrain import UndefinedVariableConstrain
from constrain.uv_every_constrain import UVEveryConstrain
from constrainers.semantic_constrainer import SemanticGrammarConstrainer
from parsers.incremental_parser import IncrementalParser
from utils.langprofile import get_language_profile


class ForwardAutoImportConstrain(ForwardCalleeConstrain, AutoImportConstrain):
    """fg + ai: the two extensions override disjoint hooks (deferral vs
    _on_missing/lsp), so cooperative MRO composes them directly. A deferred
    callee that turns out to be an importable qual head resolves via the
    auto-import verdict at its (EOS-time) check."""


class PolicyBForwardCalleeConstrain(ForwardCalleeConstrain, PolicyBConstrain):
    pass


class PolicyBAutoImportConstrain(AutoImportConstrain, PolicyBConstrain):
    pass


class PolicyBForwardAutoImportConstrain(ForwardAutoImportConstrain, PolicyBConstrain):
    pass


class UVEveryForwardCalleeConstrain(ForwardCalleeConstrain, UVEveryConstrain):
    pass


class UVEveryAutoImportConstrain(AutoImportConstrain, UVEveryConstrain):
    pass


class UVEveryForwardAutoImportConstrain(ForwardAutoImportConstrain, UVEveryConstrain):
    pass


def build_uv_constrain(incremental_parser, lsp_factory, flags=(), policy_b=False, uv_every=False):
    """Compose the uv_open, policyB or uv_every semantic constrain from CLI flags.

    base uvc variant:  fg -> ForwardCalleeConstrain, ai -> AutoImportConstrain,
                       fg+ai -> ForwardAutoImportConstrain
    additive members:  ummac -> UndefinedModuleMemberAccessConstrain,
                       kind  -> SymbolKindConstrain (both share the head's LSP;
                       with ai they see reserved imports via the prefixed LSP).
    Returns (constrain, head_uvc)."""
    flags = set(flags)
    fg, ai = "fg" in flags, "ai" in flags
    if fg and ai:
        head_cls = PolicyBForwardAutoImportConstrain if policy_b else ForwardAutoImportConstrain
    elif fg:
        head_cls = PolicyBForwardCalleeConstrain if policy_b else ForwardCalleeConstrain
    elif ai:
        head_cls = PolicyBAutoImportConstrain if policy_b else AutoImportConstrain
    else:
        head_cls = PolicyBConstrain if policy_b else UndefinedVariableConstrain
    if uv_every:
        head_cls = {
            UndefinedVariableConstrain: UVEveryConstrain,
            ForwardCalleeConstrain: UVEveryForwardCalleeConstrain,
            AutoImportConstrain: UVEveryAutoImportConstrain,
            ForwardAutoImportConstrain: UVEveryForwardAutoImportConstrain,
        }[head_cls]
    head = head_cls(incremental_parser, lsp_factory=lsp_factory)

    shared_lsp_factory = (lambda: head.prefixed_lsp) if ai else (lambda: head.lsp)
    constraints = [head]
    if "ummac" in flags:
        constraints.append(
            UndefinedModuleMemberAccessConstrain(incremental_parser, lsp_factory=shared_lsp_factory)
        )
    if "kind" in flags:
        constraints.append(
            SymbolKindConstrain(incremental_parser, lsp_factory=shared_lsp_factory)
        )
    if len(constraints) == 1:
        return head, head
    return MultipleConstrain(constraints), head


class EfficientTagOpenConstrainer(SemanticGrammarConstrainer):
    uv_flags = ()
    policy_b = False
    uv_every = False

    def __init__(self, model_name, tokenizer, incremental_parser: IncrementalParser,
                 uv_flags=None):
        # consumed by make_semantic_constrain, which super().__init__ invokes
        if uv_flags is not None:
            self.uv_flags = tuple(uv_flags)
        super().__init__(model_name, tokenizer, incremental_parser)
        self.statics["tagcor_reject"] = 0

    def scope_lsp_factory(self):
        """The language's scope LSP, used for the decoding-time (incomplete) check."""
        profile = get_language_profile(self.incremental_parser.language)
        if profile.lsp_factory is None:
            raise NotImplementedError(
                f"No scope LSP configured for language '{profile.family}'; "
                f"uv_open/policyB/uv_every modes are unavailable for it."
            )
        return profile.lsp_factory

    def make_semantic_constrain(self):
        constrain, self.uv_head = build_uv_constrain(
            self.incremental_parser,
            self.scope_lsp_factory(),
            flags=self.uv_flags,
            policy_b=self.policy_b,
            uv_every=self.uv_every,
        )
        return constrain

    def results(self):
        statics, gen = super().results()
        # Auto-import layer 3: decoding is append-only, so reserved imports are
        # prepended to the finished program, outside the decode loop.
        import_lines = getattr(self.uv_head, "import_lines", lambda: [])()
        if import_lines:
            gen = "\n".join(import_lines) + "\n" + gen
        return statics, gen

    def check_after_gen(self, token_id, _probe_chars=None):
        self.statics["call_tagcor"] += 1
        accepted = super().check_after_gen(token_id, _probe_chars=_probe_chars)
        if not accepted:
            self.statics["tagcor_reject"] += 1
        return accepted


class PolicyBConstrainer(EfficientTagOpenConstrainer):
    policy_b = True


class UVEveryConstrainer(EfficientTagOpenConstrainer):
    uv_every = True


class EfficientModuleMemberConstrainer(EfficientTagOpenConstrainer):
    uv_flags = ("ummac",)


class EfficientSymbolKindConstrainer(EfficientTagOpenConstrainer):
    """uvc (value) + ummac (dotted member) + symbol-kind (CAPITALIZED head).

    SymbolKindConstrain shares the unbound check's merlin session: it asks the
    SAME completion endpoint, only filtering by the grammar-allowed kind set
    (9=Module / 4=Constructor / 8=module-type) instead of kind 12 (value)."""

    uv_flags = ("ummac", "kind")