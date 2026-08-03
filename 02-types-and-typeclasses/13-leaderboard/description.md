# 13 — Leaderboard (Challenge)

Write a single function that builds a leaderboard from `(name, score)`
pairs. It pulls together most of the chapter: tuples and comprehensions,
`fromIntegral` for a fractional average, ordering comparisons, `Eq` to spot
the top score, `show`, and `if/then/else`.

## `leaderboard :: [(String, Int)] -> [String]`

Compute the average score (as a `Double`). Then, keeping the original order,
produce a line `"name - score"` for every entry whose score is **at least
the average**. Mark the entry that has the highest score of all with a
trailing `" *"`.

```
leaderboard [("a",4),("b",8),("c",6)] == ["b - 8 *","c - 6"]
leaderboard [("x",1),("y",3),("z",2)] == ["y - 3 *","z - 2"]
leaderboard [("solo",5)]              == ["solo - 5 *"]
```

Assume the list is non-empty and the top score is unique.

---

Open-ended challenge: the template is empty and only `leaderboard` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
