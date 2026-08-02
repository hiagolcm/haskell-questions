module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Sum Present Scores" checks
  where
    checks =
      [ check "reportScores mixed"
          (reportScores [Just 10, Nothing, Just 20, Just 5])
          "sum: 35, missing: 1"
      , check "reportScores all missing"
          (reportScores [Nothing, Nothing])
          "sum: 0, missing: 2"
      , check "reportScores single" (reportScores [Just 7]) "sum: 7, missing: 0"
      , check "reportScores empty" (reportScores []) "sum: 0, missing: 0"
      ]
