# 02 — Applicative List

New idea: lists are `Applicative` too, but combining them means trying
**every combination** — `` fs <*> xs `` applies every function in `fs` to
every value in `xs`, producing all the results concatenated together.

## Functions to implement

### `allSums :: [Int] -> [Int] -> [Int]`

Every possible sum of one element from the first list and one from the
second, using `<*>` (or `<$>`/`<*>`) — not a list comprehension.

```
allSums [1,2] [10,20] == [11,21,12,22]
```

### `allPairs :: [a] -> [b] -> [(a, b)]`

Every possible pairing of one element from each list, in the same
"first list varies slowest" order as `allSums`.

```
allPairs [1,2] "ab" == [(1,'a'),(1,'b'),(2,'a'),(2,'b')]
```

### `applyAllOps :: [Int -> Int] -> [Int] -> [Int]`

Applies every function in the first list to every number in the second.

```
applyAllOps [(+1), (*2)] [10,20] == [11,21,20,40]
```
