import Game.Metadata

World "AxiomWorld"
Level 6

Title "Inverses"

variable {R : Type}
variable [CommRing R]

Introduction "Every element of a ring has an additive inverse."

/-- close a goal by matching it against the conclusion of a given expression -/
TacticDoc apply
NewTactic apply

/-- Every element has an additive inverse -/
TheoremDoc exist_add_inv as "exist_add_inv" in "Ring"
NewTheorem exist_add_inv

Statement (a : R) : ∃ b, (a + a) + b = 0 := by
  apply exist_add_inv

Conclusion "We will have to learn how to combine more axioms to prove more interesting statements."
