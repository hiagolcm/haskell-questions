module Solution
  ( validateName
  , validateAge
  , buildProfile
  ) where

-- New: do notation for chaining several independent Maybe checks.
-- See description.md for the spec of each function.

validateName :: String -> Maybe String
validateName name = undefined

validateAge :: Int -> Maybe Int
validateAge age = undefined

buildProfile :: String -> Int -> Maybe String
buildProfile name age = undefined
