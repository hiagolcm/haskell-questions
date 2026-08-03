module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Functor Laws" checks
  where
    checks =
      [ check "checkFunctorLaws 5" (checkFunctorLaws 5) True
      , check "checkFunctorLaws 0" (checkFunctorLaws 0) True
      , check "checkFunctorLaws -3" (checkFunctorLaws (-3)) True
      ]
