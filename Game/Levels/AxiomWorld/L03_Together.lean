import Game.Metadata
import Mathlib.Algebra.Ring.Defs
import Mathlib.Tactic.Use

World "AxiomWorld"
Level 3

Title "Together"

variable {R : Type}
variable [CommRing R]

Introduction "Let's invoke multiple axioms to prove something."

Statement ( a b : R ) : a * b + c = c + b * a := by
  rw [mul_comm]
  rw [add_comm]

Conclusion "Next we'll combine multiplication and addition via distributivity."
