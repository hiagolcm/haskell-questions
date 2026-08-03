module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Return and Pure" checks
  where
    checks =
      [ check "validateScore ok" (validateScore 80) (Just 80)
      , check "validateScore too low" (validateScore (-5)) Nothing
      , check "validateScore too high" (validateScore 200) Nothing
      , check "finalizeScore clamped" (finalizeScore 80 30) (Just 100)
      , check "finalizeScore normal" (finalizeScore 50 20) (Just 70)
      , check "finalizeScore bad raw" (finalizeScore (-5) 20) Nothing
      , check "finalizeScore bad bonus" (finalizeScore 50 200) Nothing
      ]
