module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Run Operations" checks
  where
    checks =
      [ check "allJust empty" (allJust ([] :: [Maybe Int])) (Just [])
      , check "allJust all present" (allJust [Just 1, Just 2, Just 3]) (Just [1, 2, 3])
      , check "allJust one missing" (allJust [Just 1, Nothing, Just 3]) Nothing
      , check "sumIfAllValid ok" (sumIfAllValid [Just 1, Just 2, Just 3]) (Just 6)
      , check "sumIfAllValid missing" (sumIfAllValid [Just 1, Nothing, Just 3]) Nothing
      ]
