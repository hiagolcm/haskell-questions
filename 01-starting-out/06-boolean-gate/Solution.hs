module Solution
  ( xorBool
  , majorityVote
  , isValidCode
  , inRange
  , bothPresent
  ) where

-- See description.md for the spec of each function.

xorBool :: Bool -> Bool -> Bool
xorBool a b = if a && b then False else a || b 

majorityVote :: Bool -> Bool -> Bool -> Bool
majorityVote a b c = a && b || a && c || b && c

isValidCode :: String -> Bool
isValidCode code = length(code) == 4 && sum [1 | c <- code, c `elem` ['0'..'9']] == 4

inRange :: Int -> Int -> Int -> Bool
inRange lo hi x = x >= lo && x <= hi

bothPresent :: Eq a => a -> a -> [a] -> Bool
bothPresent x y xs = x `elem` xs && y `elem` xs
