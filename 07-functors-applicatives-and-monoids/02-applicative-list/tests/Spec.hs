module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Applicative List" checks
  where
    checks =
      [ check "allSums" (allSums [1, 2] [10, 20]) [11, 21, 12, 22]
      , check "allPairs" (allPairs [1, 2] "ab") [(1, 'a'), (1, 'b'), (2, 'a'), (2, 'b')]
      , check "applyAllOps" (applyAllOps [(+ 1), (* 2)] [10, 20]) [11, 21, 20, 40]
      ]
