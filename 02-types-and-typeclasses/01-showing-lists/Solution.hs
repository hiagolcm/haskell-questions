module Solution
  ( showEach
  , numbered
  , showSquares
  , showPairs
  ) where

-- New: show. Reuses comprehensions, zip, ranges, tuples from chapter 1.
-- See description.md for the spec of each function.

showEach :: [Int] -> [String]
showEach xs = [show x | x <- xs]

numbered :: [String] -> [String]
numbered ws = [show idx ++ ". " ++ w | (idx, w) <- zip [1..] ws]

showSquares :: Int -> [String]
showSquares n = [show (x*x) | x <- [1..n]]

showPairs :: [(Int, Int)] -> [String]
showPairs ps = [show p | p <- ps]
