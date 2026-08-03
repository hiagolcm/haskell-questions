# 09 — Sum Present Scores (Integrative Challenge)

**Type:** Integrative — combine `Maybe`-aware summing (this chapter) with
counting (chapter 1) into a single report, rather than calling one
`Maybe`/`Applicative` function in isolation.

## Function to implement

### `reportScores :: [Maybe Int] -> String`

Some scores are missing (`Nothing`), some are present (`Just n`). Produce a
one-line summary of the form:

```
"sum: <total>, missing: <count>"
```

where `<total>` is the sum of every *present* score (missing scores just
don't contribute — they are not treated as zero, they're skipped), and
`<count>` is how many scores are missing.

```
reportScores [Just 10, Nothing, Just 20, Just 5] == "sum: 35, missing: 1"
reportScores [Nothing, Nothing] == "sum: 0, missing: 2"
reportScores [Just 7] == "sum: 7, missing: 0"
reportScores [] == "sum: 0, missing: 0"
```

---

Open-ended challenge: the template is empty and only `reportScores` is
checked. Break it into whatever helpers you like.
