module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Functions as Values" checks
  where
    checks =
      [ check "applyTwice (+3) 10" (applyTwice (+ 3) 10) 16
      , check "applyTwice (++!) hi" (applyTwice (++ "!") "hi") "hi!!"
      , check "zipCombine (+)"
          (zipCombine (+) [1, 2, 3] [10, 20, 30])
          [11, 22, 33]
      , check "zipCombine (,)" (zipCombine (,) [1, 2] "ab") [(1, 'a'), (2, 'b')]
      , check "flipArgs (-)" (flipArgs (-) 3 10) 7
      , check "flipArgs (:)" (flipArgs (:) [1, 2, 3] 0) [0, 1, 2, 3]
      , check "applyToAll" (applyToAll [(+ 1), (* 2), negate] 5) [6, 10, -5]
      ]
