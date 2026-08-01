module Solution
  ( sumSquaresOfEvens
  , countNegatives
  , describeAll
  , processScores
  ) where

-- Capstone: composition (.) and point-free style, tying together map,
-- filter, folds, sections, and $ from this chapter.
-- See description.md for the spec of each function.

sumSquaresOfEvens :: [Int] -> Int
sumSquaresOfEvens = sum . map (^2) . filter (even)

countNegatives :: [Int] -> Int
countNegatives = length . filter (<0)

describeAll :: [Int] -> [String]
describeAll xs = map describe xs
  where describe x = if x < 0 then "neg" else if x == 0 then "zero" else "pos"

processScores :: [Int] -> String
processScores xs = let
  average = fromIntegral(sum xs) / fromIntegral(length xs)
  passed =  length . filter (>= 60) $ xs
  in show(passed) ++ " passed, average " ++ show(average)