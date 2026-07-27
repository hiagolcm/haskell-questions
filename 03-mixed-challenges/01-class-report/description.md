# 01 — Class Report (Integrative Challenge)

**Type:** Integrative — you'll combine several things that were taught
separately into one multi-step pipeline: parse → average → classify →
format.

Concepts pulled together:
* chapter 1 — comprehensions (nested), tuples, `sum`/`length`, `if/then/else`,
  string building
* chapter 2 — `read` (parsing the score strings), `fromIntegral` (for a
  fractional average), `show` (of a `Double`), and an ordering comparison

## `classReport :: [(String, [String])] -> [String]`

The input pairs each student's name with a list of their score strings. For
each student, in order:

1. parse the scores into numbers,
2. compute their average as a `Double`,
3. decide `"pass"` if the average is **at least 60**, otherwise `"fail"`,
4. produce the line `"<name>: <average> (<verdict>)"`.

Assume every student has at least one score.

```
classReport [("Ann",["90","80","100"]),("Bob",["50","40"]),("Cid",["70","75"])]
  == ["Ann: 90.0 (pass)","Bob: 45.0 (fail)","Cid: 72.5 (pass)"]

classReport [("Dan",["60"])] == ["Dan: 60.0 (pass)"]
```

---

Open-ended challenge: the template is empty and only `classReport` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
