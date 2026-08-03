# 04 — Monoid Lists

New idea: `Monoid`. A type is a monoid when it has an "empty" value
(`mempty`) and a way to combine two values (`<>`) such that combining with
`mempty` changes nothing, and combining is associative — it doesn't matter
how you group a chain of combines, only the order. Lists are already a
monoid: `mempty` is `[]`, and `<>` is `++`. `mconcat` folds a whole list of
monoid values down to one using `<>`.

## Functions to implement

### `combineAll :: [[Int]] -> [Int]`

Flattens a list of lists into one, using `mconcat`.

```
combineAll [[1,2],[3],[4,5]] == [1,2,3,4,5]
combineAll [] == []
```

### `combineTwo :: String -> String -> String`

Joins two strings using `<>` (not `++` directly, though they do the same
thing for lists).

```
combineTwo "foo" "bar" == "foobar"
```

### `orEmpty :: Bool -> [Int] -> [Int]`

`orEmpty keep xs` returns `xs` unchanged if `keep` is `True`, and
`mempty` (the empty list) otherwise.

```
orEmpty True [1,2,3]  == [1,2,3]
orEmpty False [1,2,3] == []
```
