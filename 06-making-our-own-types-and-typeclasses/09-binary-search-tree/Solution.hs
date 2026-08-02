module Solution where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Eq, Show)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x original@(Node y left right)
  | x > y = Node y left (treeInsert x right)
  | x < y = Node y (treeInsert x left) right
  | otherwise = original

treeElem :: (Eq a, Ord a) => a -> Tree a -> Bool
treeElem _ EmptyTree = False
treeElem x (Node y left right)
  | x == y = True
  | x > y = treeElem x right
  | otherwise = treeElem x left

treeToList :: Tree a -> [a]
treeToList EmptyTree = []
treeToList (Node x left right) = (treeToList left) ++ (x: treeToList right)

-- New: a recursive data type with two recursive fields (a tree shape).
--
-- Define Tree as described in description.md (deriving Show and Eq), then
-- implement singleton, treeInsert, treeElem, and treeToList.
