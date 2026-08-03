module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Lambdas" checks
  where
    checks =
      [ check "addPairs" (addPairs [(1, 2), (3, 4)]) [3, 7]
      , check "keepClose 10 2"
          (keepClose 10 2 [7, 8, 9, 10, 11, 15])
          [8, 9, 10, 11]
      , check "labelSigns" (labelSigns [-3, 0, 5]) ["neg", "zero", "pos"]
      , check "scalePairs 3"
          (scalePairs 3 [(1, 2), (4, 5)])
          [(3, 6), (12, 15)]
      ]
