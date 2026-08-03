# 02 — List Toolbox

Edit `Solution.hs` and implement each function below.

## `secondElement :: [a] -> a`

Returns the second element of a list (index 1). Assume the list has at
least two elements.

```
secondElement [10,20,30] == 20
secondElement "hello"    == 'e'
```

## `bookend :: a -> a -> [a] -> [a]`

`bookend front back xs` puts `front` at the start and `back` at the end of
`xs`.

```
bookend 0 9 [1,2,3] == [0,1,2,3,9]
bookend 'a' 'z' "bc" == "abcz"
```

## `trimEnds :: [a] -> [a]`

Removes the first and last element of a list. Assume the list has at
least two elements.

```
trimEnds [1,2,3,4,5] == [2,3,4]
trimEnds "abcd" == "bc"
```

## `lastTwo :: [a] -> (a, a)`

Returns the last two elements of a list as a tuple `(secondToLast, last)`.
Assume at least two elements.

```
lastTwo [1,2,3,4] == (3,4)
```

## `isGreaterList :: Ord a => [a] -> [a] -> Bool`

Returns whether the first list is greater than the second, compared
lexicographically (element by element), not by length.

```
isGreaterList [3,2,1] [2,1,0] == True
isGreaterList [1,2]   [1,2,3] == False
isGreaterList [1,2,3] [1,2]   == True
```

## `middleSlice :: Int -> Int -> [a] -> [a]`

`middleSlice start end xs` returns the elements from index `start`
(inclusive) up to `end` (exclusive).

```
middleSlice 2 5 [0,1,2,3,4,5,6,7] == [2,3,4]
middleSlice 0 3 "haskell" == "has"
```
