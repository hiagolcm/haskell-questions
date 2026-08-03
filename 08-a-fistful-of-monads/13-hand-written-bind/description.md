# 13 — Hand-Written Bind (Edge-Case Challenge)

Edge-case challenge: everywhere else in this chapter, once a `Monad`
instance exists, you're free to reach for `do` notation. Here you must
deliberately avoid it, to make sure the underlying mechanics of `>>=`
aren't just muscle memory hidden behind sugar.

Define your own type mirroring `Maybe`:

```haskell
data Box a = Empty | Full a
  deriving (Show, Eq)
```

Write `instance Functor Box`, `instance Applicative Box`, and
`instance Monad Box`, mirroring how `Maybe` behaves (`Empty` behaves like
`Nothing`, `Full` like `Just`).

Then implement the following **without using `do` notation anywhere** —
only explicit `>>=` (and/or `>>`), lambdas, and plain function
application:

### `combine3 :: Box Int -> Box Int -> Box Int -> Box Int`

If all three boxes are `Full`, produce `Full` of their sum. If any of
them is `Empty`, the result is `Empty`.

```
combine3 (Full 1) (Full 2) (Full 3) == Full 6
combine3 (Full 1) Empty (Full 3) == Empty
combine3 Empty Empty Empty == (Empty :: Box Int)
```
