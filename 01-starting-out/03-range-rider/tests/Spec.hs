module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Range Rider" checks
  where
    checks =
      [ check "firstNEvens 5" (firstNEvens 5) [2, 4, 6, 8, 10]
      , check "firstNEvens 1" (firstNEvens 1) [2]
      , check "countdownFrom 5" (countdownFrom 5) [5, 4, 3, 2, 1]
      , check "countdownFrom 1" (countdownFrom 1) [1]
      , check "alphabetChunk 'c' 'g'" (alphabetChunk 'c' 'g') "cdefg"
      , check "alphabetChunk 'a' 'a'" (alphabetChunk 'a' 'a') "a"
      , check "repeatPattern 3 [1,2]" (repeatPattern 3 [1, 2]) [1, 2, 1, 2, 1, 2]
      , check "repeatPattern 2 \"ab\"" (repeatPattern 2 "ab") "abab"
      , check "greetNTimes 3 \"hi\"" (greetNTimes 3 "hi") ["hi", "hi", "hi"]
      , check "greetNTimes 0 \"hi\"" (greetNTimes 0 "hi") []
      , check "squareRange 1 5" (squareRange 1 5) [1, 4, 9, 16, 25]
      , check "squareRange 3 3" (squareRange 3 3) [9]
      ]
