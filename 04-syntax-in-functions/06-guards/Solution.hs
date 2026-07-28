module Solution
  ( signWord
  , letterGrade
  , maxOf3
  , bmiTell
  ) where

-- New: guards (boolean tests after the function head, ending in otherwise).
-- See description.md for the spec of each function.

signWord :: Int -> String
signWord n 
  | n < 0 = "negative"
  | n == 0 = "zero"
  | n > 0 = "positive"

letterGrade :: Int -> Char
letterGrade score
  | score >= 90 = 'A'
  | score >= 80 = 'B'
  | score >= 70 = 'C'
  | score >= 60 = 'D'
  | otherwise = 'F'


maxOf3 :: Int -> Int -> Int -> Int
maxOf3 a b c 
  | a > b && a > c = a
  | b > a && b > c = b
  | c > b && c > a = c

bmiTell :: Double -> String
bmiTell x  
  | x < 18.5 = "underweight"
  | x < 25 = "normal"
  | x < 30 = "overweight"
  | otherwise = "obese"
