# 03 — List Patterns

New idea: matching a list by shape — `[]`, `(x:xs)` (head and tail), and
fixed shapes like `[_]`, `[_,_]`, `(x:y:_)`. Implement each function with
list patterns.

## `firstOrZero :: [Int] -> Int`

The first element, or `0` on an empty list.

```
firstOrZero [7,8] == 7
firstOrZero []    == 0
```

## `tailOrEmpty :: [a] -> [a]`

Everything after the first element; `[]` stays `[]`.

```
tailOrEmpty [1,2,3] == [2,3]
tailOrEmpty []      == []
```

## `sumFirstTwo :: [Int] -> Int`

The sum of the first two elements, or `0` if there aren't two. (Match
`(x:y:_)`.)

```
sumFirstTwo [10,20,30] == 30
sumFirstTwo [5]        == 0
sumFirstTwo []         == 0
```

## `describeLen :: [a] -> String`

`"empty"`, `"one"`, `"two"`, or `"many"` by matching the list's shape.

```
describeLen ([] :: [Int]) == "empty"
describeLen [1]           == "one"
describeLen [1,2]         == "two"
describeLen [1,2,3]       == "many"
```
