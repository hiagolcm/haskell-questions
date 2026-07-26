# 13 — Caesar Cipher

Write a single function that encrypts text with a Caesar cipher. A Caesar
cipher shifts every letter forward through the alphabet by a fixed amount,
wrapping around from `z` back to `a`. For example, a shift of 3 turns
`"abc"` into `"def"` and `"xyz"` into `"abc"`.

## `encode :: Int -> String -> String`

`encode n text` shifts each letter of `text` forward by `n`, following
these rules:

* Work only with the lowercase alphabet `['a'..'z']` (26 letters).
* Any character that is **not** a lowercase letter (spaces, digits,
  punctuation) is left untouched.
* Shifts wrap around from `z` back to `a`, and are reduced modulo 26 — so a
  shift of 26 is the same as a shift of 0.

```
encode 3 "abc"          == "def"
encode 3 "xyz"          == "abc"
encode 3 "hello world"  == "khoor zruog"
encode 0 "haskell"      == "haskell"
encode 26 "haskell"     == "haskell"
```

---

This is an **open-ended** exercise. The template is empty and only `encode`
is checked — how you break the work into smaller helper functions (say,
something that shifts a single character) is entirely up to you. Until
`encode` is defined, running the tests shows a compile error ("not in
scope") rather than pass/fail lines.
