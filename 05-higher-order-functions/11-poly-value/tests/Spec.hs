module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Polynomial Value" checks
  where
    checks =
      [ check "polyValue 2 [1,2,3]" (polyValue 2 [1, 2, 3]) 17.0
      , check "polyValue 0 [5,1,1]" (polyValue 0 [5, 1, 1]) 5.0
      , check "polyValue 3 [0,0,1]" (polyValue 3 [0, 0, 1]) 9.0
      ]
