module Solution
  ( tagValues
  , passFail
  , withVerdict
  , summaryLine
  ) where

-- Integrative: a polymorphic Show constraint, if-inside-comprehension, Ord,
-- show, tuples, and aggregators (length/maximum/minimum).
-- See description.md for the spec of each function.

tagValues :: Show a => [a] -> [String]
tagValues xs = ["<" ++ show x ++ ">" | x <- xs]

passFail :: Int -> [Int] -> [String]
passFail t xs = [if x >= t then "pass" else "fail" | x <- xs]

withVerdict :: Int -> [(String, Int)] -> [String]
withVerdict t ps = [ name ++ ": " ++ (if score >= t then "pass" else "fail") | (name, score) <- ps]

summaryLine :: [Int] -> String
summaryLine xs = "count " ++ show (length xs) ++ ", max " ++ show (maximum xs) ++ ", min " ++ show (minimum xs)
