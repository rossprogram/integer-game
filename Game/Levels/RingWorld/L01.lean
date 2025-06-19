import Game.Metadata

World "RingWorld"
Level 1

Title "Implications"

Introduction "We learn how to use the intro tactic."

variable {R : Type}
variable [CommRing R]

TacticDoc intro
NewTactic intro

Statement ( x y : R ) : x = y + y → x + x = y + y + y + y := by
  intro h
  rw [h]
  rw [←add_assoc]

Conclusion "We can use intro to prove conditional statements."
