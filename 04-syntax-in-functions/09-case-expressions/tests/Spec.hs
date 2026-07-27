module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Case Expressions" checks
  where
    checks =
      [ check "describeList []" (describeList ([] :: [Int])) "empty"
      , check "describeList [1]" (describeList [1]) "one"
      , check "describeList [1,2,3]" (describeList [1, 2, 3]) "many"
      , check "headOr 0 [7,8]" (headOr 0 [7, 8]) 7
      , check "headOr 0 []" (headOr 0 []) 0
      , check "orderingWord LT" (orderingWord LT) "less"
      , check "orderingWord EQ" (orderingWord EQ) "equal"
      , check "orderingWord GT" (orderingWord GT) "greater"
      , check "signCase -4" (signCase (-4)) "negative"
      , check "signCase 0" (signCase 0) "zero"
      , check "signCase 9" (signCase 9) "positive"
      ]
