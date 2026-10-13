"""Module auto-import (tools/method.pdf sec.4): an undefined dotted-access
HEAD (``np`` in ``np.array``) is not rejected if it is a whitelisted importable
module -- instead the import statement is RESERVED (``import_needed``) and the
name passes. The reserved imports are prepended to the final program after
decoding (append-only decoding cannot insert them mid-stream), which is what
keeps the soundness framing: AvailableVarsAt is widened only by names that
really become in-scope.

Three layers:
  * attribute: the grammar's existing ``bnd_if_module`` marking identifies
    heads (NameCheck.qual via the base ``_qual_of``);
  * 3-way verdict (``_on_missing``): defined -> pass (base), undefined+qual+
    importable -> reserve+pass, else -> reject. A FORMING head passes while it
    is a prefix of an importable name (reservation waits for completion);
  * queries see the reservation: ``prefixed_lsp`` wraps the shared LSP so every
    scope/module/member query runs against the program WITH the reserved
    imports virtually prepended (spans/indices shifted). Member names are NOT
    auto-imported -- ``np.arrry`` still fails the member check (against the
    real module interface, since the virtual import makes ``np`` resolvable).
"""

from lark import Token

from constrain.undefined_variable_constrain import UndefinedVariableConstrain

# Importable heads are COMPUTED from the running environment (the same env the
# eval harness executes tests in, so a reserved import really resolves --
# method.pdf sec.5's soundness framing). Two layers:
#   * alias map: conventions like np -> "import numpy as np" that no
#     environment scan can derive (edit DEFAULT_IMPORT_MAP to extend).
#   * computed set: every importable top-level module (stdlib + site-packages),
#     enumerated once -- jedi does the same sys.path scan, so no LSP round-trip
#     is needed. A head in this set reserves a plain "import {name}".
DEFAULT_IMPORT_MAP = {
    "np": "import numpy as np",
    "pd": "import pandas as pd",
    "plt": "import matplotlib.pyplot as plt",
}


def _importable_top_level_modules():
    import pkgutil
    import sys

    names = set(getattr(sys, "stdlib_module_names", ()))
    names.update(m.name for m in pkgutil.iter_modules())
    return {n for n in names if not n.startswith("_")}


class ImportPrefixedLSP:
    """Wrap an LSP so every query sees the reserved imports prepended, with
    terminal indices / expression spans shifted accordingly."""

    def __init__(self, lsp, prefix_tokens_fn):
        self._lsp = lsp
        self._prefix = prefix_tokens_fn

    def get_variables_from_terminals(self, terminals, term_idx):
        pre = self._prefix()
        return self._lsp.get_variables_from_terminals(pre + terminals, term_idx + len(pre))

    def module_status(self, terminals, base_expr_span):
        pre = self._prefix()
        k = len(pre)
        return self._lsp.module_status(
            pre + terminals, (base_expr_span[0] + k, base_expr_span[1] + k)
        )

    def member_names(self, terminals, base_expr_span, prefix=""):
        pre = self._prefix()
        k = len(pre)
        return self._lsp.member_names(
            pre + terminals, (base_expr_span[0] + k, base_expr_span[1] + k), prefix=prefix
        )

    def __getattr__(self, name):
        return getattr(self._lsp, name)


class AutoImportConstrain(UndefinedVariableConstrain):
    _wants_qual = True

    def __init__(self, incremental_parser, lsp_factory=None, import_map=None):
        self.import_map = dict(DEFAULT_IMPORT_MAP if import_map is None else import_map)
        # Every importable top-level module, enumerated ONCE here (the set
        # cannot change mid-run): frozenset for exact checks, sorted list for
        # bisect prefix queries on forming names.
        self._importable_set = frozenset(_importable_top_level_modules())
        self._importable = sorted(self._importable_set)
        self.import_needed = {}  # name -> import statement, insertion-ordered
        super().__init__(incremental_parser, lsp_factory=lsp_factory)
        # Own queries also see the reservation (a reserved head is in scope for
        # every later check, e.g. a second bare `np` use).
        self.prefixed_lsp = ImportPrefixedLSP(self.lsp, self._prefix_tokens)

    def _reset_state(self):
        super()._reset_state()
        self.import_needed = {}

    def _prefix_tokens(self):
        return [Token("NAME", stmt + "\n") for stmt in self.import_needed.values()]

    def import_lines(self):
        return list(self.import_needed.values())

    def _get_variables_from_terminals(self, terminals, term_idx):
        pre = self._prefix_tokens()
        return super()._get_variables_from_terminals(pre + terminals, term_idx + len(pre))

    def _importable_prefix(self, prefix):
        import bisect

        i = bisect.bisect_left(self._importable, prefix)
        return i < len(self._importable) and self._importable[i].startswith(prefix)

    def _on_missing(self, name_check):
        if super()._on_missing(name_check):
            return True
        if not name_check.qual:
            return False
        name = name_check.target_name
        if name_check.allow_prefix:
            # still forming: viable while some alias or importable module
            # completes it (reservation waits for the full name)
            ok = any(key.startswith(name) for key in self.import_map) or self._importable_prefix(name)
            if ok:
                self._add_stat("auto_import_prefix_pass")
            return ok
        stmt = self.import_map.get(name)
        if stmt is None and name in self._importable_set:
            stmt = f"import {name}"
        if stmt is not None:
            if name not in self.import_needed:
                self.import_needed[name] = stmt
                self._add_stat("auto_import_reserved")
            return True
        return False
