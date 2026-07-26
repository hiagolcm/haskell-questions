module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Word Workshop" checks
  where
    checks =
      [ check "wordReport cat-hippo-dog"
          (wordReport ["cat", "hippo", "dog"])
          "3 words, longest hippo, 11 letters"
      , check "wordReport a-bb-ccc"
          (wordReport ["a", "bb", "ccc"])
          "3 words, longest ccc, 6 letters"
      , check "wordReport single"
          (wordReport ["hello"])
          "1 words, longest hello, 5 letters"
      ]
