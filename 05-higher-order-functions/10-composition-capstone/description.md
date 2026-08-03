# 10 — Composition Capstone

New idea: **`.`**, function composition — `f . g` is the function "do `g`,
then do `f`" (`(f . g) x == f (g x)`). Writing a function without naming
its argument at all, like `total = sum . map (^2)`, is called **point-free**
style. This capstone combines composition with everything else from the
chapter: `map`, `filter`, folds, sections, and `$`.

## `sumSquaresOfEvens :: [Int] -> Int`

The sum of the squares of the even numbers. Define it point-free, as a
composition of `sum`, `map (^2)`, and `filter even` (in the right order).

```
sumSquaresOfEvens [1,2,3,4,5,6] == 56
```

(Evens: `2,4,6`; squares: `4,16,36`; sum: `56`.)

## `countNegatives :: [Int] -> Int`

How many elements are negative. Define it point-free, composing `length`
and `filter (< 0)`.

```
countNegatives [-1,2,-3,4,-5] == 3
```

## `describeAll :: [Int] -> [String]`

Each number turned into `"neg"`/`"zero"`/`"pos"` (same rule as exercise
05's `labelSigns`), but built as `map` composed with a small helper you
write, rather than an inline lambda.

```
describeAll [-2,0,7] == ["neg","zero","pos"]
```

## `processScores :: [Int] -> String`

`"<count> passed, average <avg>"` where `count` is how many scores are
`>= 60` and `avg` is the average of *all* the scores as a `Double` (reuse
`fromIntegral` from chapter 2). Assume the list is non-empty. You can mix
`$`, composition, and ordinary application however reads best to you.

```
processScores [90,40,70,60] == "3 passed, average 65.0"
```
