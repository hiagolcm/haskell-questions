module Solution
  ( sumOfThreeFns
  , tripleResult
  ) where

-- Reinforces exercise 04: chaining <$> with more than one <*> ("applicative
-- style") to combine three functions sharing the same input.
-- See description.md for the spec of each function.

sumOfThreeFns :: (Int -> Int) -> (Int -> Int) -> (Int -> Int) -> Int -> Int
sumOfThreeFns f g h = undefined

tripleResult :: (Int -> Int) -> (Int -> Int) -> (Int -> Int) -> Int -> (Int, Int, Int)
tripleResult f g h = undefined
