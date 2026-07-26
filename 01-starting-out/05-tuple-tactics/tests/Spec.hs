module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Tuple Tactics" checks
  where
    checks =
      [ check "swapPair (1,\"one\")" (swapPair (1, "one")) ("one", 1)
      , check "indexedList \"abc\""
          (indexedList "abc")
          [(0, 'a'), (1, 'b'), (2, 'c')]
      , check "sumOfProducts [(1,2),(3,4)]" (sumOfProducts [(1, 2), (3, 4)]) 14
      , check "sumOfProducts []" (sumOfProducts []) 0
      , check "maxProduct [(1,2),(3,4),(0,10)]" (maxProduct [(1, 2), (3, 4), (0, 10)]) 12
      , check "zipNames"
          (zipNames ["Ada", "Alan"] ["Lovelace", "Turing"])
          [("Ada", "Lovelace"), ("Alan", "Turing")]
      , check "zipNames unequal lengths"
          (zipNames ["Ada", "Alan", "Grace"] ["Lovelace"])
          [("Ada", "Lovelace")]
      , check "firsts" (firsts [(1, 'a'), (2, 'b'), (3, 'c')]) [1, 2, 3]
      ]
