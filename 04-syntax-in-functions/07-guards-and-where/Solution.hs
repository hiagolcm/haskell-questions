module Solution
  ( bmiFrom
  , triangleType
  , initials
  , priceWithTax
  ) where

-- New: where bindings (shared values / helpers / pattern bindings) with guards.
-- See description.md for the spec of each function.

bmiFrom :: Double -> Double -> String
bmiFrom weight height
  | bmi < 18.5 = "underweight"
  | bmi < 25 = "normal"
  | bmi < 30 = "overweight"
  | otherwise = "obese"
  where bmi = weight / (height * height)

triangleType :: Int -> Int -> Int -> String
triangleType a b c
  | a == b && a == c = "equilateral"
  | a == b && a /= c || a == c && a /= b = "isosceles" 
  | otherwise = "scalene"

initials :: String -> String -> String
initials (f:_) (l: _) = f : ". " ++ (l: ".")

priceWithTax :: Double -> Double
priceWithTax price = price * tax 
  where tax = 1.5
