# 10 — Syntax Capstone

Everything from this chapter at once: pattern matching, recursion, guards,
`where`, and `case` — plus `show`, `Eq`, and `fromIntegral` from earlier
chapters.

## `countPositives :: [Int] -> Int`

How many elements are strictly positive. Use recursion with a guard.

```
countPositives [1,-2,3,-4,5] == 3
countPositives [-1,-2]       == 0
countPositives []            == 0
```

## `compress :: Eq a => [a] -> [a]`

Remove *consecutive* duplicates (keep one of each run). Recursion + a guard
comparing the first two elements.

```
compress [1,1,2,3,3,3] == [1,2,3]
compress "aabbbc"      == "abc"
compress [1]           == [1]
compress ([] :: [Int]) == []
```

## `gradeSummary :: [Int] -> String`

The average of the scores (as a `Double`) and a verdict: `"average <avg>:
pass"` if the average is at least 60, otherwise `"... fail"`. Use `where`
for the average. Assume the list is non-empty.

```
gradeSummary [80,100] == "average 90.0: pass"
gradeSummary [40,50]  == "average 45.0: fail"
```

## `report :: [Int] -> String`

`"empty class"` for an empty list, otherwise defer to `gradeSummary`. Use a
`case` expression.

```
report []       == "empty class"
report [80,100] == "average 90.0: pass"
```
