module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Composition Capstone" checks
  where
    checks =
      [ check "sumSquaresOfEvens" (sumSquaresOfEvens [1, 2, 3, 4, 5, 6]) 56
      , check "countNegatives" (countNegatives [-1, 2, -3, 4, -5]) 3
      , check "describeAll" (describeAll [-2, 0, 7]) ["neg", "zero", "pos"]
      , check "processScores"
          (processScores [90, 40, 70, 60])
          "3 passed, average 65.0"
      ]
