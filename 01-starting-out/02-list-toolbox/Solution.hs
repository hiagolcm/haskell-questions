module Solution
  ( secondElement
  , bookend
  , trimEnds
  , lastTwo
  , isGreaterList
  , middleSlice
  ) where

-- See description.md for the spec of each function.

secondElement :: [a] -> a
secondElement xs = head (tail xs)

bookend :: a -> a -> [a] -> [a]
bookend front back xs = (front:xs) ++ [back]

trimEnds :: [a] -> [a]
trimEnds xs = tail (init xs)

lastTwo :: [a] -> (a, a)
lastTwo xs = (xs !! (length(xs) - 2), xs !! (length(xs) - 1))

isGreaterList :: Ord a => [a] -> [a] -> Bool
isGreaterList xs ys = xs > ys

middleSlice :: Int -> Int -> [a] -> [a]
middleSlice start end xs = drop start (take end xs)
