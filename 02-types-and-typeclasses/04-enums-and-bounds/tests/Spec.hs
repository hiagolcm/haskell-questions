module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Enums and Bounds" checks
  where
    checks =
      [ check "shiftEach" (shiftEach "abc") "bcd"
      , check "bookmark"
          (bookmark ["cat", "dog"])
          [('a', "cat"), ('b', "dog")]
      , check "everyOrdering" everyOrdering [LT, EQ, GT]
      , check "boolPair" boolPair (False, True)
      , check "neighbours 'b'" (neighbours 'b') ('a', 'c')
      ]
