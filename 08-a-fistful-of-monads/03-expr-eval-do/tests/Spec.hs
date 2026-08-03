module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Expression Evaluator via Do-Notation" checks
  where
    checks =
      [ check "evalDo (Val 5)" (evalDo (Val 5)) (Just 5)
      , check "evalDo (Div (Val 10) (Val 2))" (evalDo (Div (Val 10) (Val 2))) (Just 5)
      , check "evalDo (Div (Val 10) (Val 0))" (evalDo (Div (Val 10) (Val 0))) Nothing
      , check "evalDo nested"
          (evalDo (Div (Div (Val 20) (Val 2)) (Val 5)))
          (Just 2)
      ]
