# 01 — Pattern Basics

New idea: **pattern matching** in function definitions. You can write a
function as several equations, each matching a specific value, with a final
catch-all variable. Implement each function using pattern matching (not
`if/then/else`); keep the signatures.

## `isZero :: Int -> Bool`

`True` for `0`, `False` for anything else.

```
isZero 0 == True
isZero 5 == False
```

## `notB :: Bool -> Bool`

Negate a boolean by matching each constructor.

```
notB True  == False
notB False == True
```

## `smallName :: Int -> String`

`0`→`"zero"`, `1`→`"one"`, `2`→`"two"`, `3`→`"three"`, anything else →
`"many"`.

```
smallName 0 == "zero"
smallName 2 == "two"
smallName 9 == "many"
```

## `boolToInt :: Bool -> Int`

`True`→`1`, `False`→`0`.

```
boolToInt True  == 1
boolToInt False == 0
```
