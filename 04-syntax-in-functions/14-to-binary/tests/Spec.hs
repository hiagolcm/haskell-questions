module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "To Binary" checks
  where
    checks =
      [ check "toBinary 0" (toBinary 0) "0"
      , check "toBinary 1" (toBinary 1) "1"
      , check "toBinary 5" (toBinary 5) "101"
      , check "toBinary 6" (toBinary 6) "110"
      , check "toBinary 10" (toBinary 10) "1010"
      ]
