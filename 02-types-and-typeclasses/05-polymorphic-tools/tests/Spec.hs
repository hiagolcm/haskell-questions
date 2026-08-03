module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Polymorphic Tools" checks
  where
    checks =
      [ check "positions 2" (positions 2 [1, 2, 3, 2]) [1, 3]
      , check "positions 'l'" (positions 'l' "hello") [2, 3]
      , check "sortPair 5 2" (sortPair 5 2) (2, 5)
      , check "sortPair 'a' 'z'" (sortPair 'a' 'z') ('a', 'z')
      , check "clampList 0 9" (clampList 0 9 [-3, 5, 20]) [0, 5, 9]
      , check "clampList 'b' 'y'" (clampList 'b' 'y' "azm") "bym"
      , check "pairWithEq 3"
          (pairWithEq 3 [1, 3, 3])
          [(1, False), (3, True), (3, True)]
      ]
