module Solution
  ( addVectors
  , first3
  , third3
  , swapEnds
  , labelValue
  ) where

-- New: matching tuple components in the parameter list.
-- Reuses show from chapter 2.
-- See description.md for the spec of each function.

addVectors :: (Int, Int) -> (Int, Int) -> (Int, Int)
addVectors (x, y) (a, b) = (x+a, y+b)

first3 :: (a, b, c) -> a
first3 (a, _, _) = a

third3 :: (a, b, c) -> c
third3 (_, _, c) = c

swapEnds :: (a, b, c) -> (c, b, a)
swapEnds (a, b, c) = (c, b, a)

labelValue :: (String, Int) -> String
labelValue (name, value) = name ++ "=" ++ show(value)
