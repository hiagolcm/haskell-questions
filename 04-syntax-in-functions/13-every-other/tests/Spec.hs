module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Every Other" checks
  where
    checks =
      [ check "everyOther [1..5]" (everyOther [1, 2, 3, 4, 5]) [1, 3, 5]
      , check "everyOther abcdef" (everyOther "abcdef") "ace"
      , check "everyOther [1]" (everyOther [1]) [1]
      , check "everyOther []" (everyOther ([] :: [Int])) []
      ]
