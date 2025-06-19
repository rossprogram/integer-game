import Game.Metadata

World "RingWorld"
Level 2

Title "Substitution"

Introduction "One of our rules of logic is substitution."

variable {R : Type}
variable [CommRing R]

NewTactic rfl

Statement ( a b b' : R ) : b = b' → a + b = a + b' := by
  intro h
  have : a + b = a + b := by rfl
  rw [h]

Conclusion ""
