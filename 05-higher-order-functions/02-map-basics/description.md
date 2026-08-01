# 02 — Map Basics

New idea: `map`, which applies a function to every element of a list,
producing a new list of the results. Implement each function using `map`
(not a comprehension or manual recursion).

## `doubleAll :: [Int] -> [Int]`

Doubles every element.

```
doubleAll [1,2,3] == [2,4,6]
```

## `squareAll :: [Int] -> [Int]`

Squares every element.

```
squareAll [1,2,3,4] == [1,4,9,16]
```

## `stringLengths :: [String] -> [Int]`

The length of each string.

```
stringLengths ["a","bb","ccc"] == [1,2,3]
```

## `showAll :: [Int] -> [String]`

Each number turned into its own string (reuse `show` from chapter 2).

```
showAll [1,2,3] == ["1","2","3"]
```

## `firstOfEach :: [(Int, Int)] -> [Int]`

The first component of each pair (reuse `fst` from chapter 1).

```
firstOfEach [(1,2),(3,4)] == [1,3]
```
