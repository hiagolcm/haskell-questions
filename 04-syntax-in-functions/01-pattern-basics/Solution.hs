module Solution
  ( isZero
  , notB
  , smallName
  , boolToInt
  ) where

-- New: pattern matching in function definitions.
-- Write each as several equations, not with if/then/else.
-- See description.md for the spec of each function.

isZero :: Int -> Bool
isZero 0 = True
isZero x = False

notB :: Bool -> Bool
notB False = True
notB True = False

smallName :: Int -> String
smallName 0 = "zero"
smallName 1 = "one"
smallName 2 = "two"
smallName 3 = "three"
smallName x =  "many"

boolToInt :: Bool -> Int
boolToInt False = 0
boolToInt True = 1 
