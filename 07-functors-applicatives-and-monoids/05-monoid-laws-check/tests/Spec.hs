module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Monoid Laws Check" checks
  where
    checks =
      [ check "leftIdentityHolds" (leftIdentityHolds [1, 2, 3]) True
      , check "leftIdentityHolds empty" (leftIdentityHolds []) True
      , check "rightIdentityHolds" (rightIdentityHolds [1, 2, 3]) True
      , check "associativityHolds"
          (associativityHolds [1] [2, 3] [4])
          True
      , check "associativityHolds with empties"
          (associativityHolds [] [1] [])
          True
      ]
