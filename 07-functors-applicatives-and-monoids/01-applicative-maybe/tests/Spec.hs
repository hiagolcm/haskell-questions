module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Applicative Maybe" checks
  where
    checks =
      [ check "addMaybe both present" (addMaybe (Just 3) (Just 5)) (Just 8)
      , check "addMaybe second missing" (addMaybe (Just 3) Nothing) Nothing
      , check "addMaybe first missing" (addMaybe Nothing (Just 5)) Nothing
      , check "concatMaybeStrings both"
          (concatMaybeStrings (Just "foo") (Just "bar"))
          (Just "foobar")
      , check "concatMaybeStrings missing"
          (concatMaybeStrings Nothing (Just "bar"))
          Nothing
      , check "maybeTriple all present"
          (maybeTriple (Just 1) (Just 2) (Just 3))
          (Just 6)
      , check "maybeTriple one missing"
          (maybeTriple (Just 1) Nothing (Just 3))
          Nothing
      ]
