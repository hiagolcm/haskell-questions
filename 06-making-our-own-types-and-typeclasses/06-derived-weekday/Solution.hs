module Solution where

data Weekday =  Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Enum, Ord, Eq, Show, Bounded)

isWeekend :: Weekday -> Bool
isWeekend Sunday = True
isWeekend Saturday = True
isWeekend _ = False

nextDay :: Weekday -> Weekday
nextDay Sunday = Monday
nextDay w = succ w

allWeekdays :: [Weekday]
allWeekdays = [minBound ..]

-- New: deriving several typeclasses at once on an enumeration type
-- (Eq, Ord, Show, Read, Bounded, Enum).
--
-- Define Weekday as described in description.md, then implement isWeekend,
-- nextDay, and allWeekdays.
