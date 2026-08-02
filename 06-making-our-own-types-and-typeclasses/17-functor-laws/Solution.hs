module Solution where

data Box a = Box a deriving (Show, Eq)

instance Functor Box where
    fmap f (Box x) = Box (f x)

checkFunctorLaws :: Int -> Bool
checkFunctorLaws x = firstLaw && secondLaw
    where 
        box = Box x
        firstLaw = fmap id box == box
        secondLaw = fmap ((+1) . (*2)) box == (fmap (+1) . fmap (*2)) box

-- Define Box and instance Functor Box as described in description.md, then
-- implement the single function checkFunctorLaws. How you break the work
-- into smaller helper functions is entirely up to you.
