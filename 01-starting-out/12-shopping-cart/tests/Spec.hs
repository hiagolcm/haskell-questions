module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Shopping Cart" checks
  where
    checks =
      [ check "receipt 10 a-b"
          (receipt 10 [("a", 50, 2), ("b", 100, 1)])
          "3 items, subtotal 200, you pay 180"
      , check "receipt 0 pen"
          (receipt 0 [("pen", 5, 4)])
          "4 items, subtotal 20, you pay 20"
      , check "receipt 25 x"
          (receipt 25 [("x", 80, 1)])
          "1 items, subtotal 80, you pay 60"
      ]
