# 05 — Tuple Tactics

Edit `Solution.hs` and implement each function below.

## `swapPair :: (a, b) -> (b, a)`

Swaps the two elements of a pair.

```
swapPair (1, "one") == ("one", 1)
```

## `indexedList :: [a] -> [(Int, a)]`

Pairs every element of a list with its index, starting at 0.

```
indexedList "abc" == [(0,'a'),(1,'b'),(2,'c')]
```

## `sumOfProducts :: [(Int, Int)] -> Int`

Given a list of pairs, multiplies each pair's components together and
sums the results.

```
sumOfProducts [(1,2),(3,4)] == 14   -- (1*2) + (3*4)
```

## `maxProduct :: [(Int, Int)] -> Int`

Returns the largest product among all pairs.

```
maxProduct [(1,2),(3,4),(0,10)] == 12
```

## `zipNames :: [String] -> [String] -> [(String, String)]`

Pairs a list of first names with a list of last names into full-name
pairs. If the two lists differ in length, the extra elements in the
longer one are simply dropped.

```
zipNames ["Ada","Alan"] ["Lovelace","Turing"] ==
  [("Ada","Lovelace"),("Alan","Turing")]
```

## `firsts :: [(a, b)] -> [a]`

Returns just the first component of every pair in a list.

```
firsts [(1,'a'),(2,'b'),(3,'c')] == [1,2,3]
```
