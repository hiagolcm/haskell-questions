module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Safe Division Basics" checks
  where
    checks =
      [ check "safeDiv 10 2" (safeDiv 10 2) (Just 5)
      , check "safeDiv 10 0" (safeDiv 10 0) Nothing
      , check "chainedDivide 100 5 2" (chainedDivide 100 5 2) (Just 10)
      , check "chainedDivide 100 0 2" (chainedDivide 100 0 2) Nothing
      , check "chainedDivide 100 5 0" (chainedDivide 100 5 0) Nothing
      , check "safeDivChain 1000 2 5 2" (safeDivChain 1000 2 5 2) (Just 50)
      , check "safeDivChain 1000 0 5 2" (safeDivChain 1000 0 5 2) Nothing
      , check "safeDivChain 1000 2 5 0" (safeDivChain 1000 2 5 0) Nothing
      ]
