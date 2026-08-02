module Solution where

data Direction = North | East | South | West deriving (Enum, Show, Eq)

turnRight :: Direction -> Direction
turnRight d = toEnum ((fromEnum d + 1) `mod` 4)

-- Define Direction as described in description.md, then implement the
-- single function turnRight.
