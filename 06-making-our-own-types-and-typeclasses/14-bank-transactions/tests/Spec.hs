module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Bank Transactions" checks
  where
    checks =
      [ check "processTransactions mixed"
          (processTransactions [Deposit 100, Withdrawal 30, Deposit 50])
          120.0
      , check "processTransactions single withdrawal"
          (processTransactions [Withdrawal 20])
          (-20.0)
      , check "processTransactions empty" (processTransactions []) 0.0
      ]
