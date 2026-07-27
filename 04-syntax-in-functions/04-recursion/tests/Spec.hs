module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Recursion" checks
  where
    checks =
      [ check "sumList [1,2,3,4]" (sumList [1, 2, 3, 4]) 10
      , check "sumList []" (sumList []) 0
      , check "lengthList hello" (lengthList "hello") 5
      , check "lengthList []" (lengthList ([] :: [Int])) 0
      , check "productList [1,2,3,4]" (productList [1, 2, 3, 4]) 24
      , check "productList []" (productList []) 1
      , check "allTrue [True,True]" (allTrue [True, True]) True
      , check "allTrue [True,False]" (allTrue [True, False]) False
      , check "allTrue []" (allTrue []) True
      , check "countDown 3" (countDown 3) [3, 2, 1, 0]
      , check "countDown 0" (countDown 0) [0]
      ]
