module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Guards" checks
  where
    checks =
      [ check "signWord -3" (signWord (-3)) "negative"
      , check "signWord 0" (signWord 0) "zero"
      , check "signWord 4" (signWord 4) "positive"
      , check "letterGrade 95" (letterGrade 95) 'A'
      , check "letterGrade 85" (letterGrade 85) 'B'
      , check "letterGrade 75" (letterGrade 75) 'C'
      , check "letterGrade 65" (letterGrade 65) 'D'
      , check "letterGrade 50" (letterGrade 50) 'F'
      , check "maxOf3 3 9 5" (maxOf3 3 9 5) 9
      , check "maxOf3 8 2 4" (maxOf3 8 2 4) 8
      , check "maxOf3 1 2 9" (maxOf3 1 2 9) 9
      , check "bmiTell 17" (bmiTell 17) "underweight"
      , check "bmiTell 22" (bmiTell 22) "normal"
      , check "bmiTell 27" (bmiTell 27) "overweight"
      , check "bmiTell 35" (bmiTell 35) "obese"
      ]
