module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Report Card" checks
  where
    checks =
      [ check "letterGrade 95" (letterGrade 95) "A"
      , check "letterGrade 72" (letterGrade 72) "C"
      , check "letterGrade 40" (letterGrade 40) "F"
      , check "letterGrade 60" (letterGrade 60) "D"
      , check "buildReport"
          (buildReport ["Ada", "Alan"] [95, 72])
          [("Ada", "A"), ("Alan", "C")]
      , check "honorRoll"
          (honorRoll [("Ada", 95), ("Alan", 72), ("Grace", 91)])
          ["Ada", "Grace"]
      , check "honorRoll none" (honorRoll [("Bob", 50)]) []
      , check "classAverage [95,72,91]" (classAverage [95, 72, 91]) 86.0
      , check "formatReportLine" (formatReportLine ("Ada", "A")) "Ada: A"
      , check "passRate [95,72,50,60]" (passRate [95, 72, 50, 60]) 75.0
      , check "passRate [50,55]" (passRate [50, 55]) 0.0
      , check "passRate [60,60]" (passRate [60, 60]) 100.0
      ]
