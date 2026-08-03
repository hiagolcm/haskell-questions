# 01 — Basic Shapes

New idea: **`data` declarations**. You define your own type by naming its
**value constructors** — each one a tag plus the fields it carries. This
exercise is different from earlier chapters: nothing is stubbed for you.
You write the `data` declaration itself, not just function bodies.

## The type you must define

Define a type named `Shape` with exactly two value constructors:

* `Circle` — carries three `Float`s (you can think of them as center x,
  center y, and radius, though nothing enforces that).
* `Rectangle` — carries four `Float`s (opposite-corner coordinates
  `x1 y1 x2 y2`).

```haskell
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
```

Derive both `Show` and `Eq` for it (the tests construct `Shape` values and
compare them, so both are required).

## Functions to implement

### `area :: Shape -> Float`

The area of the shape: `pi * r^2` for a circle (`r` is the third field);
`abs (x2 - x1) * abs (y2 - y1)` for a rectangle.

```
area (Circle 0 0 10) == pi * 100
area (Rectangle 0 0 10 20) == 200.0
```

### `isCircle :: Shape -> Bool`

Whether the shape is a `Circle`.

```
isCircle (Circle 0 0 5)      == True
isCircle (Rectangle 0 0 1 1) == False
```
