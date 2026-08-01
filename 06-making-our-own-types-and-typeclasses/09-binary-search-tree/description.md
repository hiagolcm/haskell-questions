# 09 — Binary Search Tree

New idea: a recursive data type with **two** recursive fields, giving it a
branching (tree) shape rather than a linear (list) one — the classic binary
search tree.

## The type you must define

```haskell
data Tree a = EmptyTree | Node a (Tree a) (Tree a)
```

Derive `Show` and `Eq`.

## Functions to implement

### `singleton :: a -> Tree a`

A tree containing just one value.

```
singleton 5 == Node 5 EmptyTree EmptyTree
```

### `treeInsert :: Ord a => a -> Tree a -> Tree a`

Inserts a value into a binary search tree, keeping the ordering invariant
(smaller values to the left, larger to the right). If the value is already
present, the tree is unchanged.

```
treeInsert 5 EmptyTree == singleton 5
```

### `treeElem :: Ord a => a -> Tree a -> Bool`

Whether a value is present in the tree.

```
treeElem 5 (foldr treeInsert EmptyTree [8,6,4,1,7,3,5]) == True
treeElem 100 (foldr treeInsert EmptyTree [8,6,4,1,7,3,5]) == False
```

### `treeToList :: Tree a -> [a]`

The tree's values in sorted order (an in-order traversal: left subtree,
then the node, then right subtree).

```
treeToList (foldr treeInsert EmptyTree [8,6,4,1,7,3,5]) == [1,3,4,5,6,7,8]
```
