module Solution
  ( takeEveryOther
  , labelWithLetters
  , firstNFromCycle
  , paddedTo
  , infiniteSquares
  ) where

-- See description.md for the spec of each function.

takeEveryOther :: [a] -> [a]
takeEveryOther xs = [ b | (a,b) <- zip [0..] xs, even a]

labelWithLetters :: [a] -> [(Char, a)]
labelWithLetters xs = zip ['a'..] xs

firstNFromCycle :: Int -> [a] -> [a]
firstNFromCycle n xs = take n (cycle xs)

paddedTo :: Int -> a -> [a] -> [a]
paddedTo n pad xs = if length(xs) > n 
  then xs
  else xs ++ (replicate (n - length(xs)) pad)

infiniteSquares :: Int -> [Int]
infiniteSquares n = take n [x*x | x <- [1..]]
