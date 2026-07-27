module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "List Patterns" checks
  where
    checks =
      [ check "firstOrZero [7,8]" (firstOrZero [7, 8]) 7
      , check "firstOrZero []" (firstOrZero []) 0
      , check "tailOrEmpty [1,2,3]" (tailOrEmpty [1, 2, 3]) [2, 3]
      , check "tailOrEmpty []" (tailOrEmpty ([] :: [Int])) []
      , check "sumFirstTwo [10,20,30]" (sumFirstTwo [10, 20, 30]) 30
      , check "sumFirstTwo [5]" (sumFirstTwo [5]) 0
      , check "sumFirstTwo []" (sumFirstTwo []) 0
      , check "describeLen []" (describeLen ([] :: [Int])) "empty"
      , check "describeLen [1]" (describeLen [1]) "one"
      , check "describeLen [1,2]" (describeLen [1, 2]) "two"
      , check "describeLen [1,2,3]" (describeLen [1, 2, 3]) "many"
      ]
