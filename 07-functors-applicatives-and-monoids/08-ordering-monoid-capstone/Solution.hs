module Solution
  ( compareByLengthThenAlpha
  , compareRecords
  , describeComparison
  ) where

-- Capstone: Ordering as a Monoid, chaining multiple comparisons with <>.
-- Reuses tuples, compare, and string building from earlier chapters.
-- See description.md for the spec of each function.

compareByLengthThenAlpha :: String -> String -> Ordering
compareByLengthThenAlpha a b = undefined

compareRecords :: (String, Int) -> (String, Int) -> Ordering
compareRecords a b = undefined

describeComparison :: String -> String -> String
describeComparison a b = undefined
