import Definitions
theorem growth_dominates (n : ℕ) (hn : 2540160 < n) :
    362880 * (Nat.log 10 n + 1) < n := by
  have h_cases : Nat.log 10 n ≤ 6 ∨ 7 ≤ Nat.log 10 n := by omega
  rcases h_cases with h_le | h_ge
  · -- Case 1: Nat.log 10 n ≤ 6
    calc 362880 * (Nat.log 10 n + 1)
      _ ≤ 362880 * (6 + 1) := by omega
      _ = 2540160          := by rfl
      _ < n                := hn
  · -- Case 2: Nat.log 10 n ≥ 7
    have h_n_pos : n ≠ 0 := by omega
    -- Built-in Mathlib bound: 10^(log_10 n) <= n
    have h_pow_le : 10 ^ (Nat.log 10 n) ≤ n := Nat.pow_log_le_self 10 h_n_pos
    
    -- Inline proof for the exponential domination bound using a local 'have'
    have h_exp : ∀ d : ℕ, 362880 * (d + 7 + 1) < 10 ^ (d + 7) := by
      intro d
      induction d with
      | zero => 
        -- Base case: 362880 * 8 < 10^7
        norm_num
      | succ d ih =>
        -- Inductive step: d -> d + 1
        have hd : d + 1 + 7 = d + 7 + 1 := by omega
        rw [hd, Nat.pow_succ]
        -- Generalize the exponential term into a standard variable X for omega
        generalize 10 ^ (d + 7) = X at ih ⊢
        omega
        
    -- Reconstruct our variable k = Nat.log 10 n
    have hk_eq : Nat.log 10 n = (Nat.log 10 n - 7) + 7 := by omega
    
    -- Instantiate the inline bound for our specific offset
    have h_bound := h_exp (Nat.log 10 n - 7)
    
    -- Rewrite the offset back into standard Nat.log 10 n
    rw [← hk_eq] at h_bound
    
    -- Combine the exponential bound with the logarithm bound linearly
    omega