module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Functor Basics" checks
  where
    checks =
      [ check "fmap (+1) (Box 5)" (fmap (+ 1) (Box 5)) (Box 6)
      , check "fmap show (Box 5)" (fmap show (Box 5)) (Box "5")
      , check "fmap (+1) (Some 5)" (fmap (+ 1) (Some 5)) (Some 6)
      , check "fmap (+1) None" (fmap (+ 1) (None :: Opt Int)) None
      ]
