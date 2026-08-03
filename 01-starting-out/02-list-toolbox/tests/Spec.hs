module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "List Toolbox" checks
  where
    checks =
      [ check "secondElement [10,20,30]" (secondElement [10, 20, 30]) 20
      , check "secondElement \"hello\"" (secondElement "hello") 'e'
      , check "bookend 0 9 [1,2,3]" (bookend 0 9 [1, 2, 3]) [0, 1, 2, 3, 9]
      , check "bookend 'a' 'z' \"bc\"" (bookend 'a' 'z' "bc") "abcz"
      , check "trimEnds [1..5]" (trimEnds [1 .. 5]) [2, 3, 4]
      , check "trimEnds \"abcd\"" (trimEnds "abcd") "bc"
      , check "lastTwo [1,2,3,4]" (lastTwo [1, 2, 3, 4]) (3, 4)
      , check "isGreaterList [3,2,1] [2,1,0]" (isGreaterList [3, 2, 1] [2, 1, 0]) True
      , check "isGreaterList [1,2] [1,2,3]" (isGreaterList [1, 2] [1, 2, 3]) False
      , check "isGreaterList [1,2,3] [1,2]" (isGreaterList [1, 2, 3] [1, 2]) True
      , check "middleSlice 2 5 [0..7]" (middleSlice 2 5 [0 .. 7]) [2, 3, 4]
      , check "middleSlice 0 3 \"haskell\"" (middleSlice 0 3 "haskell") "has"
      ]
