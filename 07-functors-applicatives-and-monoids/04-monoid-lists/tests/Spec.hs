module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Monoid Lists" checks
  where
    checks =
      [ check "combineAll" (combineAll [[1, 2], [3], [4, 5]]) [1, 2, 3, 4, 5]
      , check "combineAll empty" (combineAll []) []
      , check "combineTwo" (combineTwo "foo" "bar") "foobar"
      , check "orEmpty True" (orEmpty True [1, 2, 3]) [1, 2, 3]
      , check "orEmpty False" (orEmpty False [1, 2, 3]) []
      ]
