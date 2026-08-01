module Solution
  ( keepEvens
  , keepPositives
  , keepVowels
  , keepLongWords
  , dropZeros
  ) where

-- New: filter.
-- See description.md for the spec of each function.

keepEvens :: [Int] -> [Int]
keepEvens xs = filter even xs

keepPositives :: [Int] -> [Int]
keepPositives xs = filter (> 0) xs

keepVowels :: String -> String
keepVowels s = filter (`elem` "aeiouAEIOU") s

keepLongWords :: Int -> [String] -> [String]
keepLongWords n ws = filter (isLong n) ws
  where isLong limit x = limit < length x

dropZeros :: [Int] -> [Int]
dropZeros xs = filter (/= 0) xs
