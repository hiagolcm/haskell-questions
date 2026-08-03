module Solution
  ( combineAll
  , combineTwo
  , orEmpty
  ) where

-- New: Monoid basics on lists (mempty, <>, mconcat) -- no new type needed,
-- lists are already a Monoid.
-- See description.md for the spec of each function.

combineAll :: [[Int]] -> [Int]
combineAll xss = undefined

combineTwo :: String -> String -> String
combineTwo a b = undefined

orEmpty :: Bool -> [Int] -> [Int]
orEmpty keep xs = undefined
