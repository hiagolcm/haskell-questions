# 06 — Monad Class, Custom Instance

New idea: **the `Monad` class itself**, and writing your own instance of
it. `class Applicative m => Monad m where return :: a -> m a; (>>=) :: m a
-> (a -> m b) -> m b` — a type needs a `Functor` and `Applicative` instance
*before* it can have a `Monad` instance (that's what
`Applicative m => Monad m` means). Here you write all three for a small
type shaped exactly like `Maybe`.

## The type you must define

```haskell
data Perhaps a = Nope | Yep a
```

Derive `Show` and `Eq`.

## Instances to write

Since `Monad` requires `Applicative`, which requires `Functor`, you'll need
all three:

### `instance Functor Perhaps`

`fmap f Nope` stays `Nope`; `fmap f (Yep x)` is `Yep (f x)`.

### `instance Applicative Perhaps`

`pure x` is `Yep x`. `Nope <*> _` is `Nope`; `(Yep f) <*> something` applies
`f` inside `something` (you can build this from `fmap`).

### `instance Monad Perhaps`

`Nope >>= _` is `Nope`; `(Yep x) >>= f` is `f x` — the same shape as the
`Maybe` instance.

## Function to implement

### `addPerhaps :: Perhaps Int -> Perhaps Int -> Perhaps Int`

Adds the two wrapped numbers, using `do` notation (or `>>=`) on your own
`Monad Perhaps` instance.

```
addPerhaps (Yep 3) (Yep 4) == Yep 7
addPerhaps Nope (Yep 4) == Nope
addPerhaps (Yep 3) Nope == Nope
```
