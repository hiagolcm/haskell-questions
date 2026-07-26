# 09 — Formatting Report

More integration, now with a polymorphic `Show` constraint and `if`
expressions living inside comprehensions.

## `tagValues :: Show a => [a] -> [String]`

Wrap each value in angle brackets. Thanks to the `Show a` constraint this
works for any showable type.

```
tagValues [1,2,3 :: Int] == ["<1>","<2>","<3>"]
tagValues [True,False]   == ["<True>","<False>"]
```

## `passFail :: Int -> [Int] -> [String]`

For each score, `"pass"` if it's at least the threshold, otherwise `"fail"`.

```
passFail 60 [40,75,60] == ["fail","pass","pass"]
```

## `withVerdict :: Int -> [(String, Int)] -> [String]`

Each entry rendered as `"name: pass"` or `"name: fail"` against the
threshold.

```
withVerdict 50 [("a",30),("b",80)] == ["a: fail","b: pass"]
```

## `summaryLine :: [Int] -> String`

A single line `"count <n>, max <hi>, min <lo>"`. Assume the list is
non-empty.

```
summaryLine [4,1,9,2] == "count 4, max 9, min 1"
```
