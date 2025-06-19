import Game.Metadata

World "RingWorld"
Level 4

Title "zero times anything"

Introduction "Using the axioms, we prove zero times anything vanishes."

variable {R : Type}
variable [CommRing R]

NewTheorem add_left_cancel add_right_cancel

NewTactic swap exact

Statement ( a : R ) : 0 * a = 0 := by
  apply add_left_cancel
  swap
  exact (0 * a)
  rw [add_zero]
  rw [←right_distrib]
  rw [add_zero]

Conclusion "You have just proved `zero_mul`"
