module Solution (toBinary) where

toBinary :: Int -> String
toBinary n 
  | n < 2 = show (n)
  | otherwise = toBinary (n `div` 2) ++ show (n `mod` 2)

-- Implement the single function described in description.md (toBinary).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check toBinary, so make sure it is defined at the top
-- level with exactly the signature shown.
