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
vsThreshold t xs = undefined

countBelow :: Int -> [Int] -> Int
countBelow t xs = undefined

cmpSymbol :: Int -> Int -> String
cmpSymbol a b = undefined

extremesCompare :: [Int] -> Ordering
extremesCompare xs = undefined
