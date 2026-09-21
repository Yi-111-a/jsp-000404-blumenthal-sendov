# JSP-000404 — Blumenthal / Sendov minimax angle (Lean 4)

Formalization of Sendov's (Se93) definitive answer to:

> What is the largest angle that every planar set of a prescribed number
> of points must determine?

For `n ≥ 3`, Blumenthal's constant `α_N` satisfies

- `α_N = π (1 − 1/n)`      when `2^(n−1) + 2^(n−3) < N ≤ 2^n`,
- `α_N = π (1 − 1/(2n−1))` when `2^(n−1) < N ≤ 2^(n−1) + 2^(n−3)`.

`JSP404.alpha N` is *defined* as the piecewise Sendov value keyed on
`n = Nat.clog 2 N` (the unique `n` with `2^(n−1) < N ≤ 2^n`), and
`JSP404.sendov_minimax_angle` proves the piecewise evaluation on both bands.

## Layout

- `JSP404/Defs.lean` — `alpha` definition + `Nat.clog` band lemma.
- `JSP404/Main.lean` — headline theorem `sendov_minimax_angle`.
- `JSP404.lean` — root module (imports the two above).

Imports are intentionally minimal (`Mathlib.Data.Nat.Log`,
`Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic`) rather than
`import Mathlib`, to keep the build footprint small.

## Build

Prerequisites: [elan](https://github.com/leanprover/elan). The pinned
toolchain (`lean-toolchain`: `leanprover/lean4:v4.34.0`) and mathlib4
`v4.34.0` are fetched automatically on first build.

```sh
lake build
```

Headline theorem: `JSP404.sendov_minimax_angle` (see `../ACCEPTANCE.md`
for the prize-ready checklist).
