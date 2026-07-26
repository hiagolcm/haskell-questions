module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "String Wrangler" checks
  where
    checks =
      [ check "isPalindrome \"racecar\"" (isPalindrome "racecar") True
      , check "isPalindrome \"hello\"" (isPalindrome "hello") False
      , check "isPalindrome \"\"" (isPalindrome "") True
      , check "firstLetters"
          (firstLetters ["Learn", "You", "A", "Haskell"])
          "LYAH"
      , check "removeVowels \"Haskell\"" (removeVowels "Haskell") "Hskll"
      , check "removeVowels \"xyz\"" (removeVowels "xyz") "xyz"
      , check "charAt 6 \"Steve Buscemi\"" (charAt 6 "Steve Buscemi") 'B'
      , check "charAt 0 \"hi\"" (charAt 0 "hi") 'h'
      , check "truncateWithEllipsis 5 \"hello\"" (truncateWithEllipsis 5 "hello") "hello"
      , check "truncateWithEllipsis 5 \"hello world\""
          (truncateWithEllipsis 5 "hello world")
          "hello..."
      , check "countOccurrences 'l' \"hello\"" (countOccurrences 'l' "hello") 2
      , check "countOccurrences 'z' \"hello\"" (countOccurrences 'z' "hello") 0
      ]
