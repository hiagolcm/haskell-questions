# 04 — Enums and Bounds

New ideas: `Enum` (`succ`/`pred`, and ranges over any enumerable type) and
`Bounded` (`minBound`/`maxBound`). Combine them with `zip`, comprehensions,
and tuples from the earlier exercises.

## `shiftEach :: String -> String`

Replace every character with the one right after it.

```
shiftEach "abc" == "bcd"
```

## `bookmark :: [String] -> [(Char, String)]`

Pair each word with a letter label starting at `'a'`. (An enumerable range
`['a'..]` plus `zip`.)

```
bookmark ["cat","dog"] == [('a',"cat"),('b',"dog")]
```

## `everyOrdering :: [Ordering]`

Every value of the `Ordering` type, in order. This uses `Bounded` and `Enum`
together — the smallest bound through the largest.

```
everyOrdering == [LT,EQ,GT]
```

## `boolPair :: (Bool, Bool)`

The smallest and largest `Bool`, as a pair.

```
boolPair == (False,True)
```

## `neighbours :: Char -> (Char, Char)`

The characters immediately before and after the given one.

```
neighbours 'b' == ('a','c')
```
