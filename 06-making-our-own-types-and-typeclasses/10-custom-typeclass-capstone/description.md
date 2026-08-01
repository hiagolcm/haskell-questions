# 10 — Custom Typeclass Capstone

New idea: defining your **own typeclass** with `class`, then writing
`instance` declarations for it — for both a type you define yourself and a
built-in type (`Bool`). This is the same shape as the book's `Eq`/`YesNo`
examples, just with a class of your own design.

## The class you must define

```haskell
class Describable a where
  describe :: a -> String
```

## The type you must define

```haskell
data Season = Spring | Summer | Autumn | Winter
```

Derive `Show` and `Eq` on `Season`.

## Instances to write

### `instance Describable Season`

`describe` should return `"warming up"` for `Spring`, `"hot"` for
`Summer`, `"cooling down"` for `Autumn`, and `"cold"` for `Winter`.

```
describe Spring == "warming up"
describe Winter == "cold"
```

### `instance Describable Bool`

`describe True` is `"yes"`; `describe False` is `"no"`.

```
describe True  == "yes"
describe False == "no"
```

## Function to implement

### `announce :: Describable a => a -> String`

Wraps whatever `describe` returns: `"It's <description>."`. This function
works for *any* `Describable` instance — it doesn't know or care whether
it's looking at a `Season` or a `Bool`.

```
announce Summer == "It's hot."
announce True    == "It's yes."
```
