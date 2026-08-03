# 11 — Newtype Laziness (Edge-case Challenge)

**Type:** Edge-case — chapter 4 taught you that pattern-matching a
constructor like `Wrap x` "opens up" the value to get at `x`. For an
ordinary `data` type, matching the constructor at all forces the value
enough to check which constructor it is — so pattern-matching something
built from `undefined` crashes immediately, even if you never look at the
field. `newtype` breaks that expectation: because a `newtype` has exactly
one constructor and is guaranteed to be nothing more than a relabeling at
runtime, GHC never needs to check "which constructor is this" — matching a
`newtype` constructor pattern costs nothing and forces nothing.

## The type you must define

```haskell
newtype Wrapper a = Wrapper a
```

(No `deriving` needed — nothing here requires comparing or showing a
`Wrapper`.)

## Function to implement

### `describeWrapper :: Wrapper a -> String`

Pattern-match the `Wrapper` constructor and return the fixed string
`"wrapped"` — always, no matter what's inside, without ever forcing the
wrapped value.

```
describeWrapper (Wrapper 5)       == "wrapped"
describeWrapper (Wrapper "hi")    == "wrapped"
describeWrapper (Wrapper undefined) == "wrapped"
```

The last example is the real test: if `Wrapper` were declared with `data`
instead of `newtype`, that call would crash with an `undefined` exception
the moment the constructor is matched — even though `describeWrapper`
never uses the field. With `newtype`, it doesn't.

---

Open-ended challenge: the template is empty and only `describeWrapper` is
checked (which also means `Wrapper` must exist for it to compile).
