module Solution
  ( isPalindrome
  , firstLetters
  , removeVowels
  , charAt
  , truncateWithEllipsis
  , countOccurrences
  ) where

-- See description.md for the spec of each function.

isPalindrome :: String -> Bool
isPalindrome s = reverse s == s

firstLetters :: [String] -> String
firstLetters ws = [head w | w <- ws]

removeVowels :: String -> String
removeVowels s = [c | c <- s, not (c `elem` "aeiouAEIOU")]

charAt :: Int -> String -> Char
charAt i s = s !! i

truncateWithEllipsis :: Int -> String -> String
truncateWithEllipsis n s = if length (s) <= n then s else (take n s) ++ "..."

countOccurrences :: Char -> String -> Int
countOccurrences c s = sum [1 | x <- s, x == c]
