module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Syntax Capstone" checks
  where
    checks =
      [ check "countPositives mixed" (countPositives [1, -2, 3, -4, 5]) 3
      , check "countPositives negs" (countPositives [-1, -2]) 0
      , check "countPositives []" (countPositives []) 0
      , check "compress [1,1,2,3,3,3]" (compress [1, 1, 2, 3, 3, 3]) [1, 2, 3]
      , check "compress aabbbc" (compress "aabbbc") "abc"
      , check "compress [1]" (compress [1]) [1]
      , check "compress []" (compress ([] :: [Int])) []
      , check "gradeSummary pass" (gradeSummary [80, 100]) "average 90.0: pass"
      , check "gradeSummary fail" (gradeSummary [40, 50]) "average 45.0: fail"
      , check "report empty" (report []) "empty class"
      , check "report pass" (report [80, 100]) "average 90.0: pass"
      ]
