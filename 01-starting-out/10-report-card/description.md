# 10 — Report Card (Capstone)

This is the capstone exercise — no recursion, `map`, or `filter` needed.

Edit `Solution.hs` and implement each function below.

## `letterGrade :: Int -> String`

Converts a numeric score (0-100) to a letter grade:

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

Pairs each student's name with their letter grade.

```
buildReport ["Ada","Alan"] [95,72] == [("Ada","A"),("Alan","C")]
```

## `honorRoll :: [(String, Int)] -> [String]`

Given a list of `(name, score)` pairs, returns the names of students
scoring 90 or above.

```
honorRoll [("Ada",95),("Alan",72),("Grace",91)] == ["Ada","Grace"]
```

## `classAverage :: [Int] -> Double`

The mean of a list of scores, as a `Double`. Assume the list is
non-empty.

```
classAverage [95,72,91] == 86.0
```

## `formatReportLine :: (String, String) -> String`

Given a `(name, grade)` pair, formats it as `"name: grade"`.

```
formatReportLine ("Ada","A") == "Ada: A"
```

## `passRate :: [Int] -> Double`

Returns the percentage (0-100) of scores that are 60 or above. Assume the
list is non-empty.

```
passRate [95,72,50,60] == 75.0
passRate [50,55] == 0.0
```
