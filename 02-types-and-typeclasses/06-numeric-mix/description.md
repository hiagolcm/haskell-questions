# 06 — Numeric Mix

New ideas: `fromIntegral` (to turn an `Int` into a fractional number so it
can mix with `Double`s) and the `Floating` class, home of `pi` and `sqrt`.
Combine with comprehensions, tuples, and the aggregators from chapter 1.

## `toDoubles :: [Int] -> [Double]`

Convert every `Int` to a `Double`.

```
toDoubles [1,2,3] == [1.0,2.0,3.0]
```

## `meanOf :: [Int] -> Double`

The average of the list, as a `Double`. Assume it's non-empty.

```
meanOf [1,2,3,4] == 2.5
```

## `averages :: [[Int]] -> [Double]`

The average of each inner list. Assume each inner list is non-empty.

```
averages [[1,2,3],[10,20]] == [2.0,15.0]
```

## `distances :: [(Double, Double)] -> [Double]`

For each `(x, y)`, its distance from the origin, `sqrt (x² + y²)`.

```
distances [(3,4),(6,8)] == [5.0,10.0]
```

## `circleAreas :: [Double] -> [Double]`

The area `pi * r²` for each radius.

```
circleAreas [1,2] == [pi, 4 * pi]
```
