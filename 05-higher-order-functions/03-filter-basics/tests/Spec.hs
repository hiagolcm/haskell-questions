module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Filter Basics" checks
  where
    checks =
      [ check "keepEvens" (keepEvens [1, 2, 3, 4, 5, 6]) [2, 4, 6]
      , check "keepPositives" (keepPositives [-2, 3, -1, 4, 0]) [3, 4]
      , check "keepVowels" (keepVowels "Haskell") "ae"
      , check "keepLongWords 3"
          (keepLongWords 3 ["cat", "hippo", "ox", "zebra"])
          ["hippo", "zebra"]
      , check "dropZeros" (dropZeros [1, 0, 2, 0, 0, 3]) [1, 2, 3]
      ]
