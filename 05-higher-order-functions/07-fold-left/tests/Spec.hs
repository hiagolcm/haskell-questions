module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Fold Left" checks
  where
    checks =
      [ check "sumFold" (sumFold [1, 2, 3, 4]) 10
      , check "productFold" (productFold [1, 2, 3, 4]) 24
      , check "allFold True True" (allFold [True, True]) True
      , check "allFold True False" (allFold [True, False]) False
      , check "reverseFold" (reverseFold [1, 2, 3]) [3, 2, 1]
      , check "containsFold 3" (containsFold 3 [1, 2, 3, 4]) True
      , check "containsFold 9" (containsFold 9 [1, 2, 3, 4]) False
      ]
