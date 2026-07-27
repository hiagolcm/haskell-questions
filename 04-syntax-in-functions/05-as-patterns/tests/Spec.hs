module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "As-Patterns" checks
  where
    checks =
      [ check "repeatFirst [1,2,3]" (repeatFirst [1, 2, 3]) [1, 1, 2, 3]
      , check "repeatFirst []" (repeatFirst ([] :: [Int])) []
      , check "describeString empty" (describeString "") "empty"
      , check "describeString cat" (describeString "cat") "cat starts with c"
      , check "firstTwoEqual [1,1,2]" (firstTwoEqual [1, 1, 2]) True
      , check "firstTwoEqual [1,2]" (firstTwoEqual [1, 2]) False
      , check "firstTwoEqual [5]" (firstTwoEqual [5]) False
      , check "dupEach [1,2]" (dupEach [1, 2]) [1, 1, 2, 2]
      , check "dupEach ab" (dupEach "ab") "aabb"
      ]
