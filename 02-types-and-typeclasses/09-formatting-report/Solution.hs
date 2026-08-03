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
tagValues xs = undefined

passFail :: Int -> [Int] -> [String]
passFail t xs = undefined

withVerdict :: Int -> [(String, Int)] -> [String]
withVerdict t ps = undefined

summaryLine :: [Int] -> String
summaryLine xs = undefined
