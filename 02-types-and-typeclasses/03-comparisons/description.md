# 03 — Comparisons

New idea: `compare`, which returns an `Ordering` — one of `LT`, `EQ`, `GT`.
These are ordinary values you can put in lists, compare with `==`, and mix
with the comprehensions, `show`, and `if/then/else` you already know.

## `vsThreshold :: Int -> [Int] -> [Ordering]`

Compare every element against the threshold (element `compare` threshold).

```
vsThreshold 5 [3,5,8] == [LT,EQ,GT]
```

## `countBelow :: Int -> [Int] -> Int`

How many elements compare as `LT` against the threshold.

```
countBelow 5 [3,5,8,1] == 2
```

## `cmpSymbol :: Int -> Int -> String`

Render a comparison as `"a < b"`, `"a = b"`, or `"a > b"` (using the real
numbers via `show`).

```
cmpSymbol 3 7 == "3 < 7"
cmpSymbol 7 7 == "7 = 7"
cmpSymbol 9 2 == "9 > 2"
```

## `extremesCompare :: [Int] -> Ordering`

Compare the first element with the last. Assume the list is non-empty.

```
extremesCompare [3,1,5] == LT
extremesCompare [5,2,1] == GT
```
