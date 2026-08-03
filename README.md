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
  06-making-our-own-types-and-typeclasses/  # chapter 6
    01-basic-shapes/
    ...
  07-functors-applicatives-and-monoids/     # chapter 7
    01-applicative-maybe/
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

### 06 — making-our-own-types-and-typeclasses
Based on https://learnyouahaskell.github.io/making-our-own-types-and-typeclasses.html
— `data` declarations and value constructors, nested data types, record
syntax, type parameters, deriving (`Eq`/`Ord`/`Show`/`Read`/`Bounded`/`Enum`),
type synonyms, recursive data types (a custom list, a binary search tree),
defining your own typeclasses with `class`/`instance`, and `Functor`
(`fmap`) over your own types. **This chapter works differently from the
others**: since a `data`/`class` declaration can't be stubbed with
`undefined` the way a function body can, every `Solution.hs` here starts as
a completely empty module — you write the type and class declarations
yourself, not just the function bodies. Each description names the exact
constructor/field shape the tests rely on to construct values.

Regular: 01–12 (`11-functor-basics` and `12-functor-tree` cover `Functor`
— a simple wrapper and an `Opt` type first, then `fmap` over a recursive
tree, which has to recurse into both subtrees).

Challenges: 13–17 — integrative (`13-library-catalog`,
`14-bank-transactions` define a type and combine it with
aggregation/folding into one multi-step result; `17-functor-laws` combines
`fmap`, composition (chapter 5), and `==` to verify both functor laws hold
for a value, rather than just calling `fmap` once); edge-case
(`15-direction-turn`, `16-money-equality`) hit the two classic surprises of
deriving — `succ` crashing at the last `Enum` value, and `deriving (Eq)`
giving you structural equality when you actually want value equality.

### 07 — functors-applicatives-and-monoids
Based on https://learnyouahaskell.github.io/functors-applicative-functors-and-monoids.html
— `Applicative` (`pure`/`<*>`) for `Maybe` and lists, `ZipList` (a second,
zip-wise `Applicative` instance for the same list type), and `Monoid`
(`mempty`/`<>`/`mconcat`) — on built-in lists (plus a dedicated check that
the monoid laws actually hold), on your own `newtype` wrappers (custom
`Sum`/`Product`, `Any`/`All`), and `Ordering` as a `Monoid` for chained
comparisons. This chapter skips the page's opening "Functors redux"
section (a `Functor` recap already covered in chapter 6) and, for now,
`liftA2`/`sequenceA`, the function `Applicative`, and the introductory
`newtype` exercises (`newtype` still shows up where it's genuinely
needed — the custom `Monoid` wrappers, and the laziness edge-case). Like
chapter 6, the `newtype`/`Monoid`/`Functor`-instance exercises ship empty
templates since the declarations can't be stubbed with `undefined`.

`03-ziplist` is the project's first exercise that needs an `import`
(`Control.Applicative`, for `ZipList`) — earlier chapters avoided imports
entirely, but from this chapter on they're fair game when a concept
genuinely needs a non-Prelude type.

Regular: 01–08. Challenges: 09–12 — integrative (`09-sum-present-scores`
combines `Maybe`-aware summing with counting into one report;
`10-affordable-combos` combines the list `Applicative`'s "every
combination" with filtering); edge-case (`11-newtype-laziness` shows that
matching a `newtype` constructor forces nothing, unlike `data` — pattern
matching `Wrapper undefined` never crashes; `12-descending-tiebreak` chains
three `Ordering`s with `<>` where one key must sort backwards, which `<>`
alone can't express — you have to flip that one comparison's result before
combining it).
