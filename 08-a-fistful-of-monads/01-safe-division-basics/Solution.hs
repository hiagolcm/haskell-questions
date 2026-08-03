module Solution
  ( safeDiv
  , chainedDivide
  , safeDivChain
  ) where

-- New: >>= (bind) for Maybe -- chain computations that might fail.
-- See description.md for the spec of each function.

safeDiv :: Int -> Int -> Maybe Int
safeDiv x y = undefined

chainedDivide :: Int -> Int -> Int -> Maybe Int
chainedDivide a b c = undefined

safeDivChain :: Int -> Int -> Int -> Int -> Maybe Int
safeDivChain a b c d = undefined
