module Solution
  ( rightTriangles
  , countVowels
  , keepEvensInEach
  , removeForbidden
  , cartesianProducts
  ) where

-- See description.md for the spec of each function.

rightTriangles :: Int -> [(Int, Int, Int)]
rightTriangles n = [(a, b, c) | 
  a <- [1..n],
  b <- [1..n],
  c <- [1..n],
  a <= b,
  b < c,
  (a*a + b*b) == c*c]

countVowels :: String -> Int
countVowels s = sum [1 | x <- s, x `elem` "aeiouAEIOU"]

keepEvensInEach :: [[Int]] -> [[Int]]
keepEvensInEach xxs = [ [x | x <-xs, even x] | xs <- xxs]

removeForbidden :: [Int] -> [Int] -> [Int]
removeForbidden forbidden xs = [x | x <- xs, not (x `elem` forbidden)]

cartesianProducts :: [Int] -> [Int] -> [Int]
cartesianProducts xs ys = [x * y | x <- xs, y <- ys]
