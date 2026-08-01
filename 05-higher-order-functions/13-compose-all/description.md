# 13 — Compose All (Edge-case Challenge)

**Type:** Edge-case — the book only ever composes exactly two named
functions with `.` (`f . g`). Here you need to chain an entire **list** of
functions, whose length you don't know in advance. Composing a fixed pair
is old news; composing "however many there happen to be" is the unfamiliar
part.

## `composeAll :: [a -> a] -> a -> a`

`composeAll fs x0` applies every function in `fs` to a running value, **in
the order they appear in the list** — the first function in `fs` is applied
first, then the next, and so on.

```
composeAll [(+1), (*3), subtract 2] 5 == 16
```

(`5` → `+1` → `6` → `*3` → `18` → `subtract 2` → `16`.)

```
composeAll [] 5        == 5
composeAll [negate] 5  == -5
composeAll [(*2), (*2), (*2)] 1 == 8
```

---

Open-ended challenge: the template is empty and only `composeAll` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
