# 13 — Direction Turn (Edge-case Challenge)

**Type:** Edge-case — deriving `Enum` gives you `succ`, but `succ` on the
*last* constructor isn't defined and crashes at runtime (there's nothing
after the last one in the sequence). Chapter 2 and exercise 06 both used
`succ`/`Bounded` on types where you never needed to wrap around; here you
do, and the obvious one-line `succ` solution breaks on exactly the input
that matters most.

## The type you must define

```haskell
data Direction = North | East | South | West
```

Derive `Eq`, `Show`, `Enum`, and `Bounded`, with the constructors listed in
this exact order (`North` first, `West` last).

## Function to implement

### `turnRight :: Direction -> Direction`

Rotates 90° clockwise: `North` → `East` → `South` → `West` → `North` (it
wraps back around after `West`).

```
turnRight North == East
turnRight East  == South
turnRight South == West
turnRight West  == North
```

---

Open-ended challenge: the template is empty and only `turnRight` is
checked. `succ` alone won't get you all the way there — think about what
`fromEnum`/`toEnum` let you do that `succ` doesn't.
