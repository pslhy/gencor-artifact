# TCG type-error vs gencor(type) success

41 cases where **TCG produced a (non-timeout) TYPE compile error** while our
**gencor type-mode produced a compile-error-free success** on the same (model, seed, task).

- `TCG/`    — TCG tool output (hmts_erruv/tcg-s*)
- `GENCOR/` — gencor type-mode output (ts-tcd-vcompileerr/type-cerr-s*)
- matching filenames `{model}_s{seed}_{bench}_{task}.ts(.json)` pair the two systems per case.
- `manifest.tsv` — list + the TCG TypeScript error codes.

Compile status was recomputed via the TS compiler API (not stored diagnostics).
