module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Map Basics" checks
  where
    checks =
      [ check "doubleAll" (doubleAll [1, 2, 3]) [2, 4, 6]
      , check "squareAll" (squareAll [1, 2, 3, 4]) [1, 4, 9, 16]
      , check "stringLengths" (stringLengths ["a", "bb", "ccc"]) [1, 2, 3]
      , check "showAll" (showAll [1, 2, 3]) ["1", "2", "3"]
      , check "firstOfEach" (firstOfEach [(1, 2), (3, 4)]) [1, 3]
      ]
