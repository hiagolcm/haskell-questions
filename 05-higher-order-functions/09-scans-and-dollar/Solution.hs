module Solution
  ( runningTotals
  , runningMax
  , sumOfSquaresUnder
  , countStepsToExceed
  ) where

-- New: scanl / scanl1 (every intermediate accumulator) and $ (low-precedence
-- function application).
-- See description.md for the spec of each function.

runningTotals :: [Int] -> [Int]
runningTotals xs = scanl (+) 0 xs

runningMax :: [Int] -> [Int]
runningMax xs = scanl1 (\acum x -> if x > acum then x else acum) xs

sumOfSquaresUnder :: Int -> Int
sumOfSquaresUnder limit = sum . takeWhile (< limit) . map (^ 2) $ [1..]

countStepsToExceed :: Int -> [Int] -> Int
countStepsToExceed limit xs = length .filter (<= limit) . scanl1 (+) $ xs
