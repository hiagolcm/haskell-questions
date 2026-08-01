module Solution
  ( squaresOfEvens
  , lettersOnly
  , namesStartingWith
  , sumOfSquaresOfOdds
  , wordCountsFor
  ) where

-- Combines map and filter in the same pipeline. Reuses sum from chapter 1.
-- See description.md for the spec of each function.

squaresOfEvens :: [Int] -> [Int]
squaresOfEvens xs = map (^ 2) (filter even xs)

lettersOnly :: String -> String
lettersOnly s = filter (isLetter) s
  where isLetter x = x `elem` (['a'..'z'] ++ ['A'..'Z'])

namesStartingWith :: Char -> [String] -> [String]
namesStartingWith c ws = filter (startsWith c) ws 
  where startsWith c ws = head ws == c 

sumOfSquaresOfOdds :: [Int] -> Int
sumOfSquaresOfOdds xs = sum (map (^2) (filter odd xs))

wordCountsFor :: Int -> [String] -> Int
wordCountsFor n ws = length (filter (isGreater n) ws)
  where isGreater n w = length w > n
