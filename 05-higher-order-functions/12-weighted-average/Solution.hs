module Solution (weightedAverage) where

weightedAverage :: [Double] -> [Double] -> Double
weightedAverage values weights = weightedSum / sum weights
    where weightedSum = sum $ zipWith (\x y -> x * y) values weights

-- Implement the single function described in description.md (weightedAverage).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check weightedAverage, so make sure it is defined at
-- the top level with exactly the signature shown.
