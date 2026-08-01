# 08 — Recursive List

New idea: a **recursive data type** — one of its own constructors refers
back to the type itself. This is exactly how Haskell's built-in list type
works under the hood; here you build your own version of it.

## The type you must define

```haskell
data MyList a = MyEmpty | MyCons a (MyList a)
```

Derive `Show` and `Eq`.

## Functions to implement

### `toMyList :: [a] -> MyList a`

Converts an ordinary list into a `MyList`.

```
toMyList [1,2,3] == MyCons 1 (MyCons 2 (MyCons 3 MyEmpty))
toMyList ([] :: [Int]) == MyEmpty
```

### `fromMyList :: MyList a -> [a]`

Converts a `MyList` back into an ordinary list (the inverse of
`toMyList`).

```
fromMyList (MyCons 1 (MyCons 2 MyEmpty)) == [1,2]
fromMyList (MyEmpty :: MyList Int) == []
```

### `myLength :: MyList a -> Int`

The number of elements, computed with recursion (chapter 4) over
`MyList`'s own structure — not by converting to a list first.

```
myLength (MyCons 1 (MyCons 2 (MyCons 3 MyEmpty))) == 3
myLength (MyEmpty :: MyList Int) == 0
```
