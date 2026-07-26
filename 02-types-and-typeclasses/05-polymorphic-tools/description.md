# 05 — Polymorphic Tools

New idea: type variables with class constraints. A signature like
`Eq a => a -> [a] -> ...` means "works for any type whose values can be
compared for equality." You'll combine that with `zip`, comprehensions,
tuples, and `if/then/else`.

## `positions :: Eq a => a -> [a] -> [Int]`

Every index (from 0) where the value appears. (Pair elements with their
index using `zip`, then keep the matches.)

```
positions 2 [1,2,3,2] == [1,3]
positions 'l' "hello"  == [2,3]
```

## `sortPair :: Ord a => a -> a -> (a, a)`

The two values as a pair, smaller first.

```
sortPair 5 2   == (2,5)
sortPair 'a' 'z' == ('a','z')
```

## `clampList :: Ord a => a -> a -> [a] -> [a]`

`clampList lo hi xs` forces every element into the range `[lo, hi]`.

```
clampList 0 9 [-3,5,20] == [0,5,9]
clampList 'b' 'y' "azm" == "bym"
```

## `pairWithEq :: Eq a => a -> [a] -> [(a, Bool)]`

Each element paired with whether it equals the target.

```
pairWithEq 3 [1,3,3] == [(1,False),(3,True),(3,True)]
```
