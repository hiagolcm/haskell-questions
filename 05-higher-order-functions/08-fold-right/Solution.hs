module Solution
  ( mapFold
  , filterFold
  , maxFold
  , concatFold
  ) where

-- New: foldr (right-to-left, \x acc -> ...) and foldr1 (no explicit seed).
-- See description.md for the spec of each function.

mapFold :: (a -> b) -> [a] -> [b]
mapFold f xs = foldr (\x acc -> f x : acc) [] xs

filterFold :: (a -> Bool) -> [a] -> [a]
filterFold p xs = foldr (\x acc -> if p x then x : acc else acc) [] xs

maxFold :: Ord a => [a] -> a
maxFold xs = foldr1 (\x acc -> if x > acc then x else acc) xs

concatFold :: [[a]] -> [a]
concatFold xss = foldr1 (\xs acc -> xs ++ acc) xss
