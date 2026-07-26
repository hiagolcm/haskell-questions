module Solution (summarize) where

parseList :: [String] -> [Int]
parseList xs = [read x | x <- xs]

mean :: [Int] -> Double
mean xs = fromIntegral (sum xs) /  fromIntegral (length xs)

summarize :: [String] -> String
summarize xs = "min " ++ 
    show (minimum xs') ++ 
    ", max " ++ 
    show (maximum xs') ++
    ", sum " ++
    show (sum xs') ++
    ", mean " ++
    show (mean xs')
    where xs' = parseList xs

-- Implement the single function described in description.md (summarize).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check summarize, so make sure it is defined at the
-- top level with exactly the signature shown.
