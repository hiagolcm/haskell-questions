# 01 — Currying and Sections

New idea: every Haskell function really takes one argument at a time —
`f x y` is `(f x) y` — so giving a function fewer arguments than it needs
produces a new, "partially applied" function. An infix operator can be
partially applied too, using a **section**: `(/2)` is "divide by 2",
`(2/)` is "2 divided by...", and `` (`elem` xs) `` is "is a member of `xs`".
Implement each function as a partial application or section — no
`if`/lambda/full argument list needed.

## `addFive :: Int -> Int`

Adds 5 to its argument. Define it by partially applying `(+)` (or a
section), not `addFive x = x + 5`.

```
addFive 10 == 15
```

## `half :: Double -> Double`

Divides its argument by 2, using a section.

```
half 9 == 4.5
```

## `isBig :: Int -> Bool`

Whether a number is greater than 100, using a section.

```
isBig 150 == True
isBig 50  == False
```

## `dropThree :: Int -> Int`

Subtracts 3 from its argument. (Sections can't express `(-3)` the way you'd
hope — that's parsed as negative three. Use the `subtract` function instead:
`` subtract 3 `` is the function "subtract 3 from its argument".)

```
dropThree 10 == 7
```

## `isVowel :: Char -> Bool`

Whether a character is one of `aeiouAEIOU`, using a section built from
`` `elem` ``.

```
isVowel 'a' == True
isVowel 'x' == False
```
