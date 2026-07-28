module Solution
  ( sumList
  , lengthList
  , productList
  , allTrue
  , countDown
  ) where

-- New: recursion built on pattern matching (base case + (x:xs) case).
-- See description.md for the spec of each function.

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

lengthList :: [a] -> Int
lengthList [] = 0
lengthList (x:xs) = 1 + lengthList xs

productList :: [Int] -> Int
productList [] = 1
productList (x:xs) = x * productList xs

allTrue :: [Bool] -> Bool
allTrue [] = True
allTrue (x:xs) = x && allTrue xs

countDown :: Int -> [Int]
countDown 0 = [0]
countDown n = [n] ++ countDown (n-1)
