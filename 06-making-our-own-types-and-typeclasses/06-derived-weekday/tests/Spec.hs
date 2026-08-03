module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Derived Weekday" checks
  where
    checks =
      [ check "isWeekend Saturday" (isWeekend Saturday) True
      , check "isWeekend Sunday" (isWeekend Sunday) True
      , check "isWeekend Monday" (isWeekend Monday) False
      , check "nextDay Monday" (nextDay Monday) Tuesday
      , check "nextDay Sunday" (nextDay Sunday) Monday
      , check "nextDay Friday" (nextDay Friday) Saturday
      , check "allWeekdays"
          allWeekdays
          [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
      ]
