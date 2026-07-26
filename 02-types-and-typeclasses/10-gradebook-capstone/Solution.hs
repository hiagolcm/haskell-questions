module Solution
  ( parseScores
  , attachLabels
  , rankVsAverage
  , report
  , highest
  ) where

-- Capstone: read, zip over an Enum range, compare, integer arithmetic,
-- show, and comprehensions -- everything from the chapter together.
-- See description.md for the spec of each function.

parseScores :: [String] -> [Int]
parseScores xs = [read x | x <- xs]

attachLabels :: [Int] -> [(Char, Int)]
attachLabels xs = zip ['A'..] xs

rankVsAverage :: [Int] -> [Ordering]
rankVsAverage xs = [compare x (sum xs `div` length xs) | x <- xs]

report :: [String] -> [String]
report xs = [label : ": " ++ score | (label, score) <- zip ['A'..] xs]

highest :: [String] -> Int
highest xs = maximum [read x | x <- xs]
