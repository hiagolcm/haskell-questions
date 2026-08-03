# 12 — Weighted Average (Integrative Challenge)

**Type:** Integrative — another "combine several formulas" problem: pairing
values with weights, multiplying pairwise, summing, and dividing — each
step familiar on its own, the combination is the point.

## `weightedAverage :: [Double] -> [Double] -> Double`

`weightedAverage values weights` computes the weighted mean:

```
sum (value_i * weight_i) / sum (weight_i)
```

Assume both lists are the same non-empty length and the weights sum to a
positive number.

```
weightedAverage [1,2,3] [1,1,2] == 2.25
```

(`(1*1 + 2*1 + 3*2) / (1+1+2) = 9/4 = 2.25`)

```
weightedAverage [10,20] [1,1] == 15.0
weightedAverage [5,5,5] [1,2,3] == 5.0
```

---

Open-ended challenge: the template is empty and only `weightedAverage` is
checked. Break it into whatever helpers you like — `zipWith` and `sum` are
natural fits. Until it's defined, the tests show a compile error ("not in
scope").
