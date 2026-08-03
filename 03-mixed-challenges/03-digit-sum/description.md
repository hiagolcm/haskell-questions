# 03 — Digit Sum (Edge-case Challenge)

**Type:** Edge-case — the tools are familiar, but the way you'll need to use
one of them is not. `read` was taught for parsing a whole value out of a
string; here the twist is applying it in an unusual spot. A string is also a
`[Char]` (chapter 1), so you can walk it one character at a time — but a
single `Char` like `'7'` is not the number `7`. Think about how the
chapter-2 tools could bridge a one-character string and a number.

## `digitSum :: String -> Int`

The input is a string of digit characters (`'0'`–`'9'`, no sign, no spaces).
Return the sum of the digits as an `Int`.

```
digitSum "12345" == 15
digitSum "909"   == 18
digitSum "0"     == 0
digitSum "7"     == 7
```

Note: `digitSum "12345"` is **not** `12345` — it's `1 + 2 + 3 + 4 + 5`. So
parsing the whole string as one number is the wrong move; you need the
individual digits.

---

Open-ended challenge: the template is empty and only `digitSum` is checked.
Break it into whatever helpers you like. Until it's defined, the tests show a
compile error ("not in scope").
