# 14 — Money Equality (Edge-case Challenge)

**Type:** Edge-case — every earlier exercise that needed `Eq` just
`deriving`-ed it, which compares values constructor-by-constructor and
field-by-field. That's not always what "equal" should mean: two `Money`
values built from different dollar/cent splits can represent the exact
same amount, and `deriving (Eq)` would (wrongly) call them different. The
unfamiliar move: write `instance Eq Money` **by hand** instead of deriving
it, so `==` compares by total value rather than by structure.

## The type you must define

```haskell
data Money = Money Int Int
```

The two fields are dollars and cents — but don't assume cents is always
between 0 and 99; `Money 1 150` (1 dollar, 150 cents) is a valid value,
worth exactly as much as `Money 2 50` (2 dollars, 50 cents). Derive `Show`,
but **do not** derive `Eq` — write `instance Eq Money` yourself so that
`==` compares total cents (`dollars * 100 + cents`) rather than the two
fields individually.

```
Money 1 150 == Money 2 50   -- True: both are 250 cents
Money 1 0   == Money 1 0    -- True
Money 1 0   == Money 1 1    -- False
Money 0 100 == Money 1 0    -- True: both are 100 cents
```

---

Open-ended challenge: the template is empty. There's no single named
function to call here — the tests use `==` directly on `Money` values, so
what's checked is your `instance Eq Money` itself.
