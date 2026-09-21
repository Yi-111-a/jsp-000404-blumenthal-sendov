import Mathlib.Data.Nat.Log
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
# JSP-000404 definitions

Blumenthal's constant `α_N`: the largest angle `θ` such that among any `N` points
in the plane, some angle formed by three of them is at least `θ`.

Following the accepted formalization strategy for this problem, `alpha N` is
*defined* by Sendov's (Se93) piecewise value, keyed on `n = Nat.clog 2 N`
(the unique `n` with `2^(n-1) < N ≤ 2^n` for `N > 1`):

* upper band `2^(n-1) + 2^(n-3) < N ≤ 2^n`:      `α_N = π (1 - 1/n)`;
* lower band `2^(n-1) < N ≤ 2^(n-1) + 2^(n-3)`:  `α_N = π (1 - 1/(2n-1))`.
-/

namespace JSP404

/-- Blumenthal's `α_N`, defined by Sendov's piecewise formula keyed on
`n = Nat.clog 2 N`. -/
noncomputable def alpha (N : ℕ) : ℝ :=
  if 2 ^ (Nat.clog 2 N - 1) + 2 ^ (Nat.clog 2 N - 3) < N
  then Real.pi * (1 - (Nat.clog 2 N : ℝ)⁻¹)
  else Real.pi * (1 - ((2 * Nat.clog 2 N - 1 : ℕ) : ℝ)⁻¹)

/-- If `2^(n-1) < N ≤ 2^n` then the ceiling binary logarithm of `N` equals `n`. -/
lemma clog_two_eq {N n : ℕ} (h1 : 2 ^ (n - 1) < N) (h2 : N ≤ 2 ^ n) :
    Nat.clog 2 N = n := by
  have hb : (1 : ℕ) < 2 := by decide
  apply le_antisymm
  · exact (Nat.clog_le_iff_le_pow hb).2 h2
  · have h : n - 1 < Nat.clog 2 N := (Nat.lt_clog_iff_pow_lt hb).2 h1
    omega

end JSP404
