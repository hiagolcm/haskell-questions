module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Safe Lookup Chain" checks
  where
    checks =
      [ check "lookupUserId found" (lookupUserId "ana" [("ana", 1), ("bo", 2)]) (Just 1)
      , check "lookupUserId missing" (lookupUserId "cid" [("ana", 1), ("bo", 2)]) Nothing
      , check "lookupEmail found"
          (lookupEmail 1 [(1, "ana@x.com"), (2, "bo@x.com")])
          (Just "ana@x.com")
      , check "findEmailForUser ok"
          (findEmailForUser "ana" [("ana", 1), ("bo", 2)] [(1, "ana@x.com"), (2, "bo@x.com")])
          (Just "ana@x.com")
      , check "findEmailForUser missing user"
          (findEmailForUser "cid" [("ana", 1), ("bo", 2)] [(1, "ana@x.com"), (2, "bo@x.com")])
          Nothing
      , check "findEmailForUser dangling id"
          (findEmailForUser "ana" [("ana", 9)] [(1, "ana@x.com")])
          Nothing
      ]
