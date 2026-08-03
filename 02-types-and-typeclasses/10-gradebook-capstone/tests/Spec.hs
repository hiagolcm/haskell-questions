module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Gradebook Capstone" checks
  where
    checks =
      [ check "parseScores" (parseScores ["3", "5", "7"]) [3, 5, 7]
      , check "attachLabels" (attachLabels [10, 20]) [('A', 10), ('B', 20)]
      , check "rankVsAverage" (rankVsAverage [1, 5, 9]) [LT, EQ, GT]
      , check "report" (report ["10", "20"]) ["A: 10", "B: 20"]
      , check "highest" (highest ["3", "9", "2"]) 9
      ]
