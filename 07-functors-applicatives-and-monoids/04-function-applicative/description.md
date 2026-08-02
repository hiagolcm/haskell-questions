# 04 — Function Applicative

New idea: functions themselves form an `Applicative`, the same way `Maybe`
and lists do — `` (->) r `` is an instance too. `pure x` becomes a function
that ignores whatever it's given and always returns `x`. `` f <*> g ``
becomes a function that takes one argument, feeds it to *both* `f` and
`g`, and combines their two results. In practice, this lets you combine
several functions that all expect the **same** input, using `<$>`/`<*>`,
without ever writing out that input by name.

## Functions to implement

### `sumOfTwoFns :: (Int -> Int) -> (Int -> Int) -> Int -> Int`

`sumOfTwoFns f g` is a function that, given `x`, returns `f x + g x`. Build
it with `<$>`/`<*>` on the functions themselves (not by writing
`\x -> f x + g x` directly).

```
sumOfTwoFns (+5) (*10) 3 == 38
```

(`(3+5) + (3*10) = 8 + 30 = 38`.)

### `maxOfTwoFns :: (Int -> Int) -> (Int -> Int) -> Int -> Int`

Same idea, but keeping the larger of the two results.

```
maxOfTwoFns (+5) (*10) 3 == 30
maxOfTwoFns (+5) (*10) 1 == 10
```

(At `x=1`: `1+5=6` vs `1*10=10`, so `10` wins.)
