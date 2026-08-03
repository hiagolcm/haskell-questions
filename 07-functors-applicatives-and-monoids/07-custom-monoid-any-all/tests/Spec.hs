module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Custom Monoid: Any and All" checks
  where
    checks =
      [ check "MyAny combine" (MyAny True <> MyAny False) (MyAny True)
      , check "MyAny mempty" (mempty <> MyAny True) (MyAny True)
      , check "MyAny mempty<>mempty" (mempty <> mempty) (MyAny False)
      , check "MyAll combine" (MyAll True <> MyAll False) (MyAll False)
      , check "MyAll mempty" (mempty <> MyAll True) (MyAll True)
      , check "anyTrue true present" (anyTrue [False, False, True]) True
      , check "anyTrue none" (anyTrue [False, False]) False
      , check "anyTrue empty" (anyTrue []) False
      , check "allTrue all" (allTrue [True, True]) True
      , check "allTrue mixed" (allTrue [True, False]) False
      , check "allTrue empty" (allTrue []) True
      ]
