module Solution
  ( swapPair
  , indexedList
  , sumOfProducts
  , maxProduct
  , zipNames
  , firsts
  ) where

-- See description.md for the spec of each function.

swapPair :: (a, b) -> (b, a)
swapPair p = (snd p, fst p)

indexedList :: [a] -> [(Int, a)]
indexedList xs = zip [0..] xs

sumOfProducts :: [(Int, Int)] -> Int
sumOfProducts ps = sum [ fst p * snd p | p <- ps]

maxProduct :: [(Int, Int)] -> Int
maxProduct ps = maximum [ fst p * snd p | p <- ps]

zipNames :: [String] -> [String] -> [(String, String)]
zipNames firstNames lastNames = zip firstNames lastNames

firsts :: [(a, b)] -> [a]
firsts ps = [a | (a,b) <- ps]
