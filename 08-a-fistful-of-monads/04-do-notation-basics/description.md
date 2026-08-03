# 04 — Do-Notation Basics

More practice with `do` notation, in a fresh scenario: validating a
person's details, where each check can fail independently.

## Functions to implement

### `validateName :: String -> Maybe String`

`Nothing` if the name is empty; otherwise `Just` the name unchanged.

```
validateName "Ana" == Just "Ana"
validateName ""    == Nothing
```

### `validateAge :: Int -> Maybe Int`

`Nothing` if the age is negative or over `150`; otherwise `Just` the age
unchanged.

```
validateAge 30  == Just 30
validateAge (-1) == Nothing
validateAge 200 == Nothing
```

### `buildProfile :: String -> Int -> Maybe String`

Validates both the name and the age (using the two functions above) with
`do` notation, then formats `"<name> is <age> years old"`. If either
validation fails, the whole thing is `Nothing`.

```
buildProfile "Ana" 30 == Just "Ana is 30 years old"
buildProfile "" 30 == Nothing
buildProfile "Ana" (-1) == Nothing
```
