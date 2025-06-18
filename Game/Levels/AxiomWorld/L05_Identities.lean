import Game.Metadata

World "AxiomWorld"
Level 5

Title "Identities"

variable {R : Type}
variable [CommRing R]

Introduction "Rings include a 0 and a 1 which are additive and multiplicative identities."

/-- 0 is an additive identity on the right -/
TheoremDoc add_zero as "add_zero" in "Ring"
/-- 0 is an additive identity on the left -/
TheoremDoc zero_add as "zero_add" in "Ring"
/-- 1 is an multiplicative identity on the right -/
TheoremDoc mul_one as "mul_one" in "Ring"
/-- 1 is an multiplicative identity on the left -/
TheoremDoc one_mul as "one_mul" in "Ring"

Statement (a : R) : (1 + 1) * a = a + a := by
  rw [right_distrib]
  rw [one_mul]

Conclusion "We will have to learn how to combine more axioms to prove more interesting statements."
