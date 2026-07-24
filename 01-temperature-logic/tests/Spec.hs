module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Temperature Logic" checks
  where
    checks =
      [ check "celsiusToFahrenheit 0" (celsiusToFahrenheit 0) 32.0
      , check "celsiusToFahrenheit 100" (celsiusToFahrenheit 100) 212.0
      , check "celsiusToFahrenheit (-40)" (celsiusToFahrenheit (-40)) (-40.0)
      , check "fahrenheitToCelsius 32" (fahrenheitToCelsius 32) 0.0
      , check "fahrenheitToCelsius 212" (fahrenheitToCelsius 212) 100.0
      , check "classifyTemp (-5)" (classifyTemp (-5)) "freezing"
      , check "classifyTemp 0" (classifyTemp 0) "freezing"
      , check "classifyTemp 10" (classifyTemp 10) "cold"
      , check "classifyTemp 20" (classifyTemp 20) "mild"
      , check "classifyTemp 30" (classifyTemp 30) "hot"
      , check "isComfortable 22 45" (isComfortable 22 45) True
      , check "isComfortable 30 45" (isComfortable 30 45) False
      , check "isComfortable 22 90" (isComfortable 22 90) False
      , check "isComfortable 18 30" (isComfortable 18 30) True
      , check "30 `isWarmerThan` 10" (30 `isWarmerThan` 10) True
      , check "10 `isWarmerThan` 30" (10 `isWarmerThan` 30) False
      , check "10 `isWarmerThan` 10" (10 `isWarmerThan` 10) False
      ]
