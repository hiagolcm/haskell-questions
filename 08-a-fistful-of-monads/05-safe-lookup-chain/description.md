# 05 — Safe Lookup Chain

Prelude's own `lookup :: Eq a => a -> [(a, b)] -> Maybe b` already returns
`Maybe` — it's a `Nothing`-on-failure computation you already had, without
knowing it. This exercise chains *two* lookups with `do` notation, the same
way you'd chain any other `Maybe`-returning steps.

## Functions to implement

### `lookupUserId :: String -> [(String, Int)] -> Maybe Int`

Finds a user's ID by name. (This is just `lookup` — write it that way.)

```
lookupUserId "ana" [("ana",1),("bo",2)] == Just 1
lookupUserId "cid" [("ana",1),("bo",2)] == Nothing
```

### `lookupEmail :: Int -> [(Int, String)] -> Maybe String`

Finds an email address by ID.

```
lookupEmail 1 [(1,"ana@x.com"),(2,"bo@x.com")] == Just "ana@x.com"
```

### `findEmailForUser :: String -> [(String, Int)] -> [(Int, String)] -> Maybe String`

Looks up the user's ID by name, then looks up the email by that ID,
chaining the two with `do` notation. If either lookup fails, the whole
thing is `Nothing`.

```
findEmailForUser "ana" [("ana",1),("bo",2)] [(1,"ana@x.com"),(2,"bo@x.com")]
  == Just "ana@x.com"
findEmailForUser "cid" [("ana",1),("bo",2)] [(1,"ana@x.com"),(2,"bo@x.com")]
  == Nothing
findEmailForUser "ana" [("ana",9)] [(1,"ana@x.com")]
  == Nothing
```

(The last one: `ana`'s ID is `9`, but there's no entry for `9` in the email
table.)
