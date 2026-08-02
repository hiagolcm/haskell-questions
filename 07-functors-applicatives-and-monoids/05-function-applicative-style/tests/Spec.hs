module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Function Applicative Style" checks
  where
    checks =
      [ check "sumOfThreeFns"
          (sumOfThreeFns (+ 1) (* 2) (subtract 3) 10)
          38
      , check "tripleResult"
          (tripleResult (+ 1) (* 2) (subtract 3) 10)
          (11, 20, 7)
      ]
