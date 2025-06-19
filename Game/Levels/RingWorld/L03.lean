import Game.Metadata

World "RingWorld"
Level 3

Title "add_right_cancel"

Introduction "Using the axioms, we prove that cancellation is possible."

variable {R : Type}
variable [CommRing R]

NewTactic rcases congr «have»

Statement ( a b b' : R ) : b + a = b' + a → b = b' := by
  intro h
  rcases exist_add_inv a
  have : b + (a + w) = b' + (a + w) := by
    rw [←add_assoc]
    rw [←add_assoc]
    congr
  rw [h_1] at this
  rw [add_zero] at this
  rw [add_zero] at this
  apply this

Conclusion "You have just proved `add_right_cancel`"
