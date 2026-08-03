# 03 — Range Rider

Edit `Solution.hs` and implement each function below.

## `firstNEvens :: Int -> [Int]`

Returns the first `n` positive even numbers, starting at 2.

```
firstNEvens 5 == [2,4,6,8,10]
```

## `countdownFrom :: Int -> [Int]`

Returns a countdown from `n` to `1`, inclusive.

```
countdownFrom 5 == [5,4,3,2,1]
```

## `alphabetChunk :: Char -> Char -> String`

Returns all characters from `start` to `end` inclusive.

```
alphabetChunk 'c' 'g' == "cdefg"
```

## `repeatPattern :: Int -> [a] -> [a]`

`repeatPattern n xs` repeats the list `xs` `n` times back-to-back.

```
repeatPattern 3 [1,2] == [1,2,1,2,1,2]
```

## `greetNTimes :: Int -> String -> [String]`

Returns a list containing `msg` repeated `n` times.

```
greetNTimes 3 "hi" == ["hi","hi","hi"]
```

## `squareRange :: Int -> Int -> [Int]`

Returns the squares of every integer from `lo` to `hi` inclusive.

```
squareRange 1 5 == [1,4,9,16,25]
```
