module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Affordable Combos" checks
  where
    checks =
      [ check "affordableCombos 15" (affordableCombos 15 [10, 20] [2, 8]) [12]
      , check "affordableCombos 30"
          (affordableCombos 30 [10, 20] [2, 8])
          [12, 18, 22, 28]
      , check "affordableCombos 5" (affordableCombos 5 [10, 20] [2, 8]) []
      ]
