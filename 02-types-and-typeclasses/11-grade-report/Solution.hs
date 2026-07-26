module Solution (gradeReport) where

scoreToGrade :: Int -> Char
scoreToGrade score = 
    if score >= 90 then 'A'
    else if score >= 80 then 'B'
    else if score >= 70 then 'C'
    else if score >= 60 then 'D'
    else 'F'

gradeReport :: [String] -> [String]
gradeReport scores = [score ++ ": " ++ [scoreToGrade (read score)] | score <- scores ]

-- Implement the single function described in description.md (gradeReport).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check gradeReport, so make sure it is defined at the
-- top level with exactly the signature shown.
