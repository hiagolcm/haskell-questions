module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Ordering Monoid Capstone" checks
  where
    checks =
      [ check "compareByLengthThenAlpha zen ants"
          (compareByLengthThenAlpha "zen" "ants")
          LT
      , check "compareByLengthThenAlpha zen ant"
          (compareByLengthThenAlpha "zen" "ant")
          GT
      , check "compareByLengthThenAlpha abc abd"
          (compareByLengthThenAlpha "abc" "abd")
          LT
      , check "compareRecords higher first"
          (compareRecords ("Bob", 90) ("Ann", 80))
          LT
      , check "compareRecords lower first"
          (compareRecords ("Bob", 80) ("Ann", 90))
          GT
      , check "compareRecords tie"
          (compareRecords ("Bob", 80) ("Ann", 80))
          GT
      , check "describeComparison <" (describeComparison "zen" "ants") "<"
      , check "describeComparison =" (describeComparison "abc" "abc") "="
      , check "describeComparison >" (describeComparison "zen" "ant") ">"
      ]
