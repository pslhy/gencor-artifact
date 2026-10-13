# GenCor

GenCor checks syntax, name, and type constraints during LLM code generation.
Use the artifact root's `./setup.sh` to prepare dependencies and `./gencor-run`
to select the installed environment automatically.

## Languages and grammars

`-l` accepts `python`, `ocaml`, or `typescript`. Each language has a
`grammars/<language>_grammar.lark` and `<language>_semantics.py` pair.

| Language | Grammar |
| --- | --- |
| Python | Based on `python_ummac_v5`: names, module members, auto-import; no forward-global markers |
| OCaml | Based on `ocaml_comment_ummac_v3`: names, module members, symbol kinds |
| TypeScript | Based on `typescript_subset_sem_v3`: names, expression types, function returns |

Grammar bodies retain their original rules; imported semantic rules are
consolidated into each language's semantics file. OCaml name lookup uses the
same grammar without semantic rules to build its auxiliary syntax tree.
The bundled sem-lark source is accessed through `lark -> sem-lark/lark`.
Its reference commit `41f65ed` accumulates completed symbol spans even when
those symbols have no additional attribute values.

## Runtime

Core Python dependencies are listed in `requirements.txt`. Python analysis
uses ScopeLens; OCaml uses ocaml-lsp-server, the OCaml compiler, and Merlin;
TypeScript uses Node and the TypeScript package.

The launcher reads the artifact's `.gencor/runtime.json`. Set
`GENCOR_RUNTIME_CONFIG` to use another runtime configuration. Backend paths
can also be supplied through `SCOPELENS_LANGSERVER`, `OCAMLLSP_PATH`,
`OCAMLMERLIN_PATH`, `OCAMLC_PATH`, `GENCOR_NODE_PATH`, and
`GENCOR_TYPESCRIPT_PATH`. Directly invoking `python main.py` from this directory
requires an appropriate Python environment; `main.py` does not switch it.

## Examples

Run from the artifact root, using the included datasets:

```bash
./gencor-run -m Qwen/Qwen2.5-Coder-7B-Instruct -l python \
  -c uv_open ummac ai --chat -b bigcodebench-hard -x demo -s 0 -d 0

./gencor-run -m Qwen/Qwen2.5-Coder-7B-Instruct -l ocaml \
  -c uv_open ummac kind --chat -b all_in_one_v2.4 -x demo -s 0 -d 0

./gencor-run -m Qwen/Qwen2.5-Coder-7B-Instruct -l typescript \
  -c sem_type --chat -b humaneval-mbpp-ts -x demo -s 0 -d 0
```

`-c none` selects unconstrained generation. `policyB` and `uv_every` are name
checking variants; `sem_type_diag` uses TypeScript diagnostics. Name constraints
can be combined with `ummac`, `kind`, and `ai`. The `fg` option and implementation
remain, but the bundled Python v5 grammar does not produce its required markers.

`-s` selects the sampling/generate path. `-r` enables
error-feedback regeneration; `--resume` skips completed tasks. Consult `--help`
for all options. Output defaults to
`tools/gencor/output/<language>/<model>/<experiment>/<variant>/` relative to the
artifact root. Model, parser, and output caches are not distributed.

## Known limitations

- TODO: The OCaml name-lookup auxiliary parser was changed from `ocaml_comment`
  to v3. Equivalence of completed type-annotation removal, incomplete match-arm
  removal, and intermediate completion queries still needs review.
- Retries with top-k/top-p filtering can select previously rejected candidates.
- The `syntax` generation connection is incomplete; candidate checking for
  grammars without an indenter makes no additional decision except at EOS.
- Some type counters differ from the original type implementation. Consolidating
  duplicate attribute-query APIs remains deferred.
