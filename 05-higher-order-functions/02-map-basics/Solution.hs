module Solution
  ( doubleAll
  , squareAll
  , stringLengths
  , showAll
  , firstOfEach
  ) where

-- New: map. Reuses show (ch2) and fst (ch1).
-- See description.md for the spec of each function.

doubleAll :: [Int] -> [Int]
doubleAll xs = map (* 2) xs

squareAll :: [Int] -> [Int]
squareAll xs = map (^ 2) xs

stringLengths :: [String] -> [Int]
stringLengths ws = map length ws

showAll :: [Int] -> [String]
showAll xs = map show xs

firstOfEach :: [(Int, Int)] -> [Int]
firstOfEach ps = map fst ps
