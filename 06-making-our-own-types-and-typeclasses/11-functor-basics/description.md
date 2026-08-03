# 11 — Functor Basics

New idea: **`Functor`**, the typeclass for "things you can map over."
`class Functor f where fmap :: (a -> b) -> f a -> f b` — this is exactly
what `map` does for lists, generalized to any container shape. Here you
write `instance Functor` declarations for two small containers of your
own.

## The types you must define

A single-value box:

```haskell
data Box a = Box a
```

And a type with two "cases," mirroring how the built-in `Maybe` works:

```haskell
data Opt a = None | Some a
```

Derive `Show` and `Eq` on both.

## Instances to write

### `instance Functor Box`

`fmap f (Box x)` should be `Box (f x)`.

```
fmap (+1) (Box 5)      == Box 6
fmap show (Box 5)      == Box "5"
```

### `instance Functor Opt`

`fmap` over `None` stays `None`; `fmap f (Some x)` is `Some (f x)` — same
shape as the book's `Maybe` instance.

```
fmap (+1) (Some 5)        == Some 6
fmap (+1) (None :: Opt Int) == None
```
