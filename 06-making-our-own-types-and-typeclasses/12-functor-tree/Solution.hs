module Solution where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Eq)

instance Functor Tree where
    fmap f EmptyTree = EmptyTree
    fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

sumTree :: Num a => Tree a -> a 
sumTree EmptyTree = 0
sumTree (Node x left right) = x + sumTree left + sumTree right 

-- New: Functor over a recursive data type -- fmap must recurse into both
-- subtrees to reach every value.
--
-- Define Tree as described in description.md (deriving Show and Eq), write
-- instance Functor Tree, then implement sumTree.
