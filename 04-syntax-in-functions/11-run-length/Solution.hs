module Solution (runLengthEncode) where

runLengthEncode :: Eq a => [a] -> [(a, Int)]
runLengthEncode [] = []
runLengthEncode (x:xs) = aux 1 x xs
  where
    aux n l [] = [(l, n)]
    aux n l (x:xs)
      | l == x = aux (n+1) l xs
      | otherwise = (l, n) : aux 1 x xs



-- Implement the single function described in description.md (runLengthEncode).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check runLengthEncode, so make sure it is defined at
-- the top level with exactly the signature shown.
