module Solution
  ( shiftEach
  , bookmark
  , everyOrdering
  , boolPair
  , neighbours
  ) where

-- New: Enum (succ/pred, ranges) and Bounded (minBound/maxBound).
-- Reuses zip, ranges, comprehensions, tuples from chapter 1.
-- See description.md for the spec of each function.

shiftEach :: String -> String
shiftEach s = [ succ c | c <- s]

bookmark :: [String] -> [(Char, String)]
bookmark ws = [(a,b) | (a,b)<- zip ['a'..]  ws]

everyOrdering :: [Ordering]
everyOrdering = [LT ..]

boolPair :: (Bool, Bool)
boolPair = (minBound, maxBound)

neighbours :: Char -> (Char, Char)
neighbours c = (pred c, succ c)
