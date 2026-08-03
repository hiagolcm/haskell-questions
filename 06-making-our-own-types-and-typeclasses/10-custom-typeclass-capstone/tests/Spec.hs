module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Custom Typeclass Capstone" checks
  where
    checks =
      [ check "describe Spring" (describe Spring) "warming up"
      , check "describe Summer" (describe Summer) "hot"
      , check "describe Autumn" (describe Autumn) "cooling down"
      , check "describe Winter" (describe Winter) "cold"
      , check "describe True" (describe True) "yes"
      , check "describe False" (describe False) "no"
      , check "announce Summer" (announce Summer) "It's hot."
      , check "announce True" (announce True) "It's yes."
      ]
