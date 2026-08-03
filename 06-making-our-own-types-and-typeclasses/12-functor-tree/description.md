# 12 — Functor Over a Tree

A step up from exercise 11: writing `Functor` for a **recursive** type,
where `fmap` has to call itself on both subtrees to reach every value.

## The type you must define

```haskell
data Tree a = EmptyTree | Node a (Tree a) (Tree a)
```

Derive `Show` and `Eq` (this is the same shape as chapter 6's binary search
tree, redefined here so this exercise is self-contained).

## Instance to write

### `instance Functor Tree`

`fmap` over `EmptyTree` stays `EmptyTree`. `fmap f (Node x left right)`
applies `f` to the node's value **and** recurses into both subtrees with
`fmap f`.

```
fmap (*2) EmptyTree == EmptyTree

fmap (*10) (Node 5 (Node 3 EmptyTree EmptyTree) (Node 8 EmptyTree EmptyTree))
  == Node 50 (Node 30 EmptyTree EmptyTree) (Node 80 EmptyTree EmptyTree)
```

## Function to implement

### `sumTree :: Num a => Tree a -> a`

While you're here: add up every value in the tree, using recursion over
`Tree`'s own structure (not `fmap`).

```
sumTree (Node 5 (Node 3 EmptyTree EmptyTree) (Node 8 EmptyTree EmptyTree)) == 16
sumTree (EmptyTree :: Tree Int) == 0
```
