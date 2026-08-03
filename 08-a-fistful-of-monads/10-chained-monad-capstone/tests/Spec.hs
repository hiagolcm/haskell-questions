module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Chained Monad Capstone" checks
  where
    env = [("x", 10), ("y", 2), ("z", 0)]
    checks =
      [ check "literal" (evalWithEnv env (Lit 5)) (Just 5)
      , check "known variable" (evalWithEnv env (Var "x")) (Just 10)
      , check "missing variable" (evalWithEnv env (Var "w")) Nothing
      , check "divide ok" (evalWithEnv env (Divide (Var "x") (Var "y"))) (Just 5)
      , check "divide by zero" (evalWithEnv env (Divide (Var "x") (Var "z"))) Nothing
      , check "divide by missing" (evalWithEnv env (Divide (Var "x") (Var "w"))) Nothing
      , check "nested short-circuit" (evalWithEnv env (Divide (Divide (Var "x") (Var "y")) (Lit 1))) (Just 5)
      ]
