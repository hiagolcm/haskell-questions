# 06 — Derived Weekday

New idea: **deriving several typeclasses at once** on a plain enumeration
type — `Eq`, `Ord`, `Show`, `Read`, `Bounded`, and `Enum` — which together
give you comparison, printing, parsing, `minBound`/`maxBound`, and
`succ`/`pred`/ranges, all for free.

## The type you must define

```haskell
data Weekday = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
  deriving (Eq, Ord, Show, Read, Bounded, Enum)
```

The constructors must be listed in this exact order (`Monday` first,
`Sunday` last) — the derived `Enum`/`Ord` instances number them by their
position in the declaration, and the functions below depend on that
ordering.

## Functions to implement

### `isWeekend :: Weekday -> Bool`

Whether the day is `Saturday` or `Sunday`.

```
isWeekend Saturday == True
isWeekend Monday   == False
```

### `nextDay :: Weekday -> Weekday`

The following day, wrapping from `Sunday` back to `Monday`. (Careful:
`succ` alone will crash on `Sunday`, since there's no day after it in the
derived `Enum` sequence.)

```
nextDay Monday == Tuesday
nextDay Sunday == Monday
```

### `allWeekdays :: [Weekday]`

Every day of the week, `Monday` through `Sunday`, in order. Build this from
`minBound`/`maxBound` rather than listing all seven by hand.

```
allWeekdays == [Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday]
```
