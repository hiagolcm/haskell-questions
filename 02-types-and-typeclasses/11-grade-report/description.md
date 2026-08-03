# 11 — Grade Report (Challenge)

Write a single function that turns raw score strings into labelled letter
grades. It combines this chapter's `read` and `show` with chapter 1's
comprehensions, `if/then/else`, and string building.

## `gradeReport :: [String] -> [String]`

Parse each string as a score, then produce `"<score>: <letter>"` where the
letter grade is:

* `>= 90` → `"A"`, `>= 80` → `"B"`, `>= 70` → `"C"`, `>= 60` → `"D"`,
  otherwise `"F"`.

```
gradeReport ["95","72","50"]   == ["95: A","72: C","50: F"]
gradeReport ["88","60"]        == ["88: B","60: D"]
```

---

Open-ended challenge: the template is empty and only `gradeReport` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
