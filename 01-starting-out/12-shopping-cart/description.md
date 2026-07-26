# 12 — Shopping Cart

Write a single function that prints a receipt for a shopping cart. A cart
is a list of items, where each item is a triple `(name, unitPrice,
quantity)` — the price is a whole number (say, cents) so all money math
stays exact.

```
(name, unitPrice, quantity) :: (String, Int, Int)
```

## `receipt :: Int -> [(String, Int, Int)] -> String`

`receipt percentOff cart` produces a one-line receipt in exactly this
format:

```
"<items> items, subtotal <subtotal>, you pay <pay>"
```

where

* `<items>` is the total number of physical items (the sum of the
  quantities),
* `<subtotal>` is the full cost of the cart (each line is unit price times
  quantity, all summed),
* `<pay>` is the subtotal after taking `percentOff` percent off it, using
  integer arithmetic (drop any fractional remainder).

```
receipt 10 [("a",50,2),("b",100,1)] == "3 items, subtotal 200, you pay 180"
receipt 0  [("pen",5,4)]            == "4 items, subtotal 20, you pay 20"
receipt 25 [("x",80,1)]            == "1 items, subtotal 80, you pay 60"
```

(The count is always written as `"<n> items"`, even when it is 1.)

---

This is an **open-ended** exercise. The template is empty and only
`receipt` is checked — how you break the work into smaller helper functions
to get there is entirely up to you. Until `receipt` is defined, running the
tests shows a compile error ("not in scope") rather than pass/fail lines.
