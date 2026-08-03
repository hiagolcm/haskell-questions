module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Summarize" checks
  where
    checks =
      [ check "summarize 2 4 6"
          (summarize ["2", "4", "6"])
          "min 2, max 6, sum 12, mean 4.0"
      , check "summarize 1 2"
          (summarize ["1", "2"])
          "min 1, max 2, sum 3, mean 1.5"
      ]
