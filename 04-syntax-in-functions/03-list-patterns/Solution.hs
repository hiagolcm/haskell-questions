module Solution
  ( firstOrZero
  , tailOrEmpty
  , sumFirstTwo
  , describeLen
  ) where

-- New: matching a list by shape ([], (x:xs), [_,_], (x:y:_)).
-- See description.md for the spec of each function.

firstOrZero :: [Int] -> Int
firstOrZero [] = 0
firstOrZero (x:_) = x

tailOrEmpty :: [a] -> [a]
tailOrEmpty [] = []
tailOrEmpty (_:xs) = xs

sumFirstTwo :: [Int] -> Int
sumFirstTwo [] = 0
sumFirstTwo [x] = 0
sumFirstTwo (x:y:_) = x + y 

describeLen :: [a] -> String
describeLen [] = "empty"
describeLen [x] = "one"
describeLen (x:y:[]) = "two"
describeLen xs = "many"
