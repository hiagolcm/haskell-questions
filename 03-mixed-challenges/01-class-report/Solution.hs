module Solution (classReport) where

parseScoreList :: [String] -> [Int]
parseScoreList xs = [read x | x <- xs]

calculateAverage :: [Int] -> Double
calculateAverage scores = fromIntegral (sum scores) /  fromIntegral (length scores)

result :: Double -> String
result average =  if average >= 60 then "(pass)" else "(fail)"

printStudent :: (String, [String]) -> String
printStudent (name, scores) = name ++ 
  ": " ++ 
  show average ++ 
  " " ++ 
  result average
  where average = calculateAverage (parseScoreList scores)

classReport :: [(String, [String])] -> [String]
classReport students = [printStudent student | student <- students]

-- Implement the single function described in description.md (classReport).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check classReport, so make sure it is defined at the
-- top level with exactly the signature shown.
