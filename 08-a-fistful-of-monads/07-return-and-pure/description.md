# 07 — Return and Pure

New idea: **`return`**. Instead of always writing `Just x` to inject a
plain value into a `Maybe` chain, the `Monad` class's `return` (which
defaults to `pure`) does the same thing generically. Inside a `do` block
for `Maybe`, `return x` and `Just x` produce the exact same value — but
`return` is the name that works no matter which monad you're in.

## Functions to implement

### `validateScore :: Int -> Maybe Int`

`Nothing` if the score is below `0` or above `100`; otherwise `Just` the
score.

```
validateScore 80 == Just 80
validateScore (-5) == Nothing
validateScore 200 == Nothing
```

### `finalizeScore :: Int -> Int -> Maybe Int`

Validates a raw score and a bonus (both with `validateScore`), then
combines them with `min 100 (score + bonus)` — using `do` notation, ending
the block with `return` (not `Just`) to wrap the final value.

```
finalizeScore 80 30 == Just 100
finalizeScore 50 20 == Just 70
finalizeScore (-5) 20 == Nothing
finalizeScore 50 200 == Nothing
```
