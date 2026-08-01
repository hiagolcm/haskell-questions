module Solution (applyOp) where

opsMap = [("+", (+)), ("-", (-)), ("*", (*)), ("max", (max))]

applyOp :: String -> Int -> Int -> Int
applyOp opStr a b = op a b
    where op = snd . head . filter (\(x, _) -> x == opStr) $ opsMap

-- Implement the single function described in description.md (applyOp).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check applyOp, so make sure it is defined at the top
-- level with exactly the signature shown.
