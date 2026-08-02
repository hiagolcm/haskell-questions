module Solution where

data Transaction = Deposit Double | Withdrawal Double deriving (Show, Eq)

processTransactions :: [Transaction] -> Double
processTransactions = foldl aux 0
    where 
        aux :: Double -> Transaction -> Double
        aux acum (Withdrawal amnt) = acum - amnt
        aux acum (Deposit amnt) = acum + amnt

-- Define Transaction as described in description.md, then implement the
-- single function processTransactions. How you break the work into
-- smaller helper functions is entirely up to you.
