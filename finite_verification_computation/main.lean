import Definitions

/--
Computation-backed certificate for node `finite_verification_computation`.
Program artifact: finite_verification_computation/computation.txt
Evidence artifact: finite_verification_computation/evidence.json
Evidence hash: 6d6cb099c2439dcf
Target: {"expected": [1, 2, 145, 40585], "upper_bound": 2540160}
-/
axiom finite_verification_computation : ∀ n : ℕ, n ≤ 2540160 → (digitFactorialSum n = n ↔ n ∈ ({1, 2, 145, 40585} : Set ℕ))
