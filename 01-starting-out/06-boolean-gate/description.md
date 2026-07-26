# 06 — Boolean Gate

Edit `Solution.hs` and implement each function below.

## `xorBool :: Bool -> Bool -> Bool`

Exclusive or: `True` when exactly one of the two arguments is `True`.

```
xorBool True False == True
xorBool True True  == False
xorBool False False == False
```

## `majorityVote :: Bool -> Bool -> Bool -> Bool`

Returns `True` when at least two of the three arguments are `True`.

```
majorityVote True True False == True
majorityVote True False False == False
majorityVote True True True == True
```

## `isValidCode :: String -> Bool`

A "code" is valid when it is exactly 4 characters long **and** every
character is a digit.

```
isValidCode "1234" == True
isValidCode "12a4" == False
isValidCode "123"  == False
```

## `inRange :: Int -> Int -> Int -> Bool`

`inRange lo hi x` returns whether `x` is between `lo` and `hi` inclusive.

```
inRange 1 10 5 == True
inRange 1 10 15 == False
```

## `bothPresent :: Eq a => a -> a -> [a] -> Bool`

Returns `True` when both given values are present in the list.

```
bothPresent 1 3 [1,2,3] == True
bothPresent 1 4 [1,2,3] == False
```
