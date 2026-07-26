module Solution (wordReport) where


countWords :: [String] -> Int
countWords ws = length ws

longest :: [String] -> String -> String
longest (w:ws) candidate = if length w > length candidate then longest ws w else longest ws candidate
longest [] candidate = candidate

total :: [String] -> Int
total ws = sum [length w | w <- ws]

wordReport :: [String] -> String
wordReport ws =
  show (countWords ws)
    ++ " words, longest "
    ++ longest ws ""
    ++ ", "
    ++ show (total ws)
    ++ " letters"