# Bowling Game - Problem Description

## Objective
The goal is to implement a scoring system for a game of bowling. The solution must be developed incrementally using Test-Driven Development (TDD) principles, ensuring that all possible scenarios are tested and handled correctly.

## Game Rules

1. **Game Structure:**
   - A game of bowling consists of 10 frames.
   - In each frame, the player has two chances to knock down 10 pins.
   - The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares.

2. **Strikes:**
   - A strike occurs when a player knocks down all 10 pins with the first roll in a frame.
   - The score for a strike is 10 plus the total of the pins knocked down in the next two rolls.
   - The frame ends after the first roll.

3. **Spares:**
   - A spare occurs when a player knocks down all 10 pins in two rolls of a frame.
   - The score for a spare is 10 plus the number of pins knocked down in the next roll.

4. **Final Frame (10th Frame):**
   - If the player rolls a strike or a spare in the 10th frame, they are allowed to roll extra balls to complete the frame.
   - A spare in the 10th frame grants one additional roll.
   - A strike in the 10th frame grants two additional rolls.
   - No additional bonuses are awarded after the 10th frame.

5. **Perfect Game:**
   - A perfect game is achieved by rolling 12 consecutive strikes, resulting in a total score of 300.

## Scenarios to Implement

1. **Gutter Game:** All rolls knock down 0 pins. The score should be 0.
2. **Game of All Ones:** Each roll knocks down 1 pin. The score should be 20.
3. **Spare:** A frame where the player knocks down all 10 pins in two rolls (e.g., 5 + 5), followed by a score on the next roll. The score should correctly add the next roll's pins.
4. **Strike:** A frame where the player knocks down all 10 pins on the first roll, followed by adding the next two rolls' scores as a bonus.
5. **Perfect Game:** A game consisting of 12 strikes, resulting in the maximum score of 300.


## End Goal
The system should be able to accurately calculate the score for any valid game of bowling, covering all possible cases including spares, strikes, and edge cases like the perfect game.
