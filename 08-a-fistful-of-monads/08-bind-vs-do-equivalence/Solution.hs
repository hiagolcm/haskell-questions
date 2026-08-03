module Solution
  ( safeParseDigit
  , combineDigitsBind
  , combineDigitsDo
  ) where

import Data.Char (isDigit, digitToInt)

safeParseDigit :: Char -> Maybe Int
safeParseDigit c
  | isDigit c = Just (digitToInt c)
  | otherwise = Nothing

combineDigitsBind :: Char -> Char -> Maybe Int
combineDigitsBind a b = undefined

combineDigitsDo :: Char -> Char -> Maybe Int
combineDigitsDo a b = undefined
