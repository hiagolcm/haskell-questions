module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Direction Turn" checks
  where
    checks =
      [ check "turnRight North" (turnRight North) East
      , check "turnRight East" (turnRight East) South
      , check "turnRight South" (turnRight South) West
      , check "turnRight West" (turnRight West) North
      ]
