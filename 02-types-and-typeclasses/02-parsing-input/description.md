# 02 — Parsing Input

New idea: `read`, the opposite of `show` — it turns a `String` back into a
value. Which type it produces is decided by the surrounding context; in each
function here the return type pins it down, so no explicit annotation is
needed yet. Keep using comprehensions, tuples, and aggregators (`sum`,
`maximum`) from chapter 1.

## `parseInts :: [String] -> [Int]`

Parse every string into an `Int`.

```
parseInts ["1","2","3"] == [1,2,3]
```

## `sumStrings :: [String] -> Int`

Parse and add up a list of number strings.

```
sumStrings ["10","20","30"] == 60
```

## `parsePairs :: [(String, String)] -> [(Int, Int)]`

Parse both halves of each pair.

```
parsePairs [("1","2"),("3","4")] == [(1,2),(3,4)]
```

## `maxParsed :: [String] -> Int`

The largest of the parsed numbers. Assume the list is non-empty.

```
maxParsed ["3","9","2"] == 9
```
