# 12 — Summarize (Challenge)

Write a single function that parses numbers from strings and reports several
statistics — including a fractional mean, so you'll mix `read`, `show`,
`fromIntegral`, and chapter-1 aggregators (`minimum`, `maximum`, `sum`,
`length`).

## `summarize :: [String] -> String`

Parse every string as an integer, then return:

```
"min <m>, max <M>, sum <S>, mean <avg>"
```

where the mean is a `Double`. Assume the list is non-empty.

```
summarize ["2","4","6"] == "min 2, max 6, sum 12, mean 4.0"
summarize ["1","2"]     == "min 1, max 2, sum 3, mean 1.5"
```

Reminder from this chapter: when a `read` isn't forced to a particular type
by its surroundings, add an annotation like `read s :: Int`.

---

Open-ended challenge: the template is empty and only `summarize` is checked.
Break it into whatever helpers you like. Until it's defined, the tests show
a compile error ("not in scope").
