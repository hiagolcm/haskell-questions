module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Parameterized Pair" checks
  where
    checks =
      [ check "pairToList ints" (pairToList (Pair 1 2)) [1, 2]
      , check "pairToList chars" (pairToList (Pair 'a' 'b')) "ab"
      , check "swapPair" (swapPair (Pair 1 2)) (Pair 2 1)
      , check "mapPair (+1)" (mapPair (+ 1) (Pair 1 2)) (Pair 2 3)
      , check "mapPair show" (mapPair show (Pair 1 2)) (Pair "1" "2")
      ]
