# 04 — Parameterized Pair

New idea: a **type parameter**. `Pair a` isn't a concrete type by itself —
`Pair Int`, `Pair Bool`, and `Pair [String]` are all different concrete
types built from the same `Pair` type *constructor*. This is the same idea
behind `Maybe a`.

## The type you must define

Define `Pair` with one type parameter and one constructor holding two
values of that same parameter type:

```haskell
data Pair a = Pair a a
```

Derive `Show` and `Eq`.

## Functions to implement

### `pairToList :: Pair a -> [a]`

Both elements, as a two-element list.

```
pairToList (Pair 1 2) == [1,2]
pairToList (Pair 'a' 'b') == "ab"
```

### `swapPair :: Pair a -> Pair a`

Swaps the two elements.

```
swapPair (Pair 1 2) == Pair 2 1
```

### `mapPair :: (a -> b) -> Pair a -> Pair b`

Applies a function to both elements (reuse the "function as a parameter"
idea from chapter 5).

```
mapPair (+1) (Pair 1 2) == Pair 2 3
mapPair show (Pair 1 2) == Pair "1" "2"
```
