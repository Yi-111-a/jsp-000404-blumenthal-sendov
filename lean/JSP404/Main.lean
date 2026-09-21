import Mathlib.Data.Nat.Log
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import JSP404.Defs

/-!
# JSP-000404 — Blumenthal / Sendov minimax angle

Sendov Se93 definitive formula for Blumenthal's α_N.
-/

namespace JSP404

open Real

/-- Sendov (Se93) full piecewise determination of α_N. -/
theorem sendov_minimax_angle :
    ∀ n : ℕ, 3 ≤ n →
      (∀ N : ℕ, 2 ^ (n - 1) + 2 ^ (n - 3) < N → N ≤ 2 ^ n →
        alpha N = Real.pi * (1 - (n : ℝ)⁻¹)) ∧
      (∀ N : ℕ, 2 ^ (n - 1) < N → N ≤ 2 ^ (n - 1) + 2 ^ (n - 3) →
        alpha N = Real.pi * (1 - ((2 * n - 1 : ℕ) : ℝ)⁻¹)) := by
  intro n hn
  constructor
  · -- Upper band: `2^(n-1) + 2^(n-3) < N ≤ 2^n`.
    intro N hlo hhi
    have h1 : 2 ^ (n - 1) < N := lt_of_le_of_lt (Nat.le_add_right _ _) hlo
    have hc : Nat.clog 2 N = n := clog_two_eq h1 hhi
    unfold alpha
    rw [hc, if_pos hlo]
  · -- Lower band: `2^(n-1) < N ≤ 2^(n-1) + 2^(n-3)`.
    intro N hlo hhi
    have h2n : N ≤ 2 ^ n := by
      have hle : 2 ^ (n - 3) ≤ 2 ^ (n - 1) :=
        Nat.pow_le_pow_right (by decide) (by omega)
      have he : 2 ^ n = 2 ^ (n - 1) + 2 ^ (n - 1) := by
        conv_lhs => rw [← Nat.sub_add_cancel (show 1 ≤ n by omega), pow_succ, mul_two]
      omega
    have hc : Nat.clog 2 N = n := clog_two_eq hlo h2n
    unfold alpha
    rw [hc, if_neg (not_lt.2 hhi)]

end JSP404
