# 06 — Functions as Values

New idea: functions that take **other functions** as parameters, or
**return** a function, the way the book's `applyTwice`, `zipWith'`, and
`flip'` do. Implement each one using pattern matching / recursion where
needed (chapter 4).

## `applyTwice :: (a -> a) -> a -> a`

Applies `f` to `x`, then applies `f` again to the result.

```
applyTwice (+3) 10 == 16
applyTwice (++ "!") "hi" == "hi!!"
```

## `zipCombine :: (a -> b -> c) -> [a] -> [b] -> [c]`

Combines two lists element-wise using `f`, stopping at the shorter list —
your own version of the book's `zipWith'`. Use recursion and pattern
matching; don't use the built-in `zipWith`.

```
zipCombine (+) [1,2,3] [10,20,30] == [11,22,33]
zipCombine (,) [1,2] "ab" == [(1,'a'),(2,'b')]
```

## `flipArgs :: (a -> b -> c) -> b -> a -> c`

Swaps the order in which a two-argument function expects its arguments —
your own version of the book's `flip'`.

```
flipArgs (-) 3 10 == 7
flipArgs (:) [1,2,3] 0 == [0,1,2,3]
```

## `applyToAll :: [a -> b] -> a -> [b]`

Applies every function in a list of functions to the same value.

```
applyToAll [(+1), (*2), negate] 5 == [6,10,-5]
```
