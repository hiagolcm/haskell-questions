# 10 — Gradebook Capstone

A mini gradebook that ties the whole chapter together: `read`, `zip` over an
`Enum` range, `compare`, integer arithmetic, `show`, and comprehensions.

## `parseScores :: [String] -> [Int]`

Parse a list of score strings.

```
parseScores ["3","5","7"] == [3,5,7]
```

## `attachLabels :: [Int] -> [(Char, Int)]`

Label each score with a letter starting at `'A'`.

```
attachLabels [10,20] == [('A',10),('B',20)]
```

## `rankVsAverage :: [Int] -> [Ordering]`

Compare each score against the (integer) average of all the scores. Assume
the list is non-empty.

```
rankVsAverage [1,5,9] == [LT,EQ,GT]
```

(The average of `[1,5,9]` is `15 \`div\` 3 == 5`.)

## `report :: [String] -> [String]`

Parse the scores, then produce one line per score of the form
`"<letter>: <score>"`, with letters starting at `'A'`.

```
report ["10","20"] == ["A: 10","B: 20"]
```

## `highest :: [String] -> Int`

The largest parsed score. Assume the list is non-empty.

```
highest ["3","9","2"] == 9
```
