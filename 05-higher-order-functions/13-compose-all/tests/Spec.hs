module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Compose All" checks
  where
    checks =
      [ check "composeAll [+1,*3,subtract 2] 5"
          (composeAll [(+ 1), (* 3), subtract 2] 5)
          16
      , check "composeAll [] 5" (composeAll [] 5) 5
      , check "composeAll [negate] 5" (composeAll [negate] 5) (-5)
      , check "composeAll [*2,*2,*2] 1" (composeAll [(* 2), (* 2), (* 2)] 1) 8
      ]
