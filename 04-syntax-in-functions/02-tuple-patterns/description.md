# 02 — Tuple Patterns

New idea: matching a tuple's components directly in the parameter list, e.g.
`addVectors (x1,y1) (x2,y2) = ...`. This is cleaner than `fst`/`snd`, and it
reaches inside triples too. Implement each function with tuple patterns.

## `addVectors :: (Int, Int) -> (Int, Int) -> (Int, Int)`

Add two 2-D vectors componentwise.

```
addVectors (1,2) (3,4) == (4,6)
```

## `first3 :: (a, b, c) -> a`

The first component of a triple.

```
first3 (1,2,3)       == 1
first3 ('a','b','c') == 'a'
```

## `third3 :: (a, b, c) -> c`

The third component of a triple.

```
third3 (1,2,3) == 3
```

## `swapEnds :: (a, b, c) -> (c, b, a)`

Swap the first and last components of a triple.

```
swapEnds (1,2,3) == (3,2,1)
```

## `labelValue :: (String, Int) -> String`

Render a `(name, value)` pair as `"name=value"` (reuse `show` from chapter
2).

```
labelValue ("x",5) == "x=5"
```
