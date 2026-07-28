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
describeList xs = case xs of [] -> "empty"
                             [x] -> "one"
                             otherwise -> "many"

headOr :: a -> [a] -> a
headOr def xs = case xs of [] -> def
                           otherwise -> head xs

orderingWord :: Ordering -> String
orderingWord o = case o of LT -> "less"; EQ -> "equal"; otherwise -> "greater"

signCase :: Int -> String
signCase n = case compare n 0 of GT -> "positive"; EQ -> "zero"; LT -> "negative"
