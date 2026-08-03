# 09 — Validation Pipeline

Reuse the record-syntax skills from earlier chapters together with the
`Maybe` monad: build up a value only once every check along the way has
passed.

```haskell
data Account = Account
  { username :: String
  , password :: String
  } deriving (Show, Eq)
```

## Functions to implement

### `validateUsername :: String -> Maybe String`

`Nothing` if the username is shorter than 3 characters; otherwise `Just`
the username.

### `validatePassword :: String -> Maybe String`

`Nothing` if the password is shorter than 8 characters; otherwise `Just`
the password.

### `createAccount :: String -> String -> Maybe Account`

Using `do` notation, validate both the username and the password, then
build an `Account` out of them. If either validation fails, the whole
thing is `Nothing`.

```
createAccount "al" "longpassword" == Nothing
createAccount "alice" "short" == Nothing
createAccount "alice" "longpassword" == Just (Account "alice" "longpassword")
```
