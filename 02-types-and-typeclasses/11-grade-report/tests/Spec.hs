module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Grade Report" checks
  where
    checks =
      [ check "gradeReport 95 72 50"
          (gradeReport ["95", "72", "50"])
          ["95: A", "72: C", "50: F"]
      , check "gradeReport 88 60"
          (gradeReport ["88", "60"])
          ["88: B", "60: D"]
      ]
