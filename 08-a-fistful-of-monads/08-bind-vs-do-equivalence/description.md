# 08 — Bind vs Do, Side by Side

You're given a helper, already implemented:

```haskell
safeParseDigit :: Char -> Maybe Int
```

which turns a single character into `Just` its digit value (`0`-`9`), or
`Nothing` if the character isn't a digit.

Implement the same function twice, once with explicit `>>=` and once with
`do` notation, to see firsthand that they produce identical results.

## Functions to implement

### `combineDigitsBind :: Char -> Char -> Maybe Int`

Using explicit `>>=` (no `do`), parse both characters as digits and, if
both succeed, produce their sum.

```
combineDigitsBind '2' '3' == Just 5
combineDigitsBind 'x' '3' == Nothing
combineDigitsBind '2' 'y' == Nothing
```

### `combineDigitsDo :: Char -> Char -> Maybe Int`

Same behavior as `combineDigitsBind`, but written with `do` notation
instead.

```
combineDigitsDo '2' '3' == Just 5
combineDigitsDo 'x' '3' == Nothing
combineDigitsDo '2' 'y' == Nothing
```
