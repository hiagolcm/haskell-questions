module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Recursive List" checks
  where
    checks =
      [ check "toMyList [1,2,3]"
          (toMyList [1, 2, 3])
          (MyCons 1 (MyCons 2 (MyCons 3 MyEmpty)))
      , check "toMyList []" (toMyList ([] :: [Int])) MyEmpty
      , check "fromMyList"
          (fromMyList (MyCons 1 (MyCons 2 MyEmpty)))
          [1, 2]
      , check "fromMyList empty" (fromMyList (MyEmpty :: MyList Int)) []
      , check "myLength 3"
          (myLength (MyCons 1 (MyCons 2 (MyCons 3 MyEmpty))))
          3
      , check "myLength 0" (myLength (MyEmpty :: MyList Int)) 0
      ]
