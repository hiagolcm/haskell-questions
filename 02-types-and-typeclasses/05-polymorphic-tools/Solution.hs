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
positions v xs = [idx | (idx, x) <- zip [0..] xs, x == v]

sortPair :: Ord a => a -> a -> (a, a)
sortPair a b = if compare a b == LT then (a, b) else (b, a)

clampList :: Ord a => a -> a -> [a] -> [a]
clampList lo hi xs = [
  if x < lo then lo
  else if x > hi then hi
  else x 
  | x <-xs ]

pairWithEq :: Eq a => a -> [a] -> [(a, Bool)]
pairWithEq v xs = [(x, v == x) | x <- xs]
