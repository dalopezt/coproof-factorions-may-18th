import «upper_bound».«main»
import «finite_verification».«main»
import Definitions
theorem root : {n : ℕ | digitFactorialSum n = n} = {1, 2, 145, 40585} := by
  ext n
  simp only [Set.mem_setOf_eq, Set.mem_insert_iff, Set.mem_singleton_iff]
  constructor
  · intro h
    by_cases hn : n > 2540160
    · have hlt := upper_bound n hn
      omega
    · push_neg at hn
      exact (finite_verification n hn).mp h
  · intro h
    by_cases hn : n > 2540160
    · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at h
      omega
    · push_neg at hn
      exact (finite_verification n hn).mpr h
