module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Monad Class, Custom Instance" checks
  where
    checks =
      [ check "Yep 3 >>= (+1)" (Yep 3 >>= (\x -> Yep (x + 1))) (Yep 4)
      , check "Nope >>= (+1)" (Nope >>= (\x -> Yep (x + 1))) (Nope :: Perhaps Int)
      , check "addPerhaps both present" (addPerhaps (Yep 3) (Yep 4)) (Yep 7)
      , check "addPerhaps first missing" (addPerhaps Nope (Yep 4)) Nope
      , check "addPerhaps second missing" (addPerhaps (Yep 3) Nope) Nope
      ]
