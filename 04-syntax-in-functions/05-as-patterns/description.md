# 05 — As-Patterns

New idea: **as-patterns**, written `all@(x:xs)`, which break a value apart
*and* keep a name for the whole thing. Implement each function; some reuse
recursion from exercise 04 and `Eq` from chapter 2.

## `repeatFirst :: [a] -> [a]`

Put a second copy of the first element at the front. Empty stays empty.
(Match `all@(x:_)` and return `x : all`.)

```
repeatFirst [1,2,3]      == [1,1,2,3]
repeatFirst ([] :: [Int]) == []
```

## `describeString :: String -> String`

`"empty"` on `""`, otherwise `"<whole> starts with <first char>"`.

```
describeString ""    == "empty"
describeString "cat" == "cat starts with c"
```

## `firstTwoEqual :: Eq a => [a] -> Bool`

Whether the first two elements are equal (and there are at least two).

```
firstTwoEqual [1,1,2] == True
firstTwoEqual [1,2]   == False
firstTwoEqual [5]     == False
```

## `dupEach :: [a] -> [a]`

Duplicate every element, using recursion.

```
dupEach [1,2] == [1,1,2,2]
dupEach "ab"  == "aabb"
```
