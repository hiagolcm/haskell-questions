module Solution
  ( withCode
  , rankAll
  , topItems
  , showRanked
  ) where

-- Integrative: Enum/zip, compare/maximum, Ord filtering, show, tuples,
-- comprehensions -- all together.
-- See description.md for the spec of each function.

withCode :: [Int] -> [(Char, Int)]
withCode xs = zip ['A'..] xs

rankAll :: [Int] -> [Ordering]
rankAll xs = [compare x (maximum xs) | x <- xs]

topItems :: Int -> [(String, Int)] -> [String]
topItems t ps = [ c | (c, v) <- ps, v >= t]

showRanked :: [(String, Int)] -> [String]
showRanked ps = [name ++ ": " ++ show value | (name, value) <- ps]
