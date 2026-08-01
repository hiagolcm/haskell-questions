module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Nested Points" checks
  where
    checks =
      [ check "surfaceArea circle"
          (surfaceArea (Circle (Point 0 0) 10))
          (pi * 100)
      , check "surfaceArea rectangle"
          (surfaceArea (Rectangle (Point 0 0) (Point 10 20)))
          200.0
      , check "moveShape circle"
          (moveShape 5 5 (Circle (Point 0 0) 10))
          (Circle (Point 5 5) 10)
      , check "moveShape rectangle"
          (moveShape 1 2 (Rectangle (Point 0 0) (Point 10 10)))
          (Rectangle (Point 1 2) (Point 11 12))
      ]
