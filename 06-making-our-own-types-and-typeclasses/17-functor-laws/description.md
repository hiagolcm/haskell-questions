# 17 — Functor Laws (Integrative Challenge)

**Type:** Integrative — a lawful `Functor` instance isn't just "any
`fmap` that compiles." It has to satisfy two laws, and checking them means
combining `fmap`, function composition `.` (chapter 5), and `==` into one
multi-step verification, rather than just calling `fmap` once and eyeballing
the result.

## The type you must define

```haskell
data Box a = Box a
```

Derive `Show` and `Eq`. Write `instance Functor Box` the usual way
(`fmap f (Box x) = Box (f x)`).

## Function to implement

### `checkFunctorLaws :: Int -> Bool`

Given a plain `Int` value `x`, wrap it as `Box x` and check that **both**
functor laws hold for it, returning `True` only if both do:

1. **Identity law**: mapping `id` over the box changes nothing —
   `fmap id (Box x) == Box x`.
2. **Composition law**: mapping a composed function is the same as mapping
   each piece in turn — `fmap ((+1) . (*2)) (Box x) == (fmap (+1) . fmap (*2)) (Box x)`.

```
checkFunctorLaws 5    == True
checkFunctorLaws 0    == True
checkFunctorLaws (-3) == True
```

(If your `Functor Box` instance is written the ordinary way, both laws
hold for every `Int` — the point of this exercise is combining the two
checks correctly into one function, not finding an input where they fail.)

---

Open-ended challenge: the template is empty and only `checkFunctorLaws` is
checked (which also means your `Box` type and its `Functor` instance must
exist for it to compile). Break it into whatever helpers you like.
