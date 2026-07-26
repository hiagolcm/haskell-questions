# Haskell Exercises — Learn You a Haskell

Coding exercises that follow the book chapter by chapter. Exercises are
grouped into **chapters**, and within each chapter split into:

* **Regular** — `Solution.hs` gives you functions with their type
  signatures; replace each `undefined` with a real implementation.
* **Challenges** — a single result function described in prose, shipped with
  an **empty** `Solution.hs`. You write everything, inventing your own
  helper functions; only the one result function is checked.

## Guiding principle: mix, don't isolate

Exercises are **progressive and integrative**. Nothing is practised in a
vacuum: each exercise reuses the concepts from every exercise before it and
layers a new idea on top. Chapter 2 assumes everything from chapter 1 (lists,
comprehensions, ranges, tuples, `zip`, booleans, `if/then/else`, string
building) and keeps using it while introducing types and typeclasses.

## Layout

```
haskell-questions/
  TestHarness.hs         # shared test helpers (don't touch)
  run-tests.sh           # the only command you need
  01-starting-out/       # chapter 1
    01-temperature-logic/
      description.md
      Solution.hs
      tests/Spec.hs
    ...
  02-types-and-typeclasses/   # chapter 2
    01-showing-lists/
    ...
```

## Running tests

```bash
./run-tests.sh               # every exercise in every chapter
./run-tests.sh 02            # every exercise in chapter 02
./run-tests.sh 02 03         # chapter 02, exercise 03
```

Requires `runghc` (ships with GHC) on your `PATH`.

## Chapters

### 01 — starting-out
Based on https://learnyouahaskell.github.io/starting-out.html — arithmetic,
booleans, `if/then/else`, lists, ranges, list comprehensions, tuples, `zip`.
Regular: 01–10. Challenges: 11–13.

### 02 — types-and-typeclasses
Based on https://learnyouahaskell.github.io/types-and-typeclasses.html —
explicit type signatures, polymorphism, and the typeclasses `Eq`, `Ord`
(`compare`/`Ordering`), `Show`, `Read` (+type annotations), `Enum`,
`Bounded`, and the numeric classes (`fromIntegral`, `pi`, `sqrt`). Every
exercise keeps using the chapter-1 toolkit. Regular: 01–10. Challenges:
11–13.
