module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Sorted Check" checks
  where
    checks =
      [ check "isSorted [1,2,2,3]" (isSorted [1, 2, 2, 3]) True
      , check "isSorted [1,3,2]" (isSorted [1, 3, 2]) False
      , check "isSorted abc" (isSorted "abc") True
      , check "isSorted cba" (isSorted "cba") False
      , check "isSorted [5]" (isSorted [5]) True
      , check "isSorted empty" (isSorted ([] :: [Int])) True
      ]
