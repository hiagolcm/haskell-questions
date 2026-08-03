module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Type Synonyms" checks
  where
    checks =
      [ check "inPhoneBook found"
          (inPhoneBook "Alice" "123" [("Alice", "123"), ("Bob", "456")])
          True
      , check "inPhoneBook not found"
          (inPhoneBook "Alice" "999" [("Alice", "123"), ("Bob", "456")])
          False
      , check "numbersFor"
          (numbersFor "Alice" [("Alice", "123"), ("Bob", "456"), ("Alice", "789")])
          ["123", "789"]
      , check "numbersFor none"
          (numbersFor "Cid" [("Alice", "123")])
          []
      ]
