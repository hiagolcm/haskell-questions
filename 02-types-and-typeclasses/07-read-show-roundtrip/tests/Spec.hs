module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Read/Show Round-trip" checks
  where
    checks =
      [ check "normalizeInts" (normalizeInts ["007", "42", "10"]) ["7", "42", "10"]
      , check "keepBig 5" (keepBig 5 ["3", "8", "10", "1"]) [8, 10]
      , check "sumOfReadable" (sumOfReadable ["1", "2", "3"]) "total: 6"
      , check "compareStrings 3 20" (compareStrings "3" "20") LT
      , check "compareStrings 20 3" (compareStrings "20" "3") GT
      , check "compareStrings 5 5" (compareStrings "5" "5") EQ
      ]
