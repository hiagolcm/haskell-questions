module Solution
  ( positions
  , sortPair
  , clampList
  , pairWithEq
  ) where

-- New: type variables with Eq / Ord constraints.
-- Reuses zip, comprehensions, tuples, if/then/else from chapter 1.
-- See description.md for the spec of each function.

positions :: Eq a => a -> [a] -> [Int]
positions v xs = undefined

sortPair :: Ord a => a -> a -> (a, a)
sortPair a b = undefined

clampList :: Ord a => a -> a -> [a] -> [a]
clampList lo hi xs = undefined

pairWithEq :: Eq a => a -> [a] -> [(a, Bool)]
pairWithEq v xs = undefined
