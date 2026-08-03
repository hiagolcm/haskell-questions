# 04 — Comprehension Craft

Edit `Solution.hs` and implement each function below.

## `rightTriangles :: Int -> [(Int, Int, Int)]`

Returns every right triangle `(a, b, c)` where all sides are positive
integers no greater than `n`, `a <= b < c`, and `a^2 + b^2 == c^2`.

```
rightTriangles 10 == [(3,4,5),(6,8,10)]
```

## `countVowels :: String -> Int`

Counts how many characters in a string are vowels (`aeiouAEIOU`).

```
countVowels "Haskell" == 2
countVowels "xyz" == 0
```

## `keepEvensInEach :: [[Int]] -> [[Int]]`

Given a list of lists, returns a list of lists with only the even numbers
kept in each inner list.

```
keepEvensInEach [[1,2,3],[4,5,6],[7]] == [[2],[4,6],[]]
```

## `removeForbidden :: [Int] -> [Int] -> [Int]`

`removeForbidden forbidden xs` returns `xs` with every value that appears
in `forbidden` removed.

```
removeForbidden [13,15,19] [10..20] == [10,11,12,14,16,17,18,20]
```

## `cartesianProducts :: [Int] -> [Int] -> [Int]`

Returns the product of every pair drawn from the two lists.

```
cartesianProducts [2,5,10] [8,10,11] ==
  [16,20,22,40,50,55,80,100,110]
```
