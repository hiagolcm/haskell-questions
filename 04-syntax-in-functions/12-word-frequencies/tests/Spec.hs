module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Word Frequencies" checks
  where
    checks =
      [ check "wordFrequencies a b a c b a"
          (wordFrequencies ["a", "b", "a", "c", "b", "a"])
          [("a", 3), ("b", 2), ("c", 1)]
      , check "wordFrequencies single" (wordFrequencies ["x"]) [("x", 1)]
      , check "wordFrequencies empty" (wordFrequencies []) []
      ]
