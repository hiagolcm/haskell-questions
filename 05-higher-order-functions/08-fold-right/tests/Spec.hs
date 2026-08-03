module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Fold Right" checks
  where
    checks =
      [ check "mapFold (+1)" (mapFold (+ 1) [1, 2, 3]) [2, 3, 4]
      , check "filterFold even" (filterFold even [1, 2, 3, 4, 5, 6]) [2, 4, 6]
      , check "maxFold" (maxFold [3, 9, 2, 7]) 9
      , check "concatFold" (concatFold [[1, 2], [3], [4, 5]]) [1, 2, 3, 4, 5]
      ]
