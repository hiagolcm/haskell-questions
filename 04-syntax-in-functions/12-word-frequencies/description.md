# 12 — Word Frequencies (Integrative Challenge)

**Type:** Integrative — combine several ideas: finding the distinct values
in first-appearance order (recursion or a comprehension trick), then
counting each (comprehension + `Eq` + `length`), packaged as tuples.

## `wordFrequencies :: [String] -> [(String, Int)]`

Count how many times each distinct word occurs, listing the words in the
order they **first appear**.

```
wordFrequencies ["a","b","a","c","b","a"] == [("a",3),("b",2),("c",1)]
wordFrequencies ["x"]                     == [("x",1)]
wordFrequencies []                        == []
```

---

Open-ended challenge: the template is empty and only `wordFrequencies` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
