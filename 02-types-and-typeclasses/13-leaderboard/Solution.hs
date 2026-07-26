module Solution (leaderboard) where

sumOfScores :: [(String, Int)] -> Int
sumOfScores ps = sum [score | (_, score) <- ps]

maximumOfScores :: [(String, Int)] -> Int
maximumOfScores ps = maximum [score | (_, score) <- ps]

averageScore :: [(String, Int)]  -> Double
averageScore scores = fromIntegral (sumOfScores scores) /  fromIntegral (length scores)

printScore :: String -> Int -> Int -> String
printScore name value maximumScore = name ++ 
    " - " ++  
    show value ++
    if value >= maximumScore then " *" else ""

leaderboard :: [(String, Int)] -> [String]
leaderboard ps = [printScore name score (maximumOfScores ps) | (name, score) <- ps, fromIntegral score >= averageScore ps]

-- Implement the single function described in description.md (leaderboard).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check leaderboard, so make sure it is defined at the
-- top level with exactly the signature shown.
