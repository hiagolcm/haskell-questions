# 02 — Expression Evaluator via Bind

This is the exercise that motivates `>>=` in the first place. Evaluating a
small arithmetic expression tree, where division might fail, gets
extremely verbose if you handle every possible failure with a nested
`case`. `>>=` lets you write it as a flat chain instead.

## The type you must define

```haskell
data Expr = Val Int | Div Expr Expr
```

## Function to implement

### `eval :: Expr -> Maybe Int`

Evaluates the expression. `Val n` evaluates to `n`. `Div x y` evaluates
`x` and `y`, then divides the first result by the second — but if either
sub-expression fails, or the divisor evaluates to `0`, the whole thing is
`Nothing`. Build this with `>>=`, chaining the evaluation of `x` into the
evaluation of `y` into the final division — not a nested `case`.

```
eval (Val 5) == Just 5
eval (Div (Val 10) (Val 2)) == Just 5
eval (Div (Val 10) (Val 0)) == Nothing
eval (Div (Div (Val 20) (Val 2)) (Val 5)) == Just 2
```

(The last one: `20 / 2 = 10`, then `10 / 5 = 2`.)
