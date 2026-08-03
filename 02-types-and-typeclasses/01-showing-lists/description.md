# 01 — Showing Lists

New idea this exercise: `show`, which turns a value into its `String` form.
You'll use it together with the chapter-1 toolkit — list comprehensions,
`zip`, ranges, and tuple patterns. Implement each function; keep the
signatures.

## `showEach :: [Int] -> [String]`

Each number turned into its own string.

```
showEach [1,2,3] == ["1","2","3"]
```

## `numbered :: [String] -> [String]`

Each word prefixed with its 1-based position and `". "`. (Reach for `zip`
and a range, like in chapter 1.)

```
numbered ["a","b","c"] == ["1. a","2. b","3. c"]
```

## `showSquares :: Int -> [String]`

The strings of the squares `1²`, `2²`, … up to `n²`.

```
showSquares 3 == ["1","4","9"]
```

## `showPairs :: [(Int, Int)] -> [String]`

Each pair rendered as `"(a,b)"`.

```
showPairs [(1,2),(3,4)] == ["(1,2)","(3,4)"]
```
