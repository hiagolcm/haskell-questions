module Solution
  ( addPairs
  , keepClose
  , labelSigns
  , scalePairs
  ) where

-- New: lambdas (\x -> ...), including pattern-matching lambdas on tuples.
-- See description.md for the spec of each function.

addPairs :: [(Int, Int)] -> [Int]
addPairs ps = map (\ (x, y) -> x + y) ps

keepClose :: Int -> Int -> [Int] -> [Int]
keepClose target tolerance xs = filter (\x -> abs (x-target) <= tolerance) xs

labelSigns :: [Int] -> [String]
labelSigns xs = map (\x -> if x == 0 then "zero" else if x < 0 then "neg" else "pos") xs

scalePairs :: Int -> [(Int, Int)] -> [(Int, Int)]
scalePairs n ps = map (\(x,y) -> (x*n, y*n)) ps
