# 12 — Bank Transactions (Integrative Challenge)

**Type:** Integrative — define a small sum type (not a record), then
combine pattern matching on its constructors with a fold (chapter 5) to
process a whole sequence of them into one running result.

## The type you must define

```haskell
data Transaction = Deposit Double | Withdrawal Double
```

Derive `Show` and `Eq`.

## Function to implement

### `processTransactions :: [Transaction] -> Double`

Starting from a balance of `0`, apply every transaction in order —
`Deposit amt` adds `amt`, `Withdrawal amt` subtracts `amt` — and return the
final balance.

```
processTransactions [Deposit 100, Withdrawal 30, Deposit 50] == 120.0
processTransactions [Withdrawal 20] == -20.0
processTransactions [] == 0.0
```

---

Open-ended challenge: the template is empty and only
`processTransactions` is checked. Break it into whatever helpers you like
— a fold and a small helper that turns one `Transaction` into a signed
amount are natural fits, but how you combine them is your call.
