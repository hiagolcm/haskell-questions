module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Map and Filter Together" checks
  where
    checks =
      [ check "squaresOfEvens" (squaresOfEvens [1, 2, 3, 4, 5, 6]) [4, 16, 36]
      , check "lettersOnly" (lettersOnly "a1b2c3!") "abc"
      , check "namesStartingWith 'a'"
          (namesStartingWith 'a' ["ana", "bob", "ale", "cid"])
          ["ana", "ale"]
      , check "sumOfSquaresOfOdds" (sumOfSquaresOfOdds [1, 2, 3, 4, 5]) 35
      , check "wordCountsFor 3"
          (wordCountsFor 3 ["cat", "hippo", "ox", "zebra"])
          2
      ]
