# 02 — List Toolbox

Concepts: list literals, cons (`:`), concatenation (`++`), indexing (`!!`),
`head`/`tail`/`last`/`init`/`length`/`null`/`reverse`, lexicographic list
comparison, tuples.

Edit `Solution.hs` and implement each function below.

## `secondElement :: [a] -> a`

Returns the second element of a list (index 1). You can use `!!`, or
`head` combined with `tail`. Assume the list has at least two elements.

```
secondElement [10,20,30] == 20
secondElement "hello"    == 'e'
```

## `bookend :: a -> a -> [a] -> [a]`

`bookend front back xs` puts `front` at the start (using `:`) and `back` at
the end (using `++`) of `xs`.

```
bookend 0 9 [1,2,3] == [0,1,2,3,9]
bookend 'a' 'z' "bc" == "abcz"
```

## `trimEnds :: [a] -> [a]`

Removes the first and last element of a list, using `tail` and `init`.
Assume the list has at least two elements.

```
trimEnds [1,2,3,4,5] == [2,3,4]
trimEnds "abcd" == "bc"
```

## `lastTwo :: [a] -> (a, a)`

Returns the last two elements of a list as a tuple `(secondToLast, last)`,
using `last` and `init`. Assume at least two elements.

```
lastTwo [1,2,3,4] == (3,4)
```

## `isGreaterList :: Ord a => [a] -> [a] -> Bool`

Returns whether the first list is greater than the second, using plain
list comparison (`>`) the way the book compares `[3,2,1] > [2,1,0]` —
lexicographically, not by length.

```
isGreaterList [3,2,1] [2,1,0] == True
isGreaterList [1,2]   [1,2,3] == False
isGreaterList [1,2,3] [1,2]   == True
```

## `middleSlice :: Int -> Int -> [a] -> [a]`

`middleSlice start end xs` returns the elements from index `start`
(inclusive) up to `end` (exclusive), using `take` and `drop` together.

```
middleSlice 2 5 [0,1,2,3,4,5,6,7] == [2,3,4]
middleSlice 0 3 "haskell" == "has"
```
