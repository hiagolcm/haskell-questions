# 02 — Nested Points

New idea: a **data type built out of another data type**. Rather than four
raw `Float`s, a shape can hold `Point` values, and pattern matching can
reach right through the nesting (`Rectangle (Point x1 y1) (Point x2 y2)`).

## The types you must define

Define `Point` with one constructor `Point` carrying two `Float`s:

```haskell
data Point = Point Float Float
```

Define `Shape` with two constructors:

* `Circle` — a `Point` (the center) and a `Float` (the radius).
* `Rectangle` — two `Point`s (opposite corners).

```haskell
data Shape = Circle Point Float | Rectangle Point Point
```

Derive `Show` and `Eq` on **both** types.

## Functions to implement

### `surfaceArea :: Shape -> Float`

Same formulas as exercise 01, but reaching into the nested `Point`s via
pattern matching.

```
surfaceArea (Circle (Point 0 0) 10) == pi * 100
surfaceArea (Rectangle (Point 0 0) (Point 10 20)) == 200.0
```

### `moveShape :: Float -> Float -> Shape -> Shape`

`moveShape dx dy shape` translates every point in the shape by `(dx, dy)`.

```
moveShape 5 5 (Circle (Point 0 0) 10) == Circle (Point 5 5) 10
moveShape 1 2 (Rectangle (Point 0 0) (Point 10 10)) ==
  Rectangle (Point 1 2) (Point 11 12)
```
