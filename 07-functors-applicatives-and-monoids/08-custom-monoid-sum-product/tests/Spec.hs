module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Custom Monoid: Sum and Product" checks
  where
    checks =
      [ check "MySum combine" (MySum 3 <> MySum 9) (MySum 12)
      , check "MySum mempty" (mempty <> MySum 3) (MySum 3)
      , check "MyProduct combine" (MyProduct 3 <> MyProduct 4) (MyProduct 12)
      , check "MyProduct mempty" (mempty <> MyProduct 3) (MyProduct 3)
      , check "sumAll" (sumAll [1, 2, 3, 4]) 10
      , check "sumAll empty" (sumAll []) 0
      , check "productAll" (productAll [1, 2, 3, 4]) 24
      , check "productAll empty" (productAll []) 1
      ]
