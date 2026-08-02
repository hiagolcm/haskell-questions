# 01 — Applicative Maybe

New idea: `Applicative`. Where `Functor` lets you apply a plain function to
a value inside a container (`fmap`), `Applicative` lets the function
*itself* live inside the container too — `pure :: a -> f a` wraps a plain
value, and `` (<*>) :: f (a -> b) -> f a -> f b `` applies a wrapped
function to a wrapped value. For `Maybe`, this means: if either side is
`Nothing`, the whole result is `Nothing`.

## Functions to implement

### `addMaybe :: Maybe Int -> Maybe Int -> Maybe Int`

Adds two `Maybe Int`s using `pure`/`<*>` (or the equivalent `<$>`/`<*>`
combo) — not by pattern matching `Just`/`Nothing` yourself.

```
addMaybe (Just 3) (Just 5) == Just 8
addMaybe (Just 3) Nothing  == Nothing
addMaybe Nothing (Just 5)  == Nothing
```

### `concatMaybeStrings :: Maybe String -> Maybe String -> Maybe String`

Concatenates two `Maybe String`s the same way.

```
concatMaybeStrings (Just "foo") (Just "bar") == Just "foobar"
concatMaybeStrings Nothing (Just "bar")      == Nothing
```

### `maybeTriple :: Maybe Int -> Maybe Int -> Maybe Int -> Maybe Int`

Adds three `Maybe Int`s together, chaining `<*>` twice.

```
maybeTriple (Just 1) (Just 2) (Just 3) == Just 6
maybeTriple (Just 1) Nothing (Just 3)  == Nothing
```
