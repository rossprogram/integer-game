import Game.Metadata

World "AxiomWorld"
Level 4

Title "Distributivity"

variable {R : Type}
variable [CommRing R]

Introduction "Addition and multiplication are related via distributivity."

/-- Multiplication distributes over addition on the left -/
TheoremDoc left_distrib as "left_distrib" in "Ring"
/-- Multiplication distributes over addition on the right -/
TheoremDoc right_distrib as "right_distrib" in "Ring"

NewTheorem left_distrib right_distrib

Statement ( a b : R ) : (a + b) * (a + b) = a * a + b * a + (a * b + b * b) := by
  rw [left_distrib]
  rw [right_distrib]
  rw [right_distrib]

Conclusion "We still need to think about 0 and 1 in rings."
