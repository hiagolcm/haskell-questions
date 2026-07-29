module Solution (everyOther) where

everyOther :: [a] -> [a]
everyOther [] = []
everyOther [x] = [x]
everyOther (x:y:xs) = x : everyOther xs


-- Implement the single function described in description.md (everyOther).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check everyOther, so make sure it is defined at the
-- top level with exactly the signature shown.
