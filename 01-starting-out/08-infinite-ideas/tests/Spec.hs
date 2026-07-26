module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Infinite Ideas" checks
  where
    checks =
      [ check "takeEveryOther [10..15]"
          (takeEveryOther [10, 11, 12, 13, 14, 15])
          [10, 12, 14]
      , check "labelWithLetters [10,20,30]"
          (labelWithLetters [10, 20, 30])
          [('a', 10), ('b', 20), ('c', 30)]
      , check "firstNFromCycle 7 [1,2,3]"
          (firstNFromCycle 7 [1, 2, 3])
          [1, 2, 3, 1, 2, 3, 1]
      , check "firstNFromCycle 2 [9]" (firstNFromCycle 2 [9]) [9, 9]
      , check "paddedTo 5 0 [1,2,3]" (paddedTo 5 0 [1, 2, 3]) [1, 2, 3, 0, 0]
      , check "paddedTo 2 0 [1,2,3]" (paddedTo 2 0 [1, 2, 3]) [1, 2, 3]
      , check "paddedTo 3 0 []" (paddedTo 3 0 []) [0, 0, 0]
      , check "infiniteSquares 4" (infiniteSquares 4) [1, 4, 9, 16]
      , check "infiniteSquares 1" (infiniteSquares 1) [1]
      ]
