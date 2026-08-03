# 14 — To Binary (Edge-case Challenge)

**Type:** Edge-case — a familiar toolkit (recursion, guards, `div`/`mod`,
`show`) applied to an unfamiliar problem: turning a number into its own
written representation. The insight is figuring out what to recurse on and
what the base case is.

## `toBinary :: Int -> String`

Return the base-2 (binary) string for a non-negative integer, with no
leading zeros (except `0` itself, which is `"0"`).

```
toBinary 0  == "0"
toBinary 1  == "1"
toBinary 5  == "101"
toBinary 6  == "110"
toBinary 10 == "1010"
```

Assume the input is `>= 0`.

---

Open-ended challenge: the template is empty and only `toBinary` is checked.
Break it into whatever helpers you like. Until it's defined, the tests show
a compile error ("not in scope").
