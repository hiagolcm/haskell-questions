# 14 — Descending Tiebreak (Edge-case Challenge)

**Type:** Edge-case — exercise 10 chained `Ordering`s with `<>` where every
key sorted the "natural" way (ascending). The twist here: chaining works
just as well when one of the keys needs to sort **backwards**, but `<>`
gives you no way to say that directly — `compare` alone always produces
the ascending answer. You have to flip the *result* of one comparison
before combining it, and it has to be exactly the right one, or every tie
gets broken by the wrong key in the wrong direction.

## Function to implement

### `rankKey :: (Int, Int, String) -> (Int, Int, String) -> Ordering`

Compares two `(a, b, name)` triples using three keys, in this priority
order:

1. `a`, ascending (smaller `a` sorts first),
2. `b`, **descending** (larger `b` sorts first),
3. `name`, ascending, as the final tiebreaker.

```
rankKey (1, 5, "x") (2, 5, "y") == LT   -- differ on a: 1 < 2
rankKey (1, 9, "x") (1, 5, "y") == LT   -- a ties; larger b (9) sorts first
rankKey (1, 5, "x") (1, 9, "y") == GT   -- a ties; larger b (9) sorts first
rankKey (1, 5, "b") (1, 5, "a") == GT   -- a and b tie; alphabetical name
```

---

Open-ended challenge: the template is empty and only `rankKey` is checked.
