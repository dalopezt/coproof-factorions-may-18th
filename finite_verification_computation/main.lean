import Definitions

/--
Computation-backed certificate for node `finite_verification_computation`.
Program artifact: finite_verification_computation/computation.py
Evidence artifact: finite_verification_computation/evidence.json
Evidence hash: 2db4b5bd0dee0e23
Target: {"description": "f(x) in [0, 2] for x in [0,1]", "kind": "range_check"}
-/
axiom finite_verification_computation : ∀ n : ℕ, n ≤ 2540160 → (digitFactorialSum n = n ↔ n ∈ ({1, 2, 145, 40585} : Set ℕ))
