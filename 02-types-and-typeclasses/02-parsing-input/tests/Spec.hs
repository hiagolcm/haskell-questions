module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Parsing Input" checks
  where
    checks =
      [ check "parseInts" (parseInts ["1", "2", "3"]) [1, 2, 3]
      , check "sumStrings" (sumStrings ["10", "20", "30"]) 60
      , check "parsePairs"
          (parsePairs [("1", "2"), ("3", "4")])
          [(1, 2), (3, 4)]
      , check "maxParsed" (maxParsed ["3", "9", "2"]) 9
      ]
