module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Closest Point" checks
  where
    checks =
      [ check "closestToOrigin three"
          (closestToOrigin [(3, 4), (0, 2), (6, 8)])
          "(0,2) at distance 2.0"
      , check "closestToOrigin two"
          (closestToOrigin [(1, 0), (0, 3)])
          "(1,0) at distance 1.0"
      ]
