# 08 — Typeclass Comprehensions

No brand-new concept — this pulls together everything so far: `Enum` ranges,
`zip`, `compare`, `Ord`, `show`, tuples, and comprehensions, all at once.

## `withCode :: [Int] -> [(Char, Int)]`

Label each number with a letter starting at `'A'`.

```
withCode [10,20,30] == [('A',10),('B',20),('C',30)]
```

## `rankAll :: [Int] -> [Ordering]`

Compare each element against the largest element of the list.

```
rankAll [3,9,9,1] == [LT,EQ,EQ,LT]
```

## `topItems :: Int -> [(String, Int)] -> [String]`

The names of the entries whose value is at least the threshold, in order.

```
topItems 50 [("a",40),("b",70),("c",90)] == ["b","c"]
```

## `showRanked :: [(String, Int)] -> [String]`

Render each entry as `"name: value"`.

```
showRanked [("a",1),("b",2)] == ["a: 1","b: 2"]
```
