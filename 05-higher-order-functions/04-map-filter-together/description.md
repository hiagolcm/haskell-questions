# 04 — Map and Filter Together

No new concept — combine `map` and `filter` in the same pipeline, the way
the book's `largestDivisible` and Collatz-chain examples do (filter down to
what matters, then transform — or the other way around).

## `squaresOfEvens :: [Int] -> [Int]`

The squares of only the even numbers, in order.

```
squaresOfEvens [1,2,3,4,5,6] == [4,16,36]
```

## `lettersOnly :: String -> String`

Keeps only the alphabetic characters (`` `elem` (['a'..'z'] ++ ['A'..'Z']) ``),
unchanged otherwise.

```
lettersOnly "a1b2c3!" == "abc"
```

## `namesStartingWith :: Char -> [String] -> [String]`

The words that start with the given letter, uppercased-first-letter aside —
just compare the literal first character. Assume no word is empty.

```
namesStartingWith 'a' ["ana","bob","ale","cid"] == ["ana","ale"]
```

## `sumOfSquaresOfOdds :: [Int] -> Int`

The sum of the squares of the odd numbers (reuse `sum` from chapter 1).

```
sumOfSquaresOfOdds [1,2,3,4,5] == 35
```

(`1*1 + 3*3 + 5*5 = 1 + 9 + 25 = 35`)

## `wordCountsFor :: Int -> [String] -> Int`

How many words have a length strictly greater than `n`.

```
wordCountsFor 3 ["cat","hippo","ox","zebra"] == 2
```
