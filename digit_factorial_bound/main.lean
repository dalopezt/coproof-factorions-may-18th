import Definitions

theorem digit_factorial_bound (n : ℕ) (hn : 1 ≤ n) :
    digitFactorialSum n ≤ 362880 * (Nat.log 10 n + 1) := by
  sorry
