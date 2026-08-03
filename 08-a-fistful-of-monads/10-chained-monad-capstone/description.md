# 10 — Chained Monad Capstone (Integrative Challenge)

Integrative challenge: this one asks you to design your own types from
scratch, combining record syntax, recursive data types, association
lists, and `Maybe`-monad chaining (`>>=`/`do`) all together — no
individual step is new, but you'll need to fit them together yourself.

You're building a tiny variable-aware expression evaluator.

- An environment is just a list of `(String, Int)` pairs, mapping
  variable names to their values.
- An expression is either a literal number, a variable reference (looked
  up in the environment), or the division of two sub-expressions.
- Evaluating an expression against an environment can fail in two ways:
  a variable that isn't in the environment, or a division by zero. Both
  failures should simply produce `Nothing` — you don't need to say which
  one happened.

Design and implement:

```haskell
data VExpr
  = Lit Int
  | Var String
  | Divide VExpr VExpr
```

- `evalWithEnv :: [(String, Int)] -> VExpr -> Maybe Int`, which evaluates
  an expression against an environment, using `do` notation (or `>>=`) to
  chain the lookups and divisions and short-circuit on failure.

## Example behavior (informal)

If `env = [("x", 10), ("y", 2), ("z", 0)]`:

- The literal `5` evaluates to `Just 5`.
- The variable `"x"` evaluates to `Just 10`.
- The variable `"w"` (missing from `env`) evaluates to `Nothing`.
- Dividing `"x"` by `"y"` evaluates to `Just 5`.
- Dividing `"x"` by `"z"` evaluates to `Nothing` (division by zero).
- Dividing `"x"` by `"w"` evaluates to `Nothing` (missing variable).
- Nested divisions should short-circuit correctly: dividing (`"x"`
  divided by `"y"`) by a literal `1` evaluates to `Just 5`.
