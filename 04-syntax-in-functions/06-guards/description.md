# 06 — Guards

New idea: **guards** — a series of boolean tests after a function head, each
with its own result, ending in `otherwise`. They're a clean replacement for
nested `if/then/else`. Implement each function with guards.

## `signWord :: Int -> String`

`"negative"`, `"zero"`, or `"positive"`.

```
signWord (-3) == "negative"
signWord 0    == "zero"
signWord 4    == "positive"
```

## `letterGrade :: Int -> Char`

`>= 90`→`'A'`, `>= 80`→`'B'`, `>= 70`→`'C'`, `>= 60`→`'D'`, else `'F'`.

```
letterGrade 95 == 'A'
letterGrade 75 == 'C'
letterGrade 50 == 'F'
```

## `maxOf3 :: Int -> Int -> Int -> Int`

The largest of three numbers.

```
maxOf3 3 9 5 == 9
maxOf3 8 2 4 == 8
```

## `bmiTell :: Double -> String`

Classify a BMI: `< 18.5`→`"underweight"`, `< 25`→`"normal"`, `< 30`→
`"overweight"`, else `"obese"`.

```
bmiTell 17 == "underweight"
bmiTell 22 == "normal"
bmiTell 27 == "overweight"
bmiTell 35 == "obese"
```
