# 03 — ZipList

New idea: **`ZipList`**, from `Control.Applicative`. This is the project's
first exercise that needs an `import` — `ZipList` isn't a Prelude type, so
you'll need `import Control.Applicative (ZipList(..))` (already added for
you at the top of `Solution.hs`).

Exercise 02's plain-list `Applicative` combines **every** function with
**every** value — that's why `[(+1),(*2)] <*> [10,20]` produces four
results, not two. `ZipList` wraps a list to give it a *different*
`Applicative` instance for the exact same underlying data: instead of every
combination, it walks both lists together, pairing them up position by
position — the first function with the first value, the second with the
second, and so on — stopping as soon as either list runs out, exactly like
`zipWith`. You build one with the `ZipList` constructor and unwrap the
result with `getZipList`.

## Functions to implement

### `zipSums :: [Int] -> [Int] -> [Int]`

Adds the two lists element-wise using `ZipList`'s `Applicative` instance —
not `zipWith` directly, and not exercise 02's plain-list `<*>`.

```
zipSums [1,2,3] [10,20,30] == [11,22,33]
zipSums [1,2,3] [10,20]    == [11,22]
```

### `zipMax :: [Int] -> [Int] -> [Int]`

The element-wise maximum of the two lists, the same way.

```
zipMax [1,2,3,4,5,3] [5,3,1,2] == [5,3,3,4]
```

### `zipTriple :: String -> String -> String -> [(Char, Char, Char)]`

Zips three strings together into a list of triples, one character from
each string per triple, using `ZipList` and the three-argument tuple
constructor `(,,)`.

```
zipTriple "dog" "cat" "rat" == [('d','c','r'),('o','a','a'),('g','t','t')]
```
