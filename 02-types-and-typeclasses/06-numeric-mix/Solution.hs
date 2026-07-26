module Solution
  ( toDoubles
  , meanOf
  , averages
  , distances
  , circleAreas
  ) where

-- New: fromIntegral and Floating (pi, sqrt).
-- Reuses comprehensions, nested lists, tuples, sum/length from chapter 1.
-- See description.md for the spec of each function.

toDoubles :: [Int] -> [Double]
toDoubles xs = [fromIntegral x | x <- xs]

meanOf :: [Int] -> Double
meanOf xs = fromIntegral (sum xs) / fromIntegral (length xs)

averages :: [[Int]] -> [Double]
averages gs = [meanOf g | g <- gs]

distances :: [(Double, Double)] -> [Double]
distances ps = [sqrt (x*x + y*y) | (x,y) <- ps]

circleAreas :: [Double] -> [Double]
circleAreas rs = [pi * r*r | r <- rs]
