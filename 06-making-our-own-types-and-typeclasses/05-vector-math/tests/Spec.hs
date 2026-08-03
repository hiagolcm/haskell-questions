module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Vector Math" checks
  where
    checks =
      [ check "vplus"
          (vplus (Vector3 3 5 8) (Vector3 9 2 8))
          (Vector3 12 7 16)
      , check "vectMult" (vectMult (Vector3 3 9 7) 10) (Vector3 30 90 70)
      , check "dotProduct" (dotProduct (Vector3 1 2 3) (Vector3 4 5 6)) 32
      ]
