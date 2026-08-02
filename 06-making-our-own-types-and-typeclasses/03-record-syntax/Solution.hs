module Solution where

data Person = Person {
    personName :: String,
    personAge :: Int,
    personCity :: String
} deriving (Show, Eq)

isAdult :: Person -> Bool
isAdult p = personAge p >= 18

sameCity :: Person -> Person -> Bool
sameCity p1 p2 = personCity p1 == personCity p2

describePerson :: Person -> String
describePerson p = personName p ++ " (" ++ show (personAge p) ++ ") from " ++ personCity p

-- New: record syntax (named fields generate accessor functions).
--
-- Define Person as described in description.md (deriving Show and Eq),
-- then implement isAdult, sameCity, and describePerson using the
-- auto-generated field accessors.
