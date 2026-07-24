# Haskell Exercises — "Starting Out" (Learn You a Haskell)

Based on: https://learnyouahaskell.github.io/starting-out.html

Ten exercises, each mixing several concepts from the chapter (arithmetic,
booleans, if-then-else, lists, ranges, list comprehensions, tuples, zip...)
rather than drilling one concept at a time. Difficulty ramps up from
01 to the 10-capstone.

No recursion, `map`/`filter`, or imports beyond what the chapter covers are
needed (or expected) to solve any of these — everything is doable with
plain Prelude functions, ranges, and list comprehensions.

## Layout

```
haskell-questions/
  TestHarness.hs        # shared test-checking helpers, don't need to touch this
  run-tests.sh           # the only command you need to run tests
  01-temperature-logic/
    description.md       # the problem statement — read this first
    Solution.hs           # <-- edit this file, replace `undefined` with your answer
    tests/Spec.hs         # test cases, read-only, run by run-tests.sh
  02-list-toolbox/
    ...
  ...
```

## Workflow

1. Open an exercise's `description.md`.
2. Edit that exercise's `Solution.hs`, replacing every `undefined` with a
   real implementation matching the given type signature.
3. Run the tests:

   ```bash
   ./run-tests.sh 01        # runs just 01-temperature-logic
   ./run-tests.sh all       # runs every exercise
   ```

   (You can pass any unambiguous prefix, e.g. `./run-tests.sh 04`.)

Output looks like:

```
########## 01-temperature-logic ##########
== Temperature Logic ==
  [PASS] celsiusToFahrenheit 0
  [FAIL] classifyTemp -5 -- expected "freezing", got "<exception while showing value>"
1/2 passed
```

A non-zero exit code means at least one check failed.

## Requirements

Requires `runghc` (ships with GHC) on your `PATH`. If `./run-tests.sh`
says `command not found: runghc`, install GHC first (e.g.
`brew install ghc` on macOS, or via [ghcup](https://www.haskell.org/ghcup/)).

## Exercises

| # | Name | Concepts mixed in |
|---|------|--------------------|
| 01 | temperature-logic | arithmetic, negative-number parens, booleans (`&&`/`\|\|`/`not`), `if/then/else`, infix backtick functions |
| 02 | list-toolbox | list literals, `:`, `++`, `!!`, `head`/`tail`/`last`/`init`/`length`/`null`/`reverse`, list comparison, tuples |
| 03 | range-rider | ranges `[a..b]`, stepped ranges, `cycle`/`repeat`/`replicate`, `take`, comprehensions |
| 04 | comprehension-craft | multi-generator & multi-predicate comprehensions, nested comprehensions, `_`, `elem` |
| 05 | tuple-tactics | tuples, `fst`/`snd`, `zip`, comprehensions |
| 06 | boolean-gate | boolean algebra, equality/inequality, `elem`, ranges |
| 07 | string-wrangler | strings as `[Char]`, `reverse`, `take`/`drop`, `!!`, comprehension filters |
| 08 | infinite-ideas | infinite ranges, `cycle`/`repeat`, `zip` with infinite lists, laziness |
| 09 | number-cruncher | `sum`/`product`/`maximum`/`minimum`, `fromIntegral`, tuples, comprehensions |
| 10 | report-card | capstone: tuples + `zip` + comprehensions + booleans + `if/then/else` + string concat |
