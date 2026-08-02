module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Descending Tiebreak" checks
  where
    checks =
      [ check "differ on a" (rankKey (1, 5, "x") (2, 5, "y")) LT
      , check "a ties, b descending (9 first)"
          (rankKey (1, 9, "x") (1, 5, "y"))
          LT
      , check "a ties, b descending (other order)"
          (rankKey (1, 5, "x") (1, 9, "y"))
          GT
      , check "a and b tie, name breaks it"
          (rankKey (1, 5, "b") (1, 5, "a"))
          GT
      ]
