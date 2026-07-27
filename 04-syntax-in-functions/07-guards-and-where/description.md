# 07 — Guards and Where

New idea: **`where`** bindings, which name intermediate values (or helper
functions, or even destructure with a pattern) shared across a function's
guards. Implement each function using `where` together with guards.

## `bmiFrom :: Double -> Double -> String`

Compute BMI as `weight / (height * height)` in a `where` binding, then
classify it exactly as in exercise 06 (`< 18.5` underweight, `< 25` normal,
`< 30` overweight, else obese).

```
bmiFrom 40 1.75  == "underweight"
bmiFrom 60 1.75  == "normal"
bmiFrom 90 1.75  == "overweight"
bmiFrom 110 1.75 == "obese"
```

## `triangleType :: Int -> Int -> Int -> String`

`"equilateral"` if all three sides are equal, `"isosceles"` if exactly two
are, otherwise `"scalene"`.

```
triangleType 3 3 3 == "equilateral"
triangleType 3 3 5 == "isosceles"
triangleType 3 4 5 == "scalene"
```

## `initials :: String -> String -> String`

The two initials, like `"J. D."`. (A `where` pattern binding such as
`(f:_) = firstName` is a tidy way to grab the first letters.) Assume neither
name is empty.

```
initials "John" "Doe" == "J. D."
```

## `priceWithTax :: Double -> Double`

Add 50% tax to a price. Put the tax rate in a `where` binding.

```
priceWithTax 100 == 150.0
priceWithTax 50  == 75.0
```
