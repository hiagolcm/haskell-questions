# 03 — Filter Basics

New idea: `filter`, which keeps only the elements of a list that satisfy a
predicate. Implement each function using `filter`.

## `keepEvens :: [Int] -> [Int]`

Keeps only the even numbers.

```
keepEvens [1,2,3,4,5,6] == [2,4,6]
```

## `keepPositives :: [Int] -> [Int]`

Keeps only the strictly positive numbers.

```
keepPositives [-2,3,-1,4,0] == [3,4]
```

## `keepVowels :: String -> String`

Keeps only the vowel characters (reuse the `` `elem` `` idea from
exercise 01).

```
keepVowels "Haskell" == "ae"
```

## `keepLongWords :: Int -> [String] -> [String]`

Keeps only the words whose length is strictly greater than `n`.

```
keepLongWords 3 ["cat","hippo","ox","zebra"] == ["hippo","zebra"]
```

## `dropZeros :: [Int] -> [Int]`

Removes every zero from the list, keeping everything else in order.

```
dropZeros [1,0,2,0,0,3] == [1,2,3]
```
