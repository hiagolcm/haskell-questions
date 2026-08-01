module Solution
  ( sumFold
  , productFold
  , allFold
  , reverseFold
  , containsFold
  ) where

-- New: foldl (reduce left-to-right with an accumulator).
-- See description.md for the spec of each function.

sumFold :: [Int] -> Int
sumFold xs = foldl (\acc x -> acc + x) 0 xs

productFold :: [Int] -> Int
productFold xs = foldl1 (\acc x -> acc * x) xs

allFold :: [Bool] -> Bool
allFold xs = foldl1 (\acc x -> acc && x) xs

reverseFold :: [a] -> [a]
reverseFold xs = foldl (\acc x -> x : acc) [] xs

containsFold :: Eq a => a -> [a] -> Bool
containsFold target xs = foldl (\acc x -> if x == target then True else acc) False xs
