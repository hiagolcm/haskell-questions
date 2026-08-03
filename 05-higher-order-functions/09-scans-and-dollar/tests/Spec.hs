module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Scans and the Dollar Operator" checks
  where
    checks =
      [ check "runningTotals" (runningTotals [3, 5, 2, 1]) [0, 3, 8, 10, 11]
      , check "runningMax" (runningMax [3, 4, 2, 5, 1]) [3, 4, 4, 5, 5]
      , check "sumOfSquaresUnder 30" (sumOfSquaresUnder 30) 55
      , check "sumOfSquaresUnder 100" (sumOfSquaresUnder 100) 285
      , check "countStepsToExceed 10"
          (countStepsToExceed 10 [3, 5, 2, 1, 4])
          3
      ]
