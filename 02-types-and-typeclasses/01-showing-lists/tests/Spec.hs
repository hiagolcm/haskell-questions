module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Showing Lists" checks
  where
    checks =
      [ check "showEach" (showEach [1, 2, 3]) ["1", "2", "3"]
      , check "numbered" (numbered ["a", "b", "c"]) ["1. a", "2. b", "3. c"]
      , check "showSquares 3" (showSquares 3) ["1", "4", "9"]
      , check "showPairs" (showPairs [(1, 2), (3, 4)]) ["(1,2)", "(3,4)"]
      ]
