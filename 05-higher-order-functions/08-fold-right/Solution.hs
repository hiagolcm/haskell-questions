module Solution
  ( mapFold
  , filterFold
  , maxFold
  , concatFold
  ) where

-- New: foldr (right-to-left, \x acc -> ...) and foldr1 (no explicit seed).
-- See description.md for the spec of each function.

mapFold :: (a -> b) -> [a] -> [b]
mapFold f xs = undefined

filterFold :: (a -> Bool) -> [a] -> [a]
filterFold p xs = undefined

maxFold :: Ord a => [a] -> a
maxFold xs = undefined

concatFold :: [[a]] -> [a]
concatFold xss = undefined
