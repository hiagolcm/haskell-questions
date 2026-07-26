module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Number Cruncher" checks
  where
    checks =
      [ check "summaryStats [1,2,3,4]" (summaryStats [1, 2, 3, 4]) (10, 24, 4, 1)
      , check "average [1,2,3,4]" (average [1, 2, 3, 4]) 2.5
      , check "average [2,2,2]" (average [2, 2, 2]) 2.0
      , check "rangeSpan [4,1,9,2]" (rangeSpan [4, 1, 9, 2]) 8
      , check "sumOfSquaresUpTo 3" (sumOfSquaresUpTo 3) 14
      , check "sumOfSquaresUpTo 1" (sumOfSquaresUpTo 1) 1
      , check "productOfEvens [1,2,3,4,5]" (productOfEvens [1, 2, 3, 4, 5]) 8
      , check "productOfEvens [1,3,5]" (productOfEvens [1, 3, 5]) 1
      ]
