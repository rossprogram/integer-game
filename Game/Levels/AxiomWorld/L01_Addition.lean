import Game.Metadata

World "AxiomWorld"
Level 1

Title "Addition"

Introduction "We begin by checking facts about addition."

variable {R : Type}
variable [CommRing R]

/-- associativity of addition in a ring -/
TheoremDoc  add_assoc as "add_assoc" in "Ring"

/-- commutativity of addition in a ring -/
TheoremDoc add_comm as "add_comm" in "Ring"

NewTheorem add_assoc add_comm

NewTactic rw

Statement ( x y : R ) : x + y = y + x := by
  rw [add_comm]

Conclusion "But rings do not only have addition: there is also multiplication!"
