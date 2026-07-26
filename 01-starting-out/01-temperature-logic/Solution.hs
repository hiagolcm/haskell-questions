module Solution
  ( celsiusToFahrenheit
  , fahrenheitToCelsius
  , classifyTemp
  , isComfortable
  , isWarmerThan
  ) where

-- See description.md for the spec of each function.

celsiusToFahrenheit :: Double -> Double
celsiusToFahrenheit c = c * 9/5 + 32

fahrenheitToCelsius :: Double -> Double
fahrenheitToCelsius f = (f - 32) * 5/9

classifyTemp :: Double -> String
classifyTemp c = if c <= 0 then "freezing" else if c <= 15 then "cold" else if c <= 25 then "mild" else "hot"

isComfortable :: Double -> Double -> Bool
isComfortable temp humidity = temp >= 18 && temp <= 26 && humidity >=30 && humidity <=60

isWarmerThan :: Double -> Double -> Bool
isWarmerThan t1 t2 = t1 > t2
