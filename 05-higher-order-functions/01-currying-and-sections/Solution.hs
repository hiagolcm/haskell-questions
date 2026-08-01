module Solution
  ( addFive
  , half
  , isBig
  , dropThree
  , isVowel
  ) where

-- New: currying / partial application and sections.
-- See description.md for the spec of each function.

addFive :: Int -> Int
addFive = (+ 5)

half :: Double -> Double
half = (/ 2)

isBig :: Int -> Bool
isBig = (>100)

dropThree :: Int -> Int
dropThree = (subtract 3)

isVowel :: Char -> Bool
isVowel = (`elem` "aeiouAEIOU")
