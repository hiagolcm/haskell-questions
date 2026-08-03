# 08 — Fold Right

New idea: `foldr`, which folds right-to-left — its combining function takes
the current element **first** and the accumulator **second**
(`\x acc -> ...`), unlike `foldl`'s `\acc x -> ...`. Also new: `foldr1` /
`foldl1`, which use the list's own first/last element as the starting
accumulator (no explicit initial value, so the list must be non-empty).
Implement each function using `foldr` or `foldr1`/`foldl1` as indicated.

## `mapFold :: (a -> b) -> [a] -> [b]`

Your own `map`, built with `foldr` (combine by consing `f x` onto the
accumulator).

```
mapFold (+1) [1,2,3] == [2,3,4]
```

## `filterFold :: (a -> Bool) -> [a] -> [a]`

Your own `filter`, built with `foldr`.

```
filterFold even [1,2,3,4,5,6] == [2,4,6]
```

## `maxFold :: Ord a => [a] -> a`

The largest element, built with `foldr1`. Assume the list is non-empty.

```
maxFold [3,9,2,7] == 9
```

## `concatFold :: [[a]] -> [a]`

Flattens a list of lists into one list, built with `foldr` (combine with
`++`).

```
concatFold [[1,2],[3],[4,5]] == [1,2,3,4,5]
```
