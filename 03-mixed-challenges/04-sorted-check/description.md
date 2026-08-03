# 04 — Sorted Check (Edge-case Challenge)

**Type:** Edge-case — an unfamiliar way to use familiar tools, on inputs that
break the obvious approach. You know how to compare two values (`Ord`,
chapter 2) and how to line up two lists with `zip` (chapter 1). The unusual
idea: to compare *neighbouring* elements of a single list, line the list up
against **itself, shifted by one**. Then watch the empty and single-element
lists — they have no neighbouring pairs at all.

## `isSorted :: Ord a => [a] -> Bool`

Return whether the list is in non-decreasing order (each element is `<=` the
next). It is polymorphic: it must work for numbers, characters, strings —
anything orderable.

```
isSorted [1,2,2,3]     == True
isSorted [1,3,2]       == False
isSorted "abc"         == True
isSorted "cba"         == False
isSorted [5]           == True
isSorted ([] :: [Int]) == True
```

The last two are the edge cases: a single element and an empty list are both
considered sorted (there's no adjacent pair that's out of order).

---

Open-ended challenge: the template is empty and only `isSorted` is checked.
Break it into whatever helpers you like. Until it's defined, the tests show a
compile error ("not in scope").
