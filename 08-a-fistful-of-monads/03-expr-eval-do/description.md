# 03 — Expression Evaluator via Do-Notation

New idea: **`do` notation** is just syntactic sugar for a chain of `>>=`.
`do { n <- eval x; m <- eval y; maybeDiv n m }` desugars to exactly
`eval x >>= \n -> eval y >>= \m -> maybeDiv n m` — same meaning, different
spelling. Here you write the same evaluator as exercise 02, but with `do`.

## The type you must define

```haskell
data Expr = Val Int | Div Expr Expr
```

## Function to implement

### `evalDo :: Expr -> Maybe Int`

Same behavior as exercise 02's `eval` — but written with `do` notation
instead of explicit `>>=`.

```
evalDo (Val 5) == Just 5
evalDo (Div (Val 10) (Val 2)) == Just 5
evalDo (Div (Val 10) (Val 0)) == Nothing
evalDo (Div (Div (Val 20) (Val 2)) (Val 5)) == Just 2
```
