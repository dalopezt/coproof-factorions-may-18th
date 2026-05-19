import Definitions

/--
Computation-backed certificate for node `finite_verification_computation`.
Program artifact: finite_verification_computation/computation.txt
Evidence artifact: finite_verification_computation/evidence.json
Evidence hash: a345044e01e8f8b7
Target: {"expected": [1, 2, 145, 40585]}
-/
axiom finite_verification_computation : ∀ n : ℕ, n ≤ 2540160 → (digitFactorialSum n = n ↔ n ∈ ({1, 2, 145, 40585} : Set ℕ))
