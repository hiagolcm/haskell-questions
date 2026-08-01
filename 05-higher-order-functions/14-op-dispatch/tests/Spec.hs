module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Operator Dispatch" checks
  where
    checks =
      [ check "applyOp +" (applyOp "+" 3 4) 7
      , check "applyOp -" (applyOp "-" 10 3) 7
      , check "applyOp *" (applyOp "*" 3 4) 12
      , check "applyOp max" (applyOp "max" 3 9) 9
      ]
