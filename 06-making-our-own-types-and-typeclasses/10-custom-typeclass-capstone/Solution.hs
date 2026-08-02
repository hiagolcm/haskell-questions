module Solution where

data Season = Spring | Summer | Autumn | Winter

class Descripable a where
    describe :: a -> String

instance Descripable Season where
    describe:: Season -> String
    describe Spring = "warming up"
    describe Summer = "hot"
    describe Autumn = "cooling down"
    describe Winter = "cold"



instance Descripable Bool where
    describe True = "yes"
    describe False = "no"

announce :: Descripable a => a -> String
announce x = "It's " ++ describe x ++ "."

-- Capstone: defining your own typeclass (class) and writing instance
-- declarations for it, for both a type you define and a built-in type.
--
-- Define the Describable class and the Season type as described in
-- description.md, write instance Describable Season and
-- instance Describable Bool, then implement announce.
