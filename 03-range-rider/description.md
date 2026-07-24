# 03 — Range Rider

Concepts: ranges (`[a..b]`), stepped ranges (`[a,b..c]`), `cycle`,
`repeat`, `replicate`, `take`, basic list comprehensions.

Edit `Solution.hs` and implement each function below.

## `firstNEvens :: Int -> [Int]`

Returns the first `n` positive even numbers, starting at 2. Use a stepped
range like `[2,4..]` together with `take`.

```
firstNEvens 5 == [2,4,6,8,10]
```

## `countdownFrom :: Int -> [Int]`

Returns a countdown from `n` to `1`, inclusive, using a range with a
negative step, e.g. `[n,n-1..1]`.

```
countdownFrom 5 == [5,4,3,2,1]
```

## `alphabetChunk :: Char -> Char -> String`

Returns all characters from `start` to `end` inclusive, using a `Char`
range like `['a'..'z']` in the book.

```
alphabetChunk 'c' 'g' == "cdefg"
```

## `repeatPattern :: Int -> [a] -> [a]`

`repeatPattern n xs` repeats the list `xs` `n` times back-to-back, using
`cycle` and `take` (not `++` in a loop).

```
repeatPattern 3 [1,2] == [1,2,1,2,1,2]
```

## `greetNTimes :: Int -> String -> [String]`

Returns a list containing `msg` repeated `n` times, using `replicate`.

```
greetNTimes 3 "hi" == ["hi","hi","hi"]
```

## `squareRange :: Int -> Int -> [Int]`

Returns the squares of every integer from `lo` to `hi` inclusive, using a
list comprehension over a range: `[x*x | x <- [lo..hi]]`.

```
squareRange 1 5 == [1,4,9,16,25]
```
