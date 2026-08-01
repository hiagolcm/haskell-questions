module Solution (composeAll) where

composeAll :: [a -> a] -> a -> a
composeAll fs x0 = foldl (\acc f -> f acc) x0 fs

-- Implement the single function described in description.md (composeAll).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check composeAll, so make sure it is defined at the
-- top level with exactly the signature shown.
