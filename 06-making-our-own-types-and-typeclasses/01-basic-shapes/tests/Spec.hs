module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Basic Shapes" checks
  where
    checks =
      [ check "area circle" (area (Circle 0 0 10)) (pi * 100)
      , check "area rectangle" (area (Rectangle 0 0 10 20)) 200.0
      , check "isCircle Circle" (isCircle (Circle 0 0 5)) True
      , check "isCircle Rectangle" (isCircle (Rectangle 0 0 1 1)) False
      ]
