module Solution
  ( letterGrade
  , buildReport
  , honorRoll
  , classAverage
  , formatReportLine
  , passRate
  ) where

-- See description.md for the spec of each function.

letterGrade :: Int -> String
letterGrade score = if 
  score >= 90 then "A" else if
  score >= 80 then "B" else if
  score >= 70 then "C" else if
  score >= 60 then "D" else
  "F"

buildReport :: [String] -> [Int] -> [(String, String)]
buildReport names scores = zip names ([letterGrade x | x <- scores])

honorRoll :: [(String, Int)] -> [String]
honorRoll students = [name | (name, score) <- students, score >= 90]

classAverage :: [Int] -> Double
classAverage scores = fromIntegral(sum scores) / fromIntegral(length scores)

formatReportLine :: (String, String) -> String
formatReportLine entry = fst entry ++ ": " ++ snd entry

passRate :: [Int] -> Double
passRate scores = (fromIntegral(sum [1 | score <- scores, score >= 60]) /  fromIntegral(length scores)) * 100
