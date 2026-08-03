module Solution
  ( allSums
  , allPairs
  , applyAllOps
  ) where
import GHC.Internal.Functor.ZipList (ZipList(ZipList))

-- New: Applicative for lists ([] <*> []) -- every combination of elements.
-- See description.md for the spec of each function.

allSums :: [Int] -> [Int] -> [Int]
allSums xs ys = (+) <$> xs <*> ys

allPairs :: [a] -> [b] -> [(a, b)]
allPairs xs ys = (\x y -> (x, y)) <$> xs <*> ys

applyAllOps :: [Int -> Int] -> [Int] -> [Int]
applyAllOps fs xs = fs <*> xs
