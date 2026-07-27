module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Let Expressions" checks
  where
    checks =
      [ check "heronArea 3 4 5" (heronArea 3 4 5) 6.0
      , check "heronArea 6 8 10" (heronArea 6 8 10) 24.0
      , check "midpoint (0,0)(4,6)" (midpoint (0, 0) (4, 6)) (2.0, 3.0)
      , check "midpoint (1,1)(3,5)" (midpoint (1, 1) (3, 5)) (2.0, 3.0)
      , check "discount 200 25" (discount 200 25) 150.0
      , check "discount 80 50" (discount 80 50) 40.0
      , check "bmis" (bmis [(72, 2), (50, 2.5)]) [18.0, 8.0]
      ]
