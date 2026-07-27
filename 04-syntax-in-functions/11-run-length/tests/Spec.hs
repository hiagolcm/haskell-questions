module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Run-Length Encoding" checks
  where
    checks =
      [ check "rle aaabb" (runLengthEncode "aaabb") [('a', 3), ('b', 2)]
      , check "rle 1 1 2 3 3 3"
          (runLengthEncode [1, 1, 2, 3, 3, 3])
          [(1, 2), (2, 1), (3, 3)]
      , check "rle empty" (runLengthEncode ([] :: [Int])) []
      , check "rle abc"
          (runLengthEncode "abc")
          [('a', 1), ('b', 1), ('c', 1)]
      ]
