# 11 — Run-Length Encoding (Integrative Challenge)

**Type:** Integrative — combine recursion, pattern matching, guards, and
`Eq` into one algorithm that walks a list and groups it.

## `runLengthEncode :: Eq a => [a] -> [(a, Int)]`

Collapse each run of equal, adjacent elements into a `(value, count)` pair,
in order.

```
runLengthEncode "aaabb"        == [('a',3),('b',2)]
runLengthEncode [1,1,2,3,3,3]  == [(1,2),(2,1),(3,3)]
runLengthEncode ([] :: [Int])  == []
runLengthEncode "abc"          == [('a',1),('b',1),('c',1)]
```

---

Open-ended challenge: the template is empty and only `runLengthEncode` is
checked. Break it into whatever helpers you like. Until it's defined, the
tests show a compile error ("not in scope").
