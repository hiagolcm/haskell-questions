module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Boolean Gate" checks
  where
    checks =
      [ check "xorBool True False" (xorBool True False) True
      , check "xorBool False True" (xorBool False True) True
      , check "xorBool True True" (xorBool True True) False
      , check "xorBool False False" (xorBool False False) False
      , check "majorityVote True True False" (majorityVote True True False) True
      , check "majorityVote True False False" (majorityVote True False False) False
      , check "majorityVote True True True" (majorityVote True True True) True
      , check "majorityVote False False False" (majorityVote False False False) False
      , check "isValidCode \"1234\"" (isValidCode "1234") True
      , check "isValidCode \"12a4\"" (isValidCode "12a4") False
      , check "isValidCode \"123\"" (isValidCode "123") False
      , check "isValidCode \"12345\"" (isValidCode "12345") False
      , check "inRange 1 10 5" (inRange 1 10 5) True
      , check "inRange 1 10 15" (inRange 1 10 15) False
      , check "inRange 1 10 1" (inRange 1 10 1) True
      , check "inRange 1 10 10" (inRange 1 10 10) True
      , check "bothPresent 1 3 [1,2,3]" (bothPresent 1 3 [1, 2, 3]) True
      , check "bothPresent 1 4 [1,2,3]" (bothPresent 1 4 [1, 2, 3]) False
      ]
