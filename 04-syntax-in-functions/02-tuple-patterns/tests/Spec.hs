module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Tuple Patterns" checks
  where
    checks =
      [ check "addVectors" (addVectors (1, 2) (3, 4)) (4, 6)
      , check "first3 ints" (first3 (1, 2, 3)) 1
      , check "first3 chars" (first3 ('a', 'b', 'c')) 'a'
      , check "third3" (third3 (1, 2, 3)) 3
      , check "swapEnds" (swapEnds (1, 2, 3)) (3, 2, 1)
      , check "labelValue" (labelValue ("x", 5)) "x=5"
      ]
