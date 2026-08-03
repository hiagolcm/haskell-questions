module Solution
  ( lookupUserId
  , lookupEmail
  , findEmailForUser
  ) where

-- No new operator, but a new realization: Prelude's lookup already returns
-- Maybe, so chaining two lookups is just chaining two Maybe-returning steps.
-- See description.md for the spec of each function.

lookupUserId :: String -> [(String, Int)] -> Maybe Int
lookupUserId name users = undefined

lookupEmail :: Int -> [(Int, String)] -> Maybe String
lookupEmail uid emails = undefined

findEmailForUser :: String -> [(String, Int)] -> [(Int, String)] -> Maybe String
findEmailForUser name users emails = undefined
