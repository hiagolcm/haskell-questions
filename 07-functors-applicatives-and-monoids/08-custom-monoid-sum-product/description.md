# 08 — Custom Monoid: Sum and Product

New idea: writing your **own** `Monoid` instance, for a `newtype` wrapper
around numbers, in two different flavors — one where combining means
adding, and one where it means multiplying. Since `Int`s already have an
"obvious" combining rule via `+` and a different one via `*`, wrapping them
in different `newtype`s lets both coexist as separate `Monoid` instances.

Note: in modern Haskell, `Monoid` requires a `Semigroup` instance first —
`Semigroup` provides `<>`, and `Monoid` adds `mempty` on top. You'll need to
write **both** instances for each type.

## The types you must define

```haskell
newtype MySum a = MySum { getMySum :: a }
newtype MyProduct a = MyProduct { getMyProduct :: a }
```

Derive `Show` and `Eq` on both.

## Instances to write

### `instance Num a => Semigroup (MySum a)` and `instance Num a => Monoid (MySum a)`

Combining two `MySum`s adds the wrapped numbers; the empty value is
`MySum 0`.

```
MySum 3 <> MySum 9 == MySum 12
mempty <> MySum 3  == MySum 3
```

### `instance Num a => Semigroup (MyProduct a)` and `instance Num a => Monoid (MyProduct a)`

Combining two `MyProduct`s multiplies the wrapped numbers; the empty value
is `MyProduct 1`.

```
MyProduct 3 <> MyProduct 4 == MyProduct 12
mempty <> MyProduct 3      == MyProduct 3
```

## Functions to implement

### `sumAll :: [Int] -> Int`

The sum of a list, computed by wrapping each element in `MySum`, combining
with `mconcat`, and unwrapping with `getMySum`.

```
sumAll [1,2,3,4] == 10
sumAll [] == 0
```

### `productAll :: [Int] -> Int`

Same idea, using `MyProduct` for multiplication.

```
productAll [1,2,3,4] == 24
productAll [] == 1
```
