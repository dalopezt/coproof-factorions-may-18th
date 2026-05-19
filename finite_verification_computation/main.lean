import Definitions

/--
Computation-backed certificate for node `finite_verification_computation`.
Program artifact: finite_verification_computation/computation.txt
Evidence artifact: finite_verification_computation/evidence.json
Evidence hash: aa77c7fe6c2cf0af
Target: {"expected_factorions": [1, 2, 145, 40585]}
-/
axiom finite_verification_computation : {n : ℕ | digitFactorialSum n = n} = {1, 2, 145, 40585}
