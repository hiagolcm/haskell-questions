module Solution
  ( normalizeInts
  , keepBig
  , sumOfReadable
  , compareStrings
  ) where

-- Integrative: read (with type annotations), show, compare together.
-- Reuses comprehensions and sum from chapter 1.
-- See description.md for the spec of each function.

normalizeInts :: [String] -> [String]
normalizeInts xs = [show (read x :: Int) | x <- xs]

keepBig :: Int -> [String] -> [Int]
keepBig t xs = [read x :: Int | x <- xs, (read x :: Int) > t]

sumOfReadable :: [String] -> String
sumOfReadable xs = "total: " ++ show (sum [read x :: Int | x <- xs])

compareStrings :: String -> String -> Ordering
compareStrings a b = compare (read a :: Int) (read b :: Int)
