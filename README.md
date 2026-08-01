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
  03-mixed-challenges/        # cross-chapter challenges (ch1 + ch2)
    01-class-report/
    ...
  04-syntax-in-functions/     # chapter 4
    01-pattern-basics/
    ...
  05-higher-order-functions/  # chapter 5
    01-currying-and-sections/
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

### 03 — mixed-challenges
Cross-chapter challenges that combine chapter 1 and chapter 2. Two kinds:

* **Integrative** (`01-class-report`, `02-closest-point`) — combine several
  separately-taught pieces into one multi-step solution.
* **Edge-case** (`03-digit-sum`, `04-sorted-check`) — familiar tools applied
  in unfamiliar ways, on inputs that defeat the obvious approach.

All four are single-result functions with empty templates, like the other
challenges.

### 04 — syntax-in-functions
Based on https://learnyouahaskell.github.io/syntax-in-functions.html —
pattern matching, tuple/list patterns, as-patterns, recursion, guards,
`where`, `let ... in`, and `case`. Each exercise keeps using the earlier
chapters' toolkit. Regular: 01–10. Challenges: 11–14 (11–12 integrative,
13–14 edge-case).

### 05 — higher-order-functions
Based on https://learnyouahaskell.github.io/higher-order-functions.html —
currying and partial application, sections, `map`/`filter`, lambdas,
functions as parameters/return values, `foldl`/`foldr` (+`foldl1`/`foldr1`),
`scanl`/`scanl1`, the `$` operator, and composition (`.`)/point-free style.
Each exercise keeps using the earlier chapters' toolkit. Regular: 01–10.
Challenges: 11–14 — integrative (`11-poly-value`, `12-weighted-average`)
combine several formulas into one multi-step calculation; edge-case
(`13-compose-all`, `14-op-dispatch`) apply this chapter's own tools
(composition, filter) to functions themselves rather than plain data.
