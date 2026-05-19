import Definitions
theorem digit_factorial_bound (n : ℕ) (hn : 1 ≤ n) :
    digitFactorialSum n ≤ 362880 * (Nat.log 10 n + 1) := by
  have hlen : (Nat.digits 10 n).length = Nat.log 10 n + 1 :=
    Nat.digits_len 10 n (by norm_num) (by omega)
  unfold digitFactorialSum
  rw [← hlen]
  have hbound : ∀ d ∈ (Nat.digits 10 n).map Nat.factorial, d ≤ 362880 := by
    intro d hd
    simp only [List.mem_map] at hd
    obtain ⟨x, hx, rfl⟩ := hd
    have hx_lt : x < 10 := Nat.digits_lt_base (by norm_num) hx
    interval_cases x <;> norm_num [Nat.factorial]
  have h1 := List.sum_le_card_nsmul ((Nat.digits 10 n).map Nat.factorial) 362880 hbound
  simp only [List.length_map, smul_eq_mul] at h1
  omega