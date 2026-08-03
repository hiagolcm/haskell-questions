module Solution
  ( validateScore
  , finalizeScore
  ) where

-- New: return -- injecting a plain value into a Maybe chain generically,
-- instead of always writing Just.
-- See description.md for the spec of each function.

validateScore :: Int -> Maybe Int
validateScore raw = undefined

finalizeScore :: Int -> Int -> Maybe Int
finalizeScore raw bonus = undefined
