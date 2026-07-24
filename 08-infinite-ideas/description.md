# 08 — Infinite Ideas

Concepts: infinite ranges (`[1..]`), `cycle`, `repeat`, `take`, `zip` with
an infinite list, laziness (Haskell only computes as much of an infinite
list as you actually consume).

Edit `Solution.hs` and implement each function below.

## `takeEveryOther :: [a] -> [a]`

Returns every element at an even index (0, 2, 4, ...). Zip the list
against the infinite range `[0..]` to get `(index, value)` pairs, then
keep only the ones whose index is even.

```
takeEveryOther [10,11,12,13,14,15] == [10,12,14]
```

## `labelWithLetters :: [a] -> [(Char, a)]`

Pairs every element with a letter starting from `'a'`, using
`zip ['a'..] xs` (an infinite `Char` range works exactly like an infinite
`Int` range).

```
labelWithLetters [10,20,30] == [('a',10),('b',20),('c',30)]
```

## `firstNFromCycle :: Int -> [a] -> [a]`

Returns the first `n` elements of `xs` repeated forever, using `cycle`
and `take`. Assume `xs` is non-empty.

```
firstNFromCycle 7 [1,2,3] == [1,2,3,1,2,3,1]
```

## `paddedTo :: Int -> a -> [a] -> [a]`

`paddedTo n pad xs` returns `xs` unchanged if it already has at least `n`
elements. Otherwise it appends copies of `pad` (via `repeat` and `take`)
until the result has exactly `n` elements.

```
paddedTo 5 0 [1,2,3] == [1,2,3,0,0]
paddedTo 2 0 [1,2,3] == [1,2,3]
```

## `infiniteSquares :: Int -> [Int]`

Returns the first `n` perfect squares (starting from 1), by combining
`take` with a list comprehension over the infinite range `[1..]`.

```
infiniteSquares 4 == [1,4,9,16]
```
