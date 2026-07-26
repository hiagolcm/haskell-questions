module Solution
  ( summaryStats
  , average
  , rangeSpan
  , sumOfSquaresUpTo
  , productOfEvens
  ) where

-- See description.md for the spec of each function.

summaryStats :: [Int] -> (Int, Int, Int, Int)
summaryStats xs = (sum xs, product xs, maximum xs, minimum xs)

average :: [Int] -> Double
average xs = fromIntegral(sum xs) / fromIntegral(length xs)

rangeSpan :: [Int] -> Int
rangeSpan xs = maximum xs - minimum xs

sumOfSquaresUpTo :: Int -> Int
sumOfSquaresUpTo n = sum [x*x | x <- [1.. n]] 

productOfEvens :: [Int] -> Int
productOfEvens xs = product [x | x <- xs, even x]
