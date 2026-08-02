module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Functor Over a Tree" checks
  where
    checks =
      [ check "fmap over EmptyTree" (fmap (* 2) (EmptyTree :: Tree Int)) EmptyTree
      , check "fmap over Tree"
          (fmap (* 10) (Node 5 (Node 3 EmptyTree EmptyTree) (Node 8 EmptyTree EmptyTree)))
          (Node 50 (Node 30 EmptyTree EmptyTree) (Node 80 EmptyTree EmptyTree))
      , check "sumTree"
          (sumTree (Node 5 (Node 3 EmptyTree EmptyTree) (Node 8 EmptyTree EmptyTree)))
          16
      , check "sumTree empty" (sumTree (EmptyTree :: Tree Int)) 0
      ]
