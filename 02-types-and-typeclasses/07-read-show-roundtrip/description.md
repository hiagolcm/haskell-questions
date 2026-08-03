# 07 — Read/Show Round-trip

Now combine `read`, `show`, and `compare` in the same functions. A new
wrinkle from this chapter: sometimes the surrounding code doesn't tell the
compiler *which* type to `read` into, so you must say it yourself with a
type annotation like `read s :: Int`. Keep using comprehensions and `sum`.

## `normalizeInts :: [String] -> [String]`

Parse each string as an `Int` and show it again — cleaning up things like
leading zeros. (Here `read` feeds `show`, so neither side fixes the type on
its own: you'll need an annotation.)

```
normalizeInts ["007","42","10"] == ["7","42","10"]
```

## `keepBig :: Int -> [String] -> [Int]`

Parse the strings and keep only the values strictly greater than the
threshold.

```
keepBig 5 ["3","8","10","1"] == [8,10]
```

## `sumOfReadable :: [String] -> String`

Parse and sum the numbers, then render `"total: <sum>"`.

```
sumOfReadable ["1","2","3"] == "total: 6"
```

## `compareStrings :: String -> String -> Ordering`

Compare two number strings by their **numeric** value (so `"3"` is less than
`"20"`, unlike comparing the strings directly).

```
compareStrings "3" "20" == LT
compareStrings "20" "3" == GT
compareStrings "5" "5"  == EQ
```
