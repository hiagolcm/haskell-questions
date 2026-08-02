module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Newtype Laziness" checks
  where
    checks =
      [ check "describeWrapper Int" (describeWrapper (Wrapper (5 :: Int))) "wrapped"
      , check "describeWrapper String"
          (describeWrapper (Wrapper "hi"))
          "wrapped"
      , check "describeWrapper undefined"
          (describeWrapper (Wrapper (undefined :: Int)))
          "wrapped"
      ]
