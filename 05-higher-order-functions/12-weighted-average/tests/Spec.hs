module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Weighted Average" checks
  where
    checks =
      [ check "weightedAverage [1,2,3][1,1,2]"
          (weightedAverage [1, 2, 3] [1, 1, 2])
          2.25
      , check "weightedAverage [10,20][1,1]"
          (weightedAverage [10, 20] [1, 1])
          15.0
      , check "weightedAverage [5,5,5][1,2,3]"
          (weightedAverage [5, 5, 5] [1, 2, 3])
          5.0
      ]
