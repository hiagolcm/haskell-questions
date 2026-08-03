# 08 — Ordering Monoid Capstone

New idea: `Ordering` (`LT`/`EQ`/`GT`, from chapter 2) is itself a `Monoid`.
Combining two `Ordering`s with `<>` keeps the **first** one unless it's
`EQ`, in which case it falls through to the second — exactly what you want
for "compare by this key, and if that's a tie, compare by that key
instead." This capstone combines that with tuples, `compare`, and string
building from earlier chapters.

## Functions to implement

### `compareByLengthThenAlpha :: String -> String -> Ordering`

Compares two strings primarily by length, and — only if the lengths are
equal — alphabetically, using `<>` to chain the two `Ordering`s (not
nested `if`/`case`).

```
compareByLengthThenAlpha "zen" "ants" == LT
compareByLengthThenAlpha "zen" "ant"  == GT
compareByLengthThenAlpha "abc" "abd"  == LT
```

### `compareRecords :: (String, Int) -> (String, Int) -> Ordering`

Compares two `(name, score)` pairs primarily by score (higher score is
"less" in the ordering, i.e. sorts descending by score), and if the scores
tie, alphabetically by name.

```
compareRecords ("Bob", 90) ("Ann", 80) == LT
compareRecords ("Bob", 80) ("Ann", 90) == GT
compareRecords ("Bob", 80) ("Ann", 80) == GT
```

### `describeComparison :: String -> String -> String`

Uses `compareByLengthThenAlpha` and renders the result as `"<"`, `"="`, or
`">"`.

```
describeComparison "zen" "ants" == "<"
describeComparison "abc" "abc"  == "="
describeComparison "zen" "ant"  == ">"
```
