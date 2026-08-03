module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Validation Pipeline" checks
  where
    checks =
      [ check "validateUsername too short" (validateUsername "al") Nothing
      , check "validateUsername ok" (validateUsername "alice") (Just "alice")
      , check "validatePassword too short" (validatePassword "short") Nothing
      , check "validatePassword ok" (validatePassword "longpassword") (Just "longpassword")
      , check "createAccount bad username" (createAccount "al" "longpassword") Nothing
      , check "createAccount bad password" (createAccount "alice" "short") Nothing
      , check "createAccount ok" (createAccount "alice" "longpassword") (Just (Account "alice" "longpassword"))
      ]
