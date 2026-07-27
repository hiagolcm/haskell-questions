module Solution (isSorted) where

zipped :: [a] -> [(a,a)]
zipped xs = zip (init xs) (tail xs)

isSorted :: Ord a => [a] -> Bool
isSorted [] = True
isSorted [x] = True
isSorted xs = sum [1 | (a,b) <- zipped xs, a <= b] == (length xs) - 1

-- Implement the single function described in description.md (isSorted).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check isSorted, so make sure it is defined at the top
-- level with exactly the signature shown.
