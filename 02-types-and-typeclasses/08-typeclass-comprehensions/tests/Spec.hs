module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Typeclass Comprehensions" checks
  where
    checks =
      [ check "withCode"
          (withCode [10, 20, 30])
          [('A', 10), ('B', 20), ('C', 30)]
      , check "rankAll" (rankAll [3, 9, 9, 1]) [LT, EQ, EQ, LT]
      , check "topItems 50"
          (topItems 50 [("a", 40), ("b", 70), ("c", 90)])
          ["b", "c"]
      , check "showRanked"
          (showRanked [("a", 1), ("b", 2)])
          ["a: 1", "b: 2"]
      ]
