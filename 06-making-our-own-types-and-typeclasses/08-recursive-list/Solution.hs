module Solution where

data MyList a = MyEmpty | MyCons a (MyList a) deriving (Eq, Show)

toMyList :: [a] -> MyList a
toMyList [] = MyEmpty
toMyList (x:xs) = MyCons x (toMyList xs)

fromMyList :: MyList a -> [a]
fromMyList MyEmpty = []
fromMyList (MyCons x xs) = x : fromMyList xs

myLength :: MyList a -> Int
myLength MyEmpty = 0
myLength (MyCons _ xs) = 1 + myLength xs

-- New: a recursive data type (a constructor referring back to the type
-- itself) -- your own version of the built-in list.
--
-- Define MyList as described in description.md (deriving Show and Eq),
-- then implement toMyList, fromMyList, and myLength.
