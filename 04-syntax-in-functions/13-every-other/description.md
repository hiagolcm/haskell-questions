# 13 — Every Other (Edge-case Challenge)

**Type:** Edge-case — pattern matching, but with an unusual shape. You know
how to peel one element with `(x:xs)`. Here the trick is to peel *two* at a
time and keep only one of them — and to handle the leftover single element
and the empty list as their own cases.

## `everyOther :: [a] -> [a]`

Keep the elements at even indices (the 1st, 3rd, 5th, …), dropping the ones
in between.

```
everyOther [1,2,3,4,5] == [1,3,5]
everyOther "abcdef"    == "ace"
everyOther [1]         == [1]
everyOther ([] :: [Int]) == []
```

Do it with pattern matching and recursion — no `zip`/index tricks.

---

Open-ended challenge: the template is empty and only `everyOther` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
