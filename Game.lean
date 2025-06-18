import Game.Levels.AxiomWorld

-- Here's what we'll put on the title screen
Title "Ross Game"
Introduction
"
This is an introduction to Lean for the participants of the Ross Mathematics Program.
"

Info "
https://github.com/rossprogram/integer-game
"

/-! Information to be displayed on the servers landing page. -/
Languages "English"
CaptionShort "Integer Game"
CaptionLong "Learn Lean at the Ross Mathematics Program"
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
