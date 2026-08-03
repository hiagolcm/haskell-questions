# 01 — Safe Division Basics

New idea: **`>>=`** (bind) for `Maybe`. `mx >>= f` runs `f` on the value
inside `mx` *if* `mx` is `Just`, and short-circuits to `Nothing` without
ever calling `f` if `mx` is already `Nothing`. This is how you chain
several computations that might each fail, without hand-writing nested
`case` expressions to check for `Nothing` at every step.

## Functions to implement

### `safeDiv :: Int -> Int -> Maybe Int`

Integer division that fails safely instead of crashing.

```
safeDiv 10 2 == Just 5
safeDiv 10 0 == Nothing
```

### `chainedDivide :: Int -> Int -> Int -> Maybe Int`

`chainedDivide a b c` divides `a` by `b`, then divides *that* result by
`c`. Build it with `>>=` on `safeDiv` — not nested `case`/`if`.

```
chainedDivide 100 5 2 == Just 10
chainedDivide 100 0 2 == Nothing
chainedDivide 100 5 0 == Nothing
```

### `safeDivChain :: Int -> Int -> Int -> Int -> Maybe Int`

Same idea as `chainedDivide`, but three divisions in a row: `a / b`, then
`/ c`, then `/ d`. However many steps you chain, `>>=` handles the
short-circuiting the same way each time.

```
safeDivChain 1000 2 5 2 == Just 50
safeDivChain 1000 0 5 2 == Nothing
safeDivChain 1000 2 5 0 == Nothing
```
