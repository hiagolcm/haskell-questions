module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Department Report" checks
  where
    ana = Employee "Ana" 1
    checks =
      [ check "salary found" (buildReport ana [(1, 5000), (2, 6000)]) (Just (Report ana 5000))
      , check "salary missing" (buildReport ana [(2, 6000)]) Nothing
      , check "salary found single entry" (buildReport ana [(1, 4200)]) (Just (Report ana 4200))
      ]
