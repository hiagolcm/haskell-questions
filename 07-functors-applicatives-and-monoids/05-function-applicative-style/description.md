# 05 — Function Applicative Style

No new concept — this reinforces exercise 04's idea by extending it past
two functions. Chaining `` <$> `` with more than one `` <*> `` (
`` f <$> a <*> b <*> c `` ) is often called **applicative style**: it reads
almost like an ordinary multi-argument function call, except each argument
is itself wrapped in an `Applicative` (here, a function sharing the same
input).

## Functions to implement

### `sumOfThreeFns :: (Int -> Int) -> (Int -> Int) -> (Int -> Int) -> Int -> Int`

Given three functions and an input `x`, returns the sum of all three
results, built with `` <$> `` and two chained `` <*> ``.

```
sumOfThreeFns (+1) (*2) (subtract 3) 10 == 38
```

(At `x=10`: `10+1=11`, `10*2=20`, `10-3=7`; `11+20+7=38`.)

### `tripleResult :: (Int -> Int) -> (Int -> Int) -> (Int -> Int) -> Int -> (Int, Int, Int)`

Given three functions and an input `x`, returns a 3-tuple of all three
results (in order), using the 3-argument tuple constructor `(,,)` in
applicative style.

```
tripleResult (+1) (*2) (subtract 3) 10 == (11,20,7)
```
