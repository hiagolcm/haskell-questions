# 10 — Report Card (Capstone)

This one mixes almost everything from the chapter: tuples, `zip`, list
comprehensions, boolean comparisons, `if/then/else`, string concatenation,
and arithmetic. No recursion, `map`, or `filter` needed — comprehensions
and the functions from the earlier exercises are enough.

Edit `Solution.hs` and implement each function below.

## `letterGrade :: Int -> String`

Converts a numeric score (0-100) to a letter grade using `if/then/else`:

* `>= 90` → `"A"`
* `>= 80` → `"B"`
* `>= 70` → `"C"`
* `>= 60` → `"D"`
* otherwise → `"F"`

```
letterGrade 95 == "A"
letterGrade 72 == "C"
letterGrade 40 == "F"
```

## `buildReport :: [String] -> [Int] -> [(String, String)]`

Pairs each student's name with their letter grade. `zip` the names and
scores together, then run a comprehension over the pairs that calls
`letterGrade` on each score — like `[(n, letterGrade s) | (n, s) <- zip names scores]`.

```
buildReport ["Ada","Alan"] [95,72] == [("Ada","A"),("Alan","C")]
```

## `honorRoll :: [(String, Int)] -> [String]`

Given a list of `(name, score)` pairs, returns the names of students
scoring 90 or above, using a comprehension with a predicate on the score.

```
honorRoll [("Ada",95),("Alan",72),("Grace",91)] == ["Ada","Grace"]
```

## `classAverage :: [Int] -> Double`

The mean of a list of scores, as a `Double` (same idea as exercise 09's
`average` — remember `fromIntegral`). Assume the list is non-empty.

```
classAverage [95,72,91] == 86.0
```

## `formatReportLine :: (String, String) -> String`

Given a `(name, grade)` pair, formats it as `"name: grade"` using `++`.

```
formatReportLine ("Ada","A") == "Ada: A"
```

## `passRate :: [Int] -> Double`

Returns the percentage (0-100) of scores that are 60 or above. Build the
list of passing scores with a comprehension, then divide its length by
the total count (with `fromIntegral`) and multiply by 100. Assume the
list is non-empty.

```
passRate [95,72,50,60] == 75.0
passRate [50,55] == 0.0
```
