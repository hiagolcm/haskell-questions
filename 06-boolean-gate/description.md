# 06 — Boolean Gate

Concepts: boolean algebra (`&&`, `||`, `not`), equality/inequality (`==`,
`/=`), `elem`, ranges, `if/then/else`.

Edit `Solution.hs` and implement each function below.

## `xorBool :: Bool -> Bool -> Bool`

Exclusive or: `True` when exactly one of the two arguments is `True`.
Build it from `&&`, `||`, and `not` — don't use `/=`.

```
xorBool True False == True
xorBool True True  == False
xorBool False False == False
```

## `majorityVote :: Bool -> Bool -> Bool -> Bool`

Returns `True` when at least two of the three arguments are `True`. Think
of it as three "at least these two agree" cases combined with `||`.

```
majorityVote True True False == True
majorityVote True False False == False
majorityVote True True True == True
```

## `isValidCode :: String -> Bool`

A "code" is valid when it is exactly 4 characters long **and** every
character is a digit. Combine a `length` check with a comprehension that
uses `elem` against `['0'..'9']`.

```
isValidCode "1234" == True
isValidCode "12a4" == False
isValidCode "123"  == False
```

## `inRange :: Int -> Int -> Int -> Bool`

`inRange lo hi x` returns whether `x` is between `lo` and `hi` inclusive,
using `&&` over two comparisons.

```
inRange 1 10 5 == True
inRange 1 10 15 == False
```

## `bothPresent :: Eq a => a -> a -> [a] -> Bool`

Returns `True` when both given values are present in the list, using
`elem` twice combined with `&&`.

```
bothPresent 1 3 [1,2,3] == True
bothPresent 1 4 [1,2,3] == False
```
