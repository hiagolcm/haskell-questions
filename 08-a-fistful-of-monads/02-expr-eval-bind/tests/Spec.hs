module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Expression Evaluator via Bind" checks
  where
    checks =
      [ check "eval (Val 5)" (eval (Val 5)) (Just 5)
      , check "eval (Div (Val 10) (Val 2))" (eval (Div (Val 10) (Val 2))) (Just 5)
      , check "eval (Div (Val 10) (Val 0))" (eval (Div (Val 10) (Val 0))) Nothing
      , check "eval nested"
          (eval (Div (Div (Val 20) (Val 2)) (Val 5)))
          (Just 2)
      ]
