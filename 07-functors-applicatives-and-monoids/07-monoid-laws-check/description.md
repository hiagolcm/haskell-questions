# 07 — Monoid Laws Check

New idea: the **`Monoid` laws**. Every `Monoid` instance is expected to
satisfy three rules — `mempty <> x == x` (left identity), `x <> mempty ==
x` (right identity), and `(x <> y) <> z == x <> (y <> z)` (associativity,
meaning it doesn't matter how you group a chain of combines). Haskell
doesn't check any of this for you — it's on the programmer to make sure an
instance actually behaves this way. Here you verify the laws hold for the
list `Monoid` you already know from exercise 06.

## Functions to implement

### `leftIdentityHolds :: [Int] -> Bool`

Checks the left identity law: `mempty <> xs == xs`.

```
leftIdentityHolds [1,2,3] == True
leftIdentityHolds []      == True
```

### `rightIdentityHolds :: [Int] -> Bool`

Checks the right identity law: `xs <> mempty == xs`.

```
rightIdentityHolds [1,2,3] == True
```

### `associativityHolds :: [Int] -> [Int] -> [Int] -> Bool`

Checks that grouping doesn't matter: `(x <> y) <> z == x <> (y <> z)`.

```
associativityHolds [1] [2,3] [4] == True
associativityHolds [] [1] []     == True
```
