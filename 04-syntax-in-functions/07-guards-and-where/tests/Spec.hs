module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Guards and Where" checks
  where
    checks =
      [ check "bmiFrom 40 1.75" (bmiFrom 40 1.75) "underweight"
      , check "bmiFrom 60 1.75" (bmiFrom 60 1.75) "normal"
      , check "bmiFrom 90 1.75" (bmiFrom 90 1.75) "overweight"
      , check "bmiFrom 110 1.75" (bmiFrom 110 1.75) "obese"
      , check "triangleType 3 3 3" (triangleType 3 3 3) "equilateral"
      , check "triangleType 3 3 5" (triangleType 3 3 5) "isosceles"
      , check "triangleType 3 5 3" (triangleType 3 5 3) "isosceles"
      , check "triangleType 3 4 5" (triangleType 3 4 5) "scalene"
      , check "initials John Doe" (initials "John" "Doe") "J. D."
      , check "priceWithTax 100" (priceWithTax 100) 150.0
      , check "priceWithTax 50" (priceWithTax 50) 75.0
      ]
