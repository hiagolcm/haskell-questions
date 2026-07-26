module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Formatting Report" checks
  where
    checks =
      [ check "tagValues Int" (tagValues [1, 2, 3 :: Int]) ["<1>", "<2>", "<3>"]
      , check "tagValues Bool" (tagValues [True, False]) ["<True>", "<False>"]
      , check "passFail 60" (passFail 60 [40, 75, 60]) ["fail", "pass", "pass"]
      , check "withVerdict 50"
          (withVerdict 50 [("a", 30), ("b", 80)])
          ["a: fail", "b: pass"]
      , check "summaryLine" (summaryLine [4, 1, 9, 2]) "count 4, max 9, min 1"
      ]
