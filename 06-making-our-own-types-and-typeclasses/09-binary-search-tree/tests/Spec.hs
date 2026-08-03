module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Binary Search Tree" checks
  where
    checks =
      [ check "singleton" (singleton 5) (Node 5 EmptyTree EmptyTree)
      , check "treeInsert into empty" (treeInsert 5 EmptyTree) (singleton 5)
      , check "treeElem found"
          (treeElem 5 (foldr treeInsert EmptyTree [8, 6, 4, 1, 7, 3, 5]))
          True
      , check "treeElem not found"
          (treeElem 100 (foldr treeInsert EmptyTree [8, 6, 4, 1, 7, 3, 5]))
          False
      , check "treeToList sorted"
          (treeToList (foldr treeInsert EmptyTree [8, 6, 4, 1, 7, 3, 5]))
          [1, 3, 4, 5, 6, 7, 8]
      ]
