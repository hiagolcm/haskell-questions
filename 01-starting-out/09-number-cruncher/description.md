# 09 — Number Cruncher

Edit `Solution.hs` and implement each function below. Assume all input
lists are non-empty unless stated otherwise.

## `summaryStats :: [Int] -> (Int, Int, Int, Int)`

Returns a 4-tuple `(sum, product, maximum, minimum)` of the list.

```
summaryStats [1,2,3,4] == (10,24,4,1)
```

## `average :: [Int] -> Double`

Returns the arithmetic mean as a `Double`.

```
average [1,2,3,4] == 2.5
average [2,2,2] == 2.0
```

## `rangeSpan :: [Int] -> Int`

Returns the difference between the largest and smallest element.

```
rangeSpan [4,1,9,2] == 8
```

## `sumOfSquaresUpTo :: Int -> Int`

Returns the sum of the squares of every integer from 1 to `n`.

```
sumOfSquaresUpTo 3 == 14   -- 1 + 4 + 9
```

## `productOfEvens :: [Int] -> Int`

Returns the product of only the even numbers in the list. If there are no
even numbers, the result is `1`.

```
productOfEvens [1,2,3,4,5] == 8   -- 2 * 4
productOfEvens [1,3,5] == 1
```
