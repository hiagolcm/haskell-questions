module Solution
  ( zipSums
  , zipMax
  , zipTriple
  ) where

import Control.Applicative (ZipList (..))

-- New: ZipList -- a different Applicative instance for lists that combines
-- element-wise (like zipWith) instead of every combination.
-- See description.md for the spec of each function.

zipSums :: [Int] -> [Int] -> [Int]
zipSums xs ys = undefined

zipMax :: [Int] -> [Int] -> [Int]
zipMax xs ys = undefined

zipTriple :: String -> String -> String -> [(Char, Char, Char)]
zipTriple xs ys zs = undefined
