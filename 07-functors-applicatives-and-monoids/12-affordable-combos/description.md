# 12 — Affordable Combos (Integrative Challenge)

**Type:** Integrative — combine the list `Applicative` (every combination,
from this chapter) with `filter` (chapter 5) into a single multi-step
pipeline, the way a real budgeting problem would: first generate every
possibility, then narrow down to the ones that actually work.

## Function to implement

### `affordableCombos :: Int -> [Int] -> [Int] -> [Int]`

`affordableCombos budget itemPrices shippingCosts` computes every possible
total (one item price plus one shipping cost), then keeps only the totals
that are less than or equal to `budget`, in the order the combinations are
naturally generated (item prices varying slowest).

```
affordableCombos 15 [10,20] [2,8] == [12]
affordableCombos 30 [10,20] [2,8] == [12,18,22,28]
affordableCombos 5  [10,20] [2,8] == []
```

(For `affordableCombos 30 [10,20] [2,8]`: the four possible totals are
`10+2=12`, `10+8=18`, `20+2=22`, `20+8=28` — all four are `<= 30`.)

---

Open-ended challenge: the template is empty and only `affordableCombos` is
checked. Break it into whatever helpers you like — this chapter's list
`Applicative` (or `<*>`) is a natural fit for generating the combinations,
but how you combine it with the filtering step is your call.
