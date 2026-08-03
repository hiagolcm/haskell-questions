# 04 — Recursion

New idea: **recursion** built on pattern matching. A function handles the
empty/base case in one equation and the `(x:xs)` case by combining `x` with
a recursive call on `xs`. (These reimplement things you used as built-ins in
chapter 1 — now you build them yourself.)

## `sumList :: [Int] -> Int`

Add up a list. Base case `[]` is `0`.

```
sumList [1,2,3,4] == 10
sumList []        == 0
```

## `lengthList :: [a] -> Int`

Count the elements without using `length`.

```
lengthList "hello"     == 5
lengthList ([] :: [Int]) == 0
```

## `productList :: [Int] -> Int`

Multiply a list together. Base case `[]` is `1`.

```
productList [1,2,3,4] == 24
productList []        == 1
```

## `allTrue :: [Bool] -> Bool`

Whether every element is `True`. Base case `[]` is `True`.

```
allTrue [True,True]  == True
allTrue [True,False] == False
allTrue []           == True
```

## `countDown :: Int -> [Int]`

Recursively build the list from `n` down to `0`.

```
countDown 3 == [3,2,1,0]
countDown 0 == [0]
```
