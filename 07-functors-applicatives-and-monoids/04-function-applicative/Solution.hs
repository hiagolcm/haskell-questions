module Solution
  ( sumOfTwoFns
  , maxOfTwoFns
  ) where

-- New: Applicative for functions ((->) r) -- combine functions that share
-- the same input, using <$>/<*> on the functions themselves.
-- See description.md for the spec of each function.

sumOfTwoFns :: (Int -> Int) -> (Int -> Int) -> Int -> Int
sumOfTwoFns f g = undefined

maxOfTwoFns :: (Int -> Int) -> (Int -> Int) -> Int -> Int
maxOfTwoFns f g = undefined
