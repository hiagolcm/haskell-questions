module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Hand-Written Bind" checks
  where
    checks =
      [ check "bind Full chains" (Full 3 >>= (\x -> Full (x + 1))) (Full 4)
      , check "bind Empty short-circuits" (Empty >>= (\x -> Full (x + 1))) (Empty :: Box Int)
      , check "combine3 all full" (combine3 (Full 1) (Full 2) (Full 3)) (Full 6)
      , check "combine3 middle empty" (combine3 (Full 1) Empty (Full 3)) (Empty :: Box Int)
      , check "combine3 all empty" (combine3 Empty Empty Empty) (Empty :: Box Int)
      ]
