module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Record Syntax" checks
  where
    checks =
      [ check "isAdult adult" (isAdult (Person "Ann" 20 "Rome")) True
      , check "isAdult minor" (isAdult (Person "Bo" 15 "Rome")) False
      , check "sameCity same"
          (sameCity (Person "Ann" 20 "Rome") (Person "Bo" 15 "Rome"))
          True
      , check "sameCity different"
          (sameCity (Person "Ann" 20 "Rome") (Person "Cid" 30 "Oslo"))
          False
      , check "describePerson"
          (describePerson (Person "Ann" 20 "Rome"))
          "Ann (20) from Rome"
      ]
