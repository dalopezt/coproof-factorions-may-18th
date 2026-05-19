import «digit_factorial_bound».«main»
import «growth_dominates».«main»
import Definitions
theorem upper_bound : ∀ n : ℕ, n > 2540160 → digitFactorialSum n < n := by
  intro n hn
  have hn_pos : 1 ≤ n := by omega
  have hbound : digitFactorialSum n ≤ 362880 * (Nat.log 10 n + 1) :=
    digit_factorial_bound n hn_pos
  have hgrow : 362880 * (Nat.log 10 n + 1) < n :=
    growth_dominates n hn
  omega
