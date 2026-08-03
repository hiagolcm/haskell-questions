# 05 — Vector Math

New idea: putting a **class constraint on a function that uses a
parameterized type**, instead of on the `data` declaration itself.
`Vector3 a` should work for *any* `a`, but `vplus` only makes sense for
numeric `a` — so the `Num` constraint belongs on `vplus`'s signature, not
on `Vector3`'s declaration. (Constraining the data declaration itself is
possible but discouraged in Haskell, and isn't needed here.)

## The type you must define

```haskell
data Vector3 a = Vector3 a a a
```

Derive `Show` and `Eq`. Do **not** add a `Num` (or any other) constraint to
this declaration.

## Functions to implement

### `vplus :: Num a => Vector3 a -> Vector3 a -> Vector3 a`

Adds two vectors component-wise.

```
vplus (Vector3 3 5 8) (Vector3 9 2 8) == Vector3 12 7 16
```

### `vectMult :: Num a => Vector3 a -> a -> Vector3 a`

Scales a vector by a scalar.

```
vectMult (Vector3 3 9 7) 10 == Vector3 30 90 70
```

### `dotProduct :: Num a => Vector3 a -> Vector3 a -> a`

The dot product: `i*l + j*m + k*n`.

```
dotProduct (Vector3 1 2 3) (Vector3 4 5 6) == 32
```
