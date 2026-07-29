module Solution (wordFrequencies) where

wordFrequencies :: [String] -> [(String, Int)]
wordFrequencies [] =  []
wordFrequencies (w:ws) =  bump (wordFrequencies ws) w
  where 
    go acc [] = acc
    go acc (x:xs) = go (bump acc x) xs

    bump :: [(String, Int)] -> String -> [(String, Int)]
    bump [] word = [(word, 1)]
    bump ((word', count):xs) word
      | word' == word = (word, count + 1) : xs
      | otherwise = (word', count) : bump xs word

-- Implement the single function described in description.md (wordFrequencies).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check wordFrequencies, so make sure it is defined at
-- the top level with exactly the signature shown.