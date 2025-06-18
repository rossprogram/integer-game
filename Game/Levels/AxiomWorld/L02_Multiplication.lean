import Game.Metadata
import Mathlib.Algebra.Ring.Defs
import Mathlib.Tactic.Use

World "AxiomWorld"
Level 2

Title "Multiplication"

variable {R : Type}
variable [CommRing R]

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

/-- associativity of multiplication in a ring -/
TheoremDoc mul_assoc as "mul_assoc" in "Ring"

/-- commuativity of multiplication in a ring -/
TheoremDoc mul_comm as "mul_comm" in "Ring"

NewTheorem mul_assoc mul_comm

NewTactic rw

Statement ( a b : R ) : a * b = b * a := by
  rw [mul_comm]

Conclusion "This last message appears if the level is solved."
