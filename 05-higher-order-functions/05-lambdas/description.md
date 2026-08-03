# 05 — Lambdas

New idea: **lambdas**, anonymous functions written `\x -> ...`, for the
cases where a section isn't expressive enough (multiple parameters,
patterns, or an if-branch). Implement each function using `map`/`filter`
with a lambda.

## `addPairs :: [(Int, Int)] -> [Int]`

The sum of each pair. Use a lambda that pattern-matches the tuple:
`\(a,b) -> ...`.

```
addPairs [(1,2),(3,4)] == [3,7]
```

## `keepClose :: Int -> Int -> [Int] -> [Int]`

`keepClose target tolerance xs` keeps only the numbers within `tolerance` of
`target` (i.e. `abs (x - target) <= tolerance`).

```
keepClose 10 2 [7,8,9,10,11,15] == [8,9,10,11]
```

## `labelSigns :: [Int] -> [String]`

Each number turned into `"neg"`, `"zero"`, or `"pos"`, using a lambda with
an `if/then/else` inside.

```
labelSigns [-3,0,5] == ["neg","zero","pos"]
```

## `scalePairs :: Int -> [(Int, Int)] -> [(Int, Int)]`

Multiply both components of each pair by `n`.

```
scalePairs 3 [(1,2),(4,5)] == [(3,6),(12,15)]
```
