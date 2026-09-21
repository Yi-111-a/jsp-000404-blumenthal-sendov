# ACCEPTANCE — JSP-000404 (prize-ready gate)

## Catalog

- Anchor: https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0401-0500.md#JSP-000404
- Awards CONTRIBUTING: https://github.com/TheJustinSunPrize/awards/blob/main/CONTRIBUTING.md

## Exact original question (English)

> What is the largest angle that every planar set of a prescribed number of points must determine?

The accepted resolution: Let α_N be the supremum of angles α∈[0,π] such that every planar N-point set determines some angle ≥α (Blumenthal). Sendov (Se93) proved the definitive formula: for n≥3, α_N = π(1−1/n) whenever 2^{n−1}+2^{n−3} < N ≤ 2^n, and α_N = π(1−1/(2n−1)) whenever 2^{n−1} < N ≤ 2^{n−1}+2^{n−3}. (Se92 disproved the Erdős–Szekeres conjecture that α_N=π(1−1/n) on whole dyadic ranges.)

## Required Lean theorem name(s) (FULL statement)

| Lean name | Intended statement |
|---|---|
| `sendov_minimax_angle` | Sendov's determination of α_N (Blumenthal minimax angle): for integers n≥2, α_N = π(1−1/n) when 2^{n−1}+2^{n−3} < N ≤ 2^n, and α_N = π(1−1/(2n−1)) when 2^{n−1} < N ≤ 2^{n−1}+2^{n−3}. |

**Not sufficient for prize_ready:** weaker special cases, finite truncations, or intermediate lemmas alone.

## Checklist (all must pass)

- [ ] `lake build` succeeds in `lean/`
- [ ] Zero `sorry` / `admit` in all `*.lean` (excluding `.lake`)
- [ ] `#print axioms` on headline theorem(s) shows only standard axioms
- [ ] Public repo HEAD is a full 40-character commit SHA
- [ ] README documents build instructions
- [ ] `formalization.yaml` and/or `ATTRIBUTION.md` name `Yi-111-a` / operators
- [ ] Named headline theorem(s) above exist and are proved

## Harness rule

`prize_ready=true` **only** when every checklist item passes **and** the named headline theorem(s) exist and are proved.
