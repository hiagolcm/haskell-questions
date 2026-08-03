module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Money Equality" checks
  where
    checks =
      [ check "Money 1 150 == Money 2 50" (Money 1 150 == Money 2 50) True
      , check "Money 1 0 == Money 1 0" (Money 1 0 == Money 1 0) True
      , check "Money 1 0 == Money 1 1" (Money 1 0 == Money 1 1) False
      , check "Money 0 100 == Money 1 0" (Money 0 100 == Money 1 0) True
      ]
