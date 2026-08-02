module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "ZipList" checks
  where
    checks =
      [ check "zipSums equal length" (zipSums [1, 2, 3] [10, 20, 30]) [11, 22, 33]
      , check "zipSums stops at shorter" (zipSums [1, 2, 3] [10, 20]) [11, 22]
      , check "zipMax" (zipMax [1, 2, 3, 4, 5, 3] [5, 3, 1, 2]) [5, 3, 3, 4]
      , check "zipTriple"
          (zipTriple "dog" "cat" "rat")
          [('d', 'c', 'r'), ('o', 'a', 'a'), ('g', 't', 't')]
      ]
