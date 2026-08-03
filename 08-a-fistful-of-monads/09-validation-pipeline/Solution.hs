module Solution
  ( Account(..)
  , validateUsername
  , validatePassword
  , createAccount
  ) where

data Account = Account
  { username :: String
  , password :: String
  } deriving (Show, Eq)

validateUsername :: String -> Maybe String
validateUsername name = undefined

validatePassword :: String -> Maybe String
validatePassword pass = undefined

createAccount :: String -> String -> Maybe Account
createAccount name pass = undefined
