module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Function Applicative" checks
  where
    checks =
      [ check "sumOfTwoFns" (sumOfTwoFns (+ 5) (* 10) 3) 38
      , check "maxOfTwoFns picks *10" (maxOfTwoFns (+ 5) (* 10) 3) 30
      , check "maxOfTwoFns picks *10 again" (maxOfTwoFns (+ 5) (* 10) 1) 10
      ]
