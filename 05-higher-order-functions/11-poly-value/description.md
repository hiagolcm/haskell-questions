# 11 — Polynomial Value (Integrative Challenge)

**Type:** Integrative — a small "plug several formulas together" problem,
the kind the book describes as combining separate pieces (here: pairing
coefficients with exponents, computing powers, and summing) into one
multi-step calculation.

## `polyValue :: Double -> [Double] -> Double`

`polyValue x coeffs` evaluates the polynomial whose coefficients are given
in increasing order of power — `coeffs !! 0` is the constant term,
`coeffs !! 1` is the coefficient of `x`, `coeffs !! 2` is the coefficient of
`x^2`, and so on — at the point `x`:

```
c0 + c1*x + c2*x^2 + c3*x^3 + ...
```

```
polyValue 2 [1,2,3] == 17.0
```

(`1 + 2*2 + 3*(2^2) = 1 + 4 + 12 = 17`)

```
polyValue 0 [5,1,1] == 5.0
polyValue 3 [0,0,1] == 9.0
```

(The last one is just `x^2` at `x = 3`.)

Assume `coeffs` is non-empty.

---

Open-ended challenge: the template is empty and only `polyValue` is
checked. Break it into whatever helpers you like — this chapter's `zipWith`,
`map`, and folds are natural fits, but how you combine them is your call.
Until it's defined, the tests show a compile error ("not in scope").
