module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Caesar Cipher" checks
  where
    checks =
      [ check "encode 3 abc" (encode 3 "abc") "def"
      , check "encode 3 xyz wraps" (encode 3 "xyz") "abc"
      , check "encode 3 hello world" (encode 3 "hello world") "khoor zruog"
      , check "encode 0 haskell" (encode 0 "haskell") "haskell"
      , check "encode 26 haskell" (encode 26 "haskell") "haskell"
      ]
