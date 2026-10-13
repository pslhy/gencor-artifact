# POPL27 ↔ implementation correspondence

This package implements the **attribute-LR(1) parsing** model of the POPL27 paper
(`tools/popl27/attrparse.tex`). This file maps the formalism to the code so a
reader of the paper can navigate `lark/semantic/` directly. Names and procedure
docstrings deliberately echo the paper.

The implementation is an *optimized realization* of the formalism, not a literal
transcription; the differences (all behaviour-preserving) are listed at the end.

---

## Data model

| Formalism | Code (`lark/semantic/`) | Notes |
|---|---|---|
| stack element `⟨I \| cands⟩` | `values.AttributeState` | `state` = item `I`; `attrs`/`virtuals` hold `cands` |
| candidate `(ι, σ, Λ)` | `values.Candidate(inh, syn, source)` | `inh`=`ι`, `syn`=`σ`, `source`=`π=last(Λ)`; full `Λ` via `parent_links` |
| candidate set `cands` | `values.CandidateSet` | per-element candidate collection |
| inherited record `ι` | `Candidate.inh` (`values.AttrRecord`) | maps `a ∈ Inh(X)` → value |
| synthesized record `σ` | `Candidate.syn` (`values.AttrRecord`) | maps `a ∈ Syn(X)` → value, `⊥` until reduced |
| parent chain `Λ = [π₁..π_d]` | `CandidateSet.parent_links` | **cons-cell edges**, not full chains (see footnote in paper) |
| dotted rule `π = [X₀→α•Xβ]` | `values.RulePtrKey(rule, ptr)` / `values.ParentSource` | `ParentSource` wraps the dotted rule as candidate provenance |
| `prod(π)` | `RulePtrKey.rule` | the production under `π` |
| `last(Λ)` | `Candidate.source` | immediate parent |
| empty chain `·` (root) | `values.RootSource` / `values.UnanchoredSource` | base cases of `Λ` |
| `Parents(I, X)` | `AttributeFlow._available_keys_for_symbol`, state-map keys | dotted rules motivating `X` in `I` |
| lineage-prefix order `Λ ⊑ Λ*` | `AttributeFlow._prune` (vertex reachability) | realized over `parent_links` in vertex space |
| `Dead` (refuted cells) | refine refutation / vertex invalidation in `_prune` | cons-cell marking, filtered lazily |

## Procedures (`semantic/stack.py: AttributeFlow`, `semantic/runtime.py`, `semantic/evaluator/`)

| Formalism | Code | Notes |
|---|---|---|
| **Init** | `AttributeFlow._init` | push predicted nonterminals' inherited candidates (stored as `virtuals`) |
| **Shift** / goto | `AttributeFlow.transition` | `= Init(Prune(…))`; builds the anchor, then `_init`, then `_prune` |
| **Reduce** | `AttributeFlow.reduce_from_stack` → `evaluator.reduce` | prune RHS by `prod(last(Λ))=p`, then evaluate `σ_{X0}` via `Args` |
| **Prune** | `AttributeFlow._prune` | refute lower-stack lineages not `⊑` an anchor chain |
| **Args** | `evaluator.base._candidate_combinations` + `CandidateSet.compatible_with_source` | parent-`ι` from the fixed LHS candidate; siblings filtered by chain `Λ_{X0}·[ρ]` |
| inherited eval in Init | `runtime.compute_child_inherited` → `evaluator.apply_child_inherited` | one inherited record per (parent candidate, Args combination) |
| `lex_a(t)` (Shift terminal syn) | `runtime.compute_terminal_attrs` | terminal synthesized record `σ_t` |
| **Accept** | parser end; final `σ` of `S` | the single start candidate's synthesized record |

### Transition wrapping
The paper nests `Shift = Init(Prune(γ·⟨I|cands⟩·⟨I'|cands_t⟩), I')` and
`Reduce-step = Init(Prune(Reduce(…)), I_p)`. In `transition()` this is:
build anchor → `_init` (Init) → `_prune` (Prune). The code order is Init-then-Prune,
the **reverse** of the paper's Prune-inside-Init. Both orders give the same result
because refuted candidates are filtered lazily at read time (Dead-cell marking),
not because the phases are independent — `_init` does read lower-stack
parent/sibling candidates that `_prune` later refutes, but reading a
not-yet-refuted candidate is harmless. Swapping to the paper's Prune-then-Init
order was measured byte-identical and perf-neutral (it only shifts work from Init
to Prune: Prune ~−50%, Init ~+42%, sum ~unchanged), since the A4–A7 memos already
absorb the recomputation either way.

---

## Where the implementation optimizes / differs (all behaviour-preserving)

- **`Λ` as cons-cells.** `parent_links` stores one-step parent references, never
  full chains (chains can be exponentially many). `Λ ⊑ Λ*` and `Args`'s chain
  filter are computed over these edges. (Paper footnote.)
- **Prune in vertex space, lazily.** `_prune` projects candidates onto state
  vertices `(rule, dot)` and walks reachability from the anchor instead of
  comparing chains candidate-by-candidate; refuted lineages are filtered at read
  time. Soundness target: `Live ⊆ Keep`.
- **Init elements as `virtuals`.** Predicted nonterminals started in a state are
  stored as `virtuals` on the top `AttributeState` rather than as separate stack
  entries; the correspondence to "one element per started nonterminal" is exact.
- **`narrow_for_transition` is NOT Prune.** It is an implementation-only
  pre-transition narrowing of the top element; the formal Prune is `_prune`.
- **Performance memos (A4–A7).** `apply_child_inherited` / `to_candidate_set`
  memoize value-equal evaluations and structurally-equal materializations within
  one parse (action-local, no capacity cap). These avoid recomputation only; they
  preserve the exact candidate sets and refute outcomes.

## Finiteness boundary (LR-attributed)
The algorithm evaluates an L-attributed grammar exactly when every reachable
candidate set stays finite (the **LR-attributed** class). A non-copy inherited
rule around a prediction cycle (e.g. left recursion appending to an inherited
string) makes `Init` diverge — see the closing example in `attrparse.tex`.
