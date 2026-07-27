# 08 — Let Expressions

New idea: **`let ... in ...`**, which introduces local names as part of an
expression (unlike `where`, which is attached to a definition). `let` also
works as a binding inside a list comprehension. Implement each function
using `let`.

## `heronArea :: Double -> Double -> Double -> Double`

The area of a triangle with sides `a`, `b`, `c` by Heron's formula: let
`s = (a + b + c) / 2`, then the area is `sqrt (s (s-a) (s-b) (s-c))`.

```
heronArea 3 4 5  == 6.0
heronArea 6 8 10 == 24.0
```

## `midpoint :: (Double, Double) -> (Double, Double) -> (Double, Double)`

The midpoint of two points.

```
midpoint (0,0) (4,6) == (2.0,3.0)
midpoint (1,1) (3,5) == (2.0,3.0)
```

## `discount :: Double -> Double -> Double`

`discount price pct` takes `pct` percent off `price`. Use a `let` binding
for the amount taken off.

```
discount 200 25 == 150.0
discount 80 50  == 40.0
```

## `bmis :: [(Double, Double)] -> [Double]`

The BMI `w / (h * h)` for each `(weight, height)` pair, using a `let`
binding *inside the list comprehension*.

```
bmis [(72,2),(50,2.5)] == [18.0,8.0]
```
