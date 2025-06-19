import Game.Metadata

World "AxiomWorld"
Level 2

Title "Multiplication"

variable {R : Type}
variable [CommRing R]

Introduction "Now we check some facts about multiplication."

/-- associativity of multiplication in a ring -/
TheoremDoc mul_assoc as "mul_assoc" in "Ring"

/-- commuativity of multiplication in a ring -/
TheoremDoc mul_comm as "mul_comm" in "Ring"

NewTheorem mul_assoc mul_comm

Statement ( a b : R ) : a * b = b * a := by
  rw [mul_comm]

Conclusion "Let's put multiplication and addition together."
