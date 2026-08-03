module Solution
  ( applyTwice
  , zipCombine
  , flipArgs
  , applyToAll
  ) where

-- New: functions as parameters and return values (applyTwice, zipWith',
-- flip'). Reuses recursion and pattern matching from chapter 4.
-- See description.md for the spec of each function.

applyTwice :: (a -> a) -> a -> a
applyTwice f x = undefined

zipCombine :: (a -> b -> c) -> [a] -> [b] -> [c]
zipCombine f xs ys = undefined

flipArgs :: (a -> b -> c) -> b -> a -> c
flipArgs f = undefined

applyToAll :: [a -> b] -> a -> [b]
applyToAll fs x = undefined
