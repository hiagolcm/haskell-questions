module Solution (digitSum) where

digitToIntList :: (Read a, Num a) => String -> [a]
digitToIntList s = [read [c] | c <- s]


digitSum :: String -> Int
digitSum s = sum (digitToIntList s)


-- Implement the single function described in description.md (digitSum).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check digitSum, so make sure it is defined at the top
-- level with exactly the signature shown.
