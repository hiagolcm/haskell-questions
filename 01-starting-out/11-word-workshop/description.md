# 11 — Word Workshop

Write a single function that summarizes a list of words. The input is a
list of words (`[String]`) that has already been split for you; assume it
is non-empty.

## `wordReport :: [String] -> String`

Produce a one-line summary in exactly this format:

```
"<count> words, longest <word>, <total> letters"
```

where

* `<count>` is how many words there are,
* `<word>` is the longest word (in every test the longest word is unique,
  so ties don't matter),
* `<total>` is the total number of letters across all the words.

```
wordReport ["cat","hippo","dog"] == "3 words, longest hippo, 11 letters"
wordReport ["a","bb","ccc"]      == "3 words, longest ccc, 6 letters"
wordReport ["hello"]             == "1 words, longest hello, 5 letters"
```

(The count is always written as `"<n> words"`, even when it is 1.)

---

This is an **open-ended** exercise. The template is empty and only
`wordReport` is checked — how you break the work into smaller helper
functions to get there is entirely up to you. Until `wordReport` is
defined, running the tests shows a compile error ("not in scope") rather
than pass/fail lines.
