module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Digit Sum" checks
  where
    checks =
      [ check "digitSum 12345" (digitSum "12345") 15
      , check "digitSum 909" (digitSum "909") 18
      , check "digitSum 0" (digitSum "0") 0
      , check "digitSum 7" (digitSum "7") 7
      ]
