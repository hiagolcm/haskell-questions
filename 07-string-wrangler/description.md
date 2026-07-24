# 07 — String Wrangler

Concepts: strings as `[Char]`, `reverse`, `take`/`drop`, `!!`, `length`,
list-comprehension filters, `elem`, `++`.

Remember: in Haskell a `String` is just `[Char]`, so every list function
from exercise 02 works on strings too.

Edit `Solution.hs` and implement each function below.

## `isPalindrome :: String -> Bool`

Returns whether a string reads the same forwards and backwards, comparing
it against its own `reverse`.

```
isPalindrome "racecar" == True
isPalindrome "hello"   == False
```

## `firstLetters :: [String] -> String`

Returns the first letter of every word in a list, concatenated into one
string, using a comprehension with `head`.

```
firstLetters ["Learn","You","A","Haskell"] == "LYAH"
```

## `removeVowels :: String -> String`

Returns the string with all vowels (`aeiouAEIOU`) removed, using a
comprehension predicate built from `elem`/`not`.

```
removeVowels "Haskell" == "Hskll"
```

## `charAt :: Int -> String -> Char`

Returns the character at the given index, using `!!`.

```
charAt 6 "Steve Buscemi" == 'B'
```

## `truncateWithEllipsis :: Int -> String -> String`

If the string's `length` is at most `n`, return it unchanged. Otherwise
return its first `n` characters (via `take`) followed by `"..."`.

```
truncateWithEllipsis 5 "hello"        == "hello"
truncateWithEllipsis 5 "hello world"  == "hello..."
```

## `countOccurrences :: Char -> String -> Int`

Counts how many times a character appears in a string, using a
comprehension and `length` (or a summing comprehension like exercise 04's
`countVowels`).

```
countOccurrences 'l' "hello" == 2
countOccurrences 'z' "hello" == 0
```
