module Solution where

data Pair a = Pair a a deriving (Show, Eq)

pairToList :: Pair a -> [a]
pairToList (Pair x y) = [x, y]

swapPair :: Pair a -> Pair a
swapPair (Pair x y) = Pair y x

mapPair :: (a -> b) -> Pair a -> Pair b
mapPair f (Pair x y) = Pair (f x) (f y)

-- New: type parameters / parameterized types.
--
-- Define Pair as described in description.md (deriving Show and Eq), then
-- implement pairToList, swapPair, and mapPair.
