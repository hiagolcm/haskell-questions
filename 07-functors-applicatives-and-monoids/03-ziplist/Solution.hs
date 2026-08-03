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
zipSums xs ys = getZipList $ (+) <$> ZipList xs <*> ZipList ys

zipMax :: [Int] -> [Int] -> [Int]
zipMax xs ys = getZipList $ (max) <$> ZipList xs <*> ZipList ys

zipTriple :: String -> String -> String -> [(Char, Char, Char)]
zipTriple xs ys zs = getZipList $ (\x y z -> (x, y, z)) <$> ZipList xs <*> ZipList ys <*> ZipList zs
