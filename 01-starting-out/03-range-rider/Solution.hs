module Solution
  ( firstNEvens
  , countdownFrom
  , alphabetChunk
  , repeatPattern
  , greetNTimes
  , squareRange
  ) where

-- See description.md for the spec of each function.

firstNEvens :: Int -> [Int]
firstNEvens n = take n [2, 4 ..]

countdownFrom :: Int -> [Int]
countdownFrom n = [n, n-1 .. 1]

alphabetChunk :: Char -> Char -> String
alphabetChunk start end = [start .. end]

repeatPattern :: Int -> [a] -> [a]
repeatPattern n xs = take (n * length xs) (cycle xs)

greetNTimes :: Int -> String -> [String]
greetNTimes n msg = replicate n msg

squareRange :: Int -> Int -> [Int]
squareRange lo hi = [ x*x | x <- [lo..hi]]
