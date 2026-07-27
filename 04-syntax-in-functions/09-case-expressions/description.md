# 09 — Case Expressions

New idea: **`case ... of`**, which pattern-matches inside an expression
(rather than across function equations). Implement each function using a
`case` expression.

## `describeList :: [a] -> String`

`"empty"`, `"one"`, or `"many"` by casing on the list.

```
describeList ([] :: [Int]) == "empty"
describeList [1]           == "one"
describeList [1,2,3]       == "many"
```

## `headOr :: a -> [a] -> a`

`headOr def xs` is the first element of `xs`, or `def` if it's empty.

```
headOr 0 [7,8] == 7
headOr 0 []    == 0
```

## `orderingWord :: Ordering -> String`

Turn an `Ordering` into a word (reuse the `Ordering` type from chapter 2).

```
orderingWord LT == "less"
orderingWord EQ == "equal"
orderingWord GT == "greater"
```

## `signCase :: Int -> String`

`"negative"`, `"zero"`, or `"positive"` — by `case`-ing on `compare n 0`.

```
signCase (-4) == "negative"
signCase 0    == "zero"
signCase 9    == "positive"
```
