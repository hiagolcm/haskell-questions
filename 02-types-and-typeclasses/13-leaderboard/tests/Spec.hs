module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Leaderboard" checks
  where
    checks =
      [ check "leaderboard a-b-c"
          (leaderboard [("a", 4), ("b", 8), ("c", 6)])
          ["b - 8 *", "c - 6"]
      , check "leaderboard x-y-z"
          (leaderboard [("x", 1), ("y", 3), ("z", 2)])
          ["y - 3 *", "z - 2"]
      , check "leaderboard solo"
          (leaderboard [("solo", 5)])
          ["solo - 5 *"]
      ]
