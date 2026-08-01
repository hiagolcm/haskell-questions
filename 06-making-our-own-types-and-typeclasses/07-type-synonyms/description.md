# 07 — Type Synonyms

New idea: **`type` synonyms**. `type Name = String` doesn't create a new
type — it's just another name for `String`, purely to make signatures
self-documenting. Anywhere a `PhoneBook` is expected, a plain
`[(String, String)]` literal works too, since they're the same type under
the hood.

## The synonyms you must define

```haskell
type Name = String
type PhoneNumber = String
type PhoneBook = [(Name, PhoneNumber)]
```

## Functions to implement

### `inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool`

Whether the `(name, number)` pair appears in the phone book.

```
inPhoneBook "Alice" "123" [("Alice","123"),("Bob","456")] == True
inPhoneBook "Alice" "999" [("Alice","123"),("Bob","456")] == False
```

### `numbersFor :: Name -> PhoneBook -> [PhoneNumber]`

Every number listed for the given name, in order (reuse comprehensions from
chapter 1 — a name can appear more than once).

```
numbersFor "Alice" [("Alice","123"),("Bob","456"),("Alice","789")] ==
  ["123","789"]
```
