# 11 — Run Operations

Combine recursion and list processing (from earlier chapters) with the
`Maybe` monad: turn a list of `Maybe` results into a single `Maybe` of a
list, failing as a whole if any one of them failed.

## Functions to implement

### `allJust :: [Maybe a] -> Maybe [a]`

If every element of the list is `Just`, produce `Just` of the list of
unwrapped values, in the same order. If any element is `Nothing`, the
whole result is `Nothing`. An empty list produces `Just []`.

Implement it recursively, using `>>=` (or `do`) to chain each element's
Maybe onto the recursive call for the rest of the list — don't use
`sequence` or `mapM`.

```
allJust [] == Just []
allJust [Just 1, Just 2, Just 3] == Just [1, 2, 3]
allJust [Just 1, Nothing, Just 3] == Nothing
```

### `sumIfAllValid :: [Maybe Int] -> Maybe Int`

Using `allJust`, sum up a list of `Maybe Int` values, but only if every
one of them is present.

```
sumIfAllValid [Just 1, Just 2, Just 3] == Just 6
sumIfAllValid [Just 1, Nothing, Just 3] == Nothing
```
