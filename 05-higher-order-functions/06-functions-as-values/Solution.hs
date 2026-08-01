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
applyTwice f x = f (f x)

zipCombine :: (a -> b -> c) -> [a] -> [b] -> [c]
zipCombine _ _ [] = []
zipCombine _ [] _ = []
zipCombine f (x:xs) (y:ys) = f x y : zipCombine f xs ys

flipArgs :: (a -> b -> c) -> b -> a -> c
flipArgs f = \x y -> f y x

applyToAll :: [a -> b] -> a -> [b]
applyToAll [] _ = []
applyToAll (f:fs) x = f x : applyToAll fs x
