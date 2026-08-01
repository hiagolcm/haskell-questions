# 07 — Fold Left

New idea: `foldl`, which reduces a whole list to a single value by walking
left to right, carrying an accumulator: `foldl f initial xs`. Implement
each function using `foldl` (not recursion, not the built-in `sum`/
`product`/etc. directly).

## `sumFold :: [Int] -> Int`

The sum of the list, built with `foldl`.

```
sumFold [1,2,3,4] == 10
```

## `productFold :: [Int] -> Int`

The product of the list, built with `foldl`.

```
productFold [1,2,3,4] == 24
```

## `allFold :: [Bool] -> Bool`

Whether every element is `True`, built with `foldl` (accumulator starts at
`True`, combine with `&&`).

```
allFold [True,True]  == True
allFold [True,False] == False
```

## `reverseFold :: [a] -> [a]`

Reverses a list using `foldl` (accumulate by consing each element onto the
front of what you have so far).

```
reverseFold [1,2,3] == [3,2,1]
```

## `containsFold :: Eq a => a -> [a] -> Bool`

Whether the target value appears anywhere in the list, built with `foldl`.

```
containsFold 3 [1,2,3,4] == True
containsFold 9 [1,2,3,4] == False
```
