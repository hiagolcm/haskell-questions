module Solution where

data Money = Money Int Int deriving (Show)

totalCents :: Money -> Int
totalCents (Money x y) = x * 100 + y

instance Eq Money where
    m1 == m2 = totalCents m1 == totalCents m2

-- Define Money as described in description.md (deriving Show but NOT Eq),
-- then write instance Eq Money by hand so it compares total value rather
-- than the two fields structurally.
