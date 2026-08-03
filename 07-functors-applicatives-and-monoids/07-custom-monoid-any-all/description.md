# 07 — Custom Monoid: Any and All

More custom `Monoid` instances, this time over `Bool`: one where combining
means "or" (true if at least one side is), and one where it means "and"
(true only if both sides are). Same idea as exercise 06 — two different
`newtype` wrappers over the same underlying type, each with its own notion
of "combine."

## The types you must define

```haskell
newtype MyAny = MyAny { getMyAny :: Bool }
newtype MyAll = MyAll { getMyAll :: Bool }
```

Derive `Show` and `Eq` on both.

## Instances to write

### `instance Semigroup MyAny` and `instance Monoid MyAny`

Combining two `MyAny`s is logical `||`; the empty value is `MyAny False`
(combining with it never turns a `True` into `False`).

```
MyAny True <> MyAny False == MyAny True
mempty <> MyAny True      == MyAny True
mempty <> mempty          == MyAny False
```

### `instance Semigroup MyAll` and `instance Monoid MyAll`

Combining two `MyAll`s is logical `&&`; the empty value is `MyAll True`.

```
MyAll True <> MyAll False == MyAll False
mempty <> MyAll True      == MyAll True
```

## Functions to implement

### `anyTrue :: [Bool] -> Bool`

Whether at least one value in the list is `True`, computed by wrapping
each in `MyAny`, combining with `mconcat`, and unwrapping.

```
anyTrue [False, False, True] == True
anyTrue [False, False]       == False
anyTrue []                   == False
```

### `allTrue :: [Bool] -> Bool`

Whether every value in the list is `True`, using `MyAll` the same way.

```
allTrue [True, True]        == True
allTrue [True, False]       == False
allTrue []                  == True
```
