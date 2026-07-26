module Solution
  ( vsThreshold
  , countBelow
  , cmpSymbol
  , extremesCompare
  ) where

-- New: compare and the Ordering type (LT/EQ/GT).
-- Reuses comprehensions, show, head/last, if/then/else from chapter 1.
-- See description.md for the spec of each function.

vsThreshold :: Int -> [Int] -> [Ordering]
vsThreshold t xs = [compare x t | x <- xs]

countBelow :: Int -> [Int] -> Int
countBelow t xs = sum [1 | x <- xs, compare x t == LT]

cmpSymbol :: Int -> Int -> String
cmpSymbol a b = 
  show a ++
  (if compare a b == LT then " < "
  else if compare a b == GT then " > "
  else " = ")
  ++ show b

extremesCompare :: [Int] -> Ordering
extremesCompare xs = compare (head xs) (last xs)
