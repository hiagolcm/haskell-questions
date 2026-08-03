module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Pattern Basics" checks
  where
    checks =
      [ check "isZero 0" (isZero 0) True
      , check "isZero 5" (isZero 5) False
      , check "notB True" (notB True) False
      , check "notB False" (notB False) True
      , check "smallName 0" (smallName 0) "zero"
      , check "smallName 2" (smallName 2) "two"
      , check "smallName 9" (smallName 9) "many"
      , check "boolToInt True" (boolToInt True) 1
      , check "boolToInt False" (boolToInt False) 0
      ]
