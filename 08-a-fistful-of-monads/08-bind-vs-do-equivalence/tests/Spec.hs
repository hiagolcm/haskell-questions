module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Bind vs Do, Side by Side" checks
  where
    checks =
      [ check "safeParseDigit valid" (safeParseDigit '7') (Just 7)
      , check "safeParseDigit invalid" (safeParseDigit 'z') Nothing
      , check "bind both valid" (combineDigitsBind '2' '3') (Just 5)
      , check "bind first invalid" (combineDigitsBind 'x' '3') Nothing
      , check "bind second invalid" (combineDigitsBind '2' 'y') Nothing
      , check "do both valid" (combineDigitsDo '2' '3') (Just 5)
      , check "do first invalid" (combineDigitsDo 'x' '3') Nothing
      , check "do second invalid" (combineDigitsDo '2' 'y') Nothing
      ]
