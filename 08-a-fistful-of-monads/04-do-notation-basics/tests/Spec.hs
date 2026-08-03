module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Do-Notation Basics" checks
  where
    checks =
      [ check "validateName ok" (validateName "Ana") (Just "Ana")
      , check "validateName empty" (validateName "") Nothing
      , check "validateAge ok" (validateAge 30) (Just 30)
      , check "validateAge negative" (validateAge (-1)) Nothing
      , check "validateAge too big" (validateAge 200) Nothing
      , check "buildProfile ok" (buildProfile "Ana" 30) (Just "Ana is 30 years old")
      , check "buildProfile bad name" (buildProfile "" 30) Nothing
      , check "buildProfile bad age" (buildProfile "Ana" (-1)) Nothing
      ]
