# 04 — Comprehension Craft

Concepts: list comprehensions with multiple generators, multiple
predicates, the `_` throwaway pattern, nested comprehensions, `elem`.

Edit `Solution.hs` and implement each function below.

## `rightTriangles :: Int -> [(Int, Int, Int)]`

Returns every right triangle `(a, b, c)` where all sides are positive
integers no greater than `n`, `a <= b < c`, and `a^2 + b^2 == c^2`. This is
the classic comprehension from the book — use three generators
(`c <- [1..n]`, `b <- [1..c]`, `a <- [1..b]`) plus a predicate.

```
rightTriangles 10 == [(3,4,5),(6,8,10)]
```

## `countVowels :: String -> Int`

Counts how many characters in a string are vowels (`aeiouAEIOU`), using a
comprehension with `_` to ignore the value and just count occurrences, or
`elem` as a predicate — e.g. `sum [1 | c <- s, c `elem` "aeiouAEIOU"]`.

```
countVowels "Haskell" == 2
countVowels "xyz" == 0
```

## `keepEvensInEach :: [[Int]] -> [[Int]]`

Given a list of lists, returns a list of lists with only the even numbers
kept in each inner list, using a nested comprehension:
`[ [x | x <- xs, even x] | xs <- xxs]`.

```
keepEvensInEach [[1,2,3],[4,5,6],[7]] == [[2],[4,6],[]]
```

## `removeForbidden :: [Int] -> [Int] -> [Int]`

`removeForbidden forbidden xs` returns `xs` with every value that appears
in `forbidden` removed, using a comprehension whose predicate combines
`elem`/`notElem` — similar in spirit to the book's
`boomBangs`-style multiple-predicate filtering (`x /= 13`, `x /= 15`, ...)
but data-driven instead of hardcoded.

```
removeForbidden [13,15,19] [10..20] == [10,11,12,14,16,17,18,20]
```

## `cartesianProducts :: [Int] -> [Int] -> [Int]`

Returns the product of every pair drawn from the two lists, using two
generators in one comprehension: `[x*y | x <- xs, y <- ys]`.

```
cartesianProducts [2,5,10] [8,10,11] ==
  [16,20,22,40,50,55,80,100,110]
```
