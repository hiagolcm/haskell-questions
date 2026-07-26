# 01 — Temperature Logic

Edit `Solution.hs` and implement each function below. Do not change any
type signature.

## `celsiusToFahrenheit :: Double -> Double`

Converts a Celsius temperature to Fahrenheit using `F = C * 9/5 + 32`.

```
celsiusToFahrenheit 0    == 32.0
celsiusToFahrenheit 100  == 212.0
celsiusToFahrenheit (-40) == -40.0
```

Note the parentheses around `-40` when calling it — Haskell needs them for
negative number literals in argument position, same as `5 * (-3)` in the
book's examples.

## `fahrenheitToCelsius :: Double -> Double`

The inverse conversion: `C = (F - 32) * 5/9`.

```
fahrenheitToCelsius 32   == 0.0
fahrenheitToCelsius 212  == 100.0
```

## `classifyTemp :: Double -> String`

Given a Celsius temperature, classify it into one of four bands:

* `<= 0`      → `"freezing"`
* `> 0, <= 15` → `"cold"`
* `> 15, <= 25` → `"mild"`
* `> 25`      → `"hot"`

```
classifyTemp (-5) == "freezing"
classifyTemp 10   == "cold"
classifyTemp 20   == "mild"
classifyTemp 30   == "hot"
```

## `isComfortable :: Double -> Double -> Bool`

Takes a temperature in Celsius and a relative humidity percentage. Returns
`True` only when the temperature is between 18 and 26 (inclusive) **and**
the humidity is between 30 and 60 (inclusive).

```
isComfortable 22 45 == True
isComfortable 30 45 == False
isComfortable 22 90 == False
```

## `isWarmerThan :: Double -> Double -> Bool`

Returns `True` when the first temperature is strictly greater than the
second. Write it as an ordinary function, but notice the tests call it
infix with backticks, e.g. `` 30 `isWarmerThan` 10 ``, exactly like the
book's `` 92 `div` 10 `` example.

```
30 `isWarmerThan` 10 == True
10 `isWarmerThan` 30 == False
10 `isWarmerThan` 10 == False
```
