module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Numeric Mix" checks
  where
    checks =
      [ check "toDoubles" (toDoubles [1, 2, 3]) [1.0, 2.0, 3.0]
      , check "meanOf" (meanOf [1, 2, 3, 4]) 2.5
      , check "averages" (averages [[1, 2, 3], [10, 20]]) [2.0, 15.0]
      , check "distances" (distances [(3, 4), (6, 8)]) [5.0, 10.0]
      , check "circleAreas" (circleAreas [1, 2]) [pi, 4 * pi]
      ]
