# 14 — Operator Dispatch (Edge-case Challenge)

**Type:** Edge-case — `map` and `filter` are normally shown working over
lists of numbers or strings. The unfamiliar twist here: a list can just as
well hold **functions** as its elements. If you pair each function with a
name, you can `filter` that list of `(name, function)` pairs to find the
one you want — using the exact same tools, just applied to a kind of value
you don't normally think to put in a list.

## `applyOp :: String -> Int -> Int -> Int`

`applyOp name a b` looks up the two-argument operation matching `name` —
one of `"+"`, `"-"`, `"*"`, or `"max"` — and applies it to `a` and `b`.
Assume `name` is always one of those four strings.

```
applyOp "+" 3 4   == 7
applyOp "-" 10 3  == 7
applyOp "*" 3 4   == 12
applyOp "max" 3 9 == 9
```

---

Open-ended challenge: the template is empty and only `applyOp` is checked.
Break it into whatever helpers you like. Until it's defined, the tests show
a compile error ("not in scope").
