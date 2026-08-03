module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Currying and Sections" checks
  where
    checks =
      [ check "addFive 10" (addFive 10) 15
      , check "half 9" (half 9) 4.5
      , check "isBig 150" (isBig 150) True
      , check "isBig 50" (isBig 50) False
      , check "dropThree 10" (dropThree 10) 7
      , check "isVowel 'a'" (isVowel 'a') True
      , check "isVowel 'x'" (isVowel 'x') False
      ]
