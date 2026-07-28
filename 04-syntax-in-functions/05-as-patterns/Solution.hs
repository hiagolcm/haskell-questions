module Solution
  ( repeatFirst
  , describeString
  , firstTwoEqual
  , dupEach
  ) where

-- New: as-patterns (all@(x:xs)). Reuses recursion (ex 04) and Eq (chapter 2).
-- See description.md for the spec of each function.

repeatFirst :: [a] -> [a]
repeatFirst [] = []
repeatFirst all@(x:_) = x:all

describeString :: String -> String
describeString "" = "empty"
describeString all@(c:_) = all ++ " starts with " ++ [c]

firstTwoEqual :: Eq a => [a] -> Bool
firstTwoEqual [] = False
firstTwoEqual [x] = False
firstTwoEqual (x:y:_) = x == y

dupEach :: [a] -> [a]
dupEach [] = []
dupEach (x:xs) = [x, x] ++ dupEach xs
