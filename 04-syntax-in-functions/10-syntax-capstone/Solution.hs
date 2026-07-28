module Solution
  ( countPositives
  , compress
  , gradeSummary
  , report
  ) where

-- Capstone: pattern matching, recursion, guards, where, and case together,
-- plus show / Eq / fromIntegral from earlier chapters.
-- See description.md for the spec of each function.

countPositives :: [Int] -> Int
countPositives [] = 0
countPositives (x:xs) 
  | x > 0 = 1 + countPositives xs
  | otherwise = countPositives xs

compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs) 
  | x == y =  compress (y:xs)
  | otherwise = x:compress (y:xs)

gradeSummary :: [Int] -> String
gradeSummary xs =
  "average " ++ show average ++ ": " ++ verdict
  where 
    average = fromIntegral (sum xs) / fromIntegral (length xs)
    verdict = if average >= 60 then "pass" else "fail"

report :: [Int] -> String
report [] = "empty class"
report xs = gradeSummary xs
