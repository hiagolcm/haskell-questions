# 09 — Scans and the `$` Operator

Two new ideas. **`scanl`/`scanl1`** work like `foldl`, but instead of just
the final result, they return the list of *every* intermediate accumulator
value. **`$`** is ordinary function application, but with very low
precedence — `f $ x` means `f x`, which lets you drop parentheses around a
big argument expression.

## `runningTotals :: [Int] -> [Int]`

Every intermediate sum, starting from 0, using `scanl`.

```
runningTotals [3,5,2,1] == [0,3,8,10,11]
```

## `runningMax :: [Int] -> [Int]`

Every intermediate maximum-so-far, using `scanl1` (no starting value, so
the list must be non-empty).

```
runningMax [3,4,2,5,1] == [3,4,4,5,5]
```

## `sumOfSquaresUnder :: Int -> Int`

The sum of the squares of `1, 2, 3, ...` that are strictly less than
`limit`, in one expression built with `$` to avoid nested parentheses
(chain `sum`, `takeWhile (< limit)`, and `map (^2)` over `[1..]`).

```
sumOfSquaresUnder 30 == 55
```

(The squares below 30 are `1, 4, 9, 16, 25`; their sum is `55`.)

```
sumOfSquaresUnder 100 == 285
```

## `countStepsToExceed :: Int -> [Int] -> Int`

How many elements of the running-total (via `scanl1 (+)`) are less than or
equal to `limit`, expressed with `$`.

```
countStepsToExceed 10 [3,5,2,1,4] == 3
```

(Running totals: `3, 8, 10, 11, 15` — three of them, `3`, `8`, and `10`,
are `<= 10`.)
