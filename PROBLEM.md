# JSP-000404 — What is the largest angle that every planar set of a prescribed number of points must determine?

- **id:** JSP-000404
- **title:** What is the largest angle that every planar set of a prescribed number of points must determine?
- **area:** Geometry
- **status:** Solved
- **Lean:** No (formalization target)
- **Eligible / Claim:** No / Unavailable
- **role:** Formalize path (Solved + Lean=No)

## Statement

What is the largest angle that every planar set of a prescribed number of points must determine?

## Catalog

- Anchor: https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0401-0500.md#JSP-000404
- Awards home: https://github.com/TheJustinSunPrize/awards

## Primary papers

- Sendov (Se92), C. R. Acad. Bulgare Sci. (1992)
- Sendov (Se93), C. R. Acad. Bulgare Sci. (1993) — definitive resolution
- Szekeres (Sz41), Amer. J. Math. (1941)
- Erdős–Szekeres (ErSz60)

## Accepted mathematical answer

Let α_N be the supremum of angles α∈[0,π] such that every planar N-point set determines some angle ≥α (Blumenthal). Sendov (Se93) proved the definitive formula: for n≥3, α_N = π(1−1/n) whenever 2^{n−1}+2^{n−3} < N ≤ 2^n, and α_N = π(1−1/(2n−1)) whenever 2^{n−1} < N ≤ 2^{n−1}+2^{n−3}. (Se92 disproved the Erdős–Szekeres conjecture that α_N=π(1−1/n) on whole dyadic ranges.)

## Success criteria

- `lake build` succeeds
- Zero `sorry` / `admit`
- Named headline theorem(s) in ACCEPTANCE.md proved
