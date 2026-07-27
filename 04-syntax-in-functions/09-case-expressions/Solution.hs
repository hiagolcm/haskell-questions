module Solution
  ( describeList
  , headOr
  , orderingWord
  , signCase
  ) where

-- New: case ... of expressions (pattern matching inside an expression).
-- Reuses the Ordering type / compare from chapter 2.
-- See description.md for the spec of each function.

describeList :: [a] -> String
describeList xs = undefined

headOr :: a -> [a] -> a
headOr def xs = undefined

orderingWord :: Ordering -> String
orderingWord o = undefined

signCase :: Int -> String
signCase n = undefined
