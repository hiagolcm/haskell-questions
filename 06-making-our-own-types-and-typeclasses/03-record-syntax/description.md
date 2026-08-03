# 03 — Record Syntax

New idea: **record syntax**. Naming a constructor's fields
(`Person { personName :: String, ... }`) automatically generates an
accessor function for each field — `personName :: Person -> String` — so
you don't hand-write `getName (Person n _ _) = n` yourself.

## The type you must define

Define `Person` using record syntax with exactly these field names and
types:

```haskell
data Person = Person
  { personName :: String
  , personAge  :: Int
  , personCity :: String
  }
```

Derive `Show` and `Eq`.

## Functions to implement

### `isAdult :: Person -> Bool`

Whether the person's age is at least 18. Use the auto-generated
`personAge` accessor rather than pattern matching the constructor
yourself.

```
isAdult (Person "Ann" 20 "Rome") == True
isAdult (Person "Bo" 15 "Rome")  == False
```

### `sameCity :: Person -> Person -> Bool`

Whether two people live in the same city.

```
sameCity (Person "Ann" 20 "Rome") (Person "Bo" 15 "Rome") == True
sameCity (Person "Ann" 20 "Rome") (Person "Cid" 30 "Oslo") == False
```

### `describePerson :: Person -> String`

`"<name> (<age>) from <city>"`, built from the accessors.

```
describePerson (Person "Ann" 20 "Rome") == "Ann (20) from Rome"
```
