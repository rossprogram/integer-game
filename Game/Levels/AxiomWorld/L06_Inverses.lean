import Game.Metadata

World "AxiomWorld"
Level 6

Title "Inverses"

variable {R : Type}
variable [CommRing R]

Introduction "Every element of a ring has an additive inverse."

theorem exist_add_inv (a : R) : (∃ (b : R), a + b = 0) := by
  use -a
  exact add_right_neg a

NewTactic rw

/-- Every element has an additive inverse -/
TheoremDoc exist_add_inv as "exist_add_inv" in "Ring"

Statement (a : R) : ∃ b, (a + a) + b = 0 := by
  exact exist_add_inv (a+a)

Conclusion "We will have to learn how to combine more axioms to prove more interesting statements."
