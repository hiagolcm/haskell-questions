# 02 — Closest Point (Integrative Challenge)

**Type:** Integrative — a small geometry problem that only falls out once you
combine several ideas: turn integer coordinates into `Double`s, apply the
distance formula, find the minimum, and format the winner.

Concepts pulled together:
* chapter 1 — tuples, comprehensions, `fst`/`snd`, finding an extreme
* chapter 2 — `fromIntegral` (Int → Double), `sqrt` (the `Floating` class),
  ordering to pick the smallest, and `show`

## `closestToOrigin :: [(Int, Int)] -> String`

Each pair is a point `(x, y)`. Its distance from the origin is
`sqrt (x² + y²)`. Return the point nearest to the origin, formatted as:

```
"<point> at distance <d>"
```

where `<point>` is the pair shown as-is and `<d>` is the distance as a
`Double`. Assume the list is non-empty and the closest point is unique.

```
closestToOrigin [(3,4),(0,2),(6,8)] == "(0,2) at distance 2.0"
closestToOrigin [(1,0),(0,3)]       == "(1,0) at distance 1.0"
```

(In the examples the winning point's distance is a whole number, but your
computation should still go through `Double`.)

---

Open-ended challenge: the template is empty and only `closestToOrigin` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
