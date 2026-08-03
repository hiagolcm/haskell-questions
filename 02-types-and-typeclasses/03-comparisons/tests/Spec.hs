module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Comparisons" checks
  where
    checks =
      [ check "vsThreshold 5" (vsThreshold 5 [3, 5, 8]) [LT, EQ, GT]
      , check "countBelow 5" (countBelow 5 [3, 5, 8, 1]) 2
      , check "cmpSymbol 3 7" (cmpSymbol 3 7) "3 < 7"
      , check "cmpSymbol 7 7" (cmpSymbol 7 7) "7 = 7"
      , check "cmpSymbol 9 2" (cmpSymbol 9 2) "9 > 2"
      , check "extremesCompare [3,1,5]" (extremesCompare [3, 1, 5]) LT
      , check "extremesCompare [5,2,1]" (extremesCompare [5, 2, 1]) GT
      ]
