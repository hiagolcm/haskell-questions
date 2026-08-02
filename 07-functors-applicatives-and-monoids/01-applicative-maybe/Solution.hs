module Solution
  ( addMaybe
  , concatMaybeStrings
  , maybeTriple
  ) where

-- New: Applicative for Maybe (pure, <*>) -- combine values only when both
-- are present.
-- See description.md for the spec of each function.

addMaybe :: Maybe Int -> Maybe Int -> Maybe Int
addMaybe a b = undefined

concatMaybeStrings :: Maybe String -> Maybe String -> Maybe String
concatMaybeStrings a b = undefined

maybeTriple :: Maybe Int -> Maybe Int -> Maybe Int -> Maybe Int
maybeTriple a b c = undefined
