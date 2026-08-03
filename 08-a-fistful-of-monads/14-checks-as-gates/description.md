# 14 — Checks as Gates (Integrative Capstone Challenge)

Integrative capstone: combine everything this chapter has covered — a
hand-rolled type with its own `Monad` instance, `do` notation, record
syntax, and chained validation — into one final design.

You're processing a loan application. Every step is a "gate": if it
passes, the pipeline moves on to the next check; if it fails, the whole
application is rejected, carrying no further information (this chapter
never covers *why* something failed — only whether the chain as a whole
succeeded).

```haskell
data Applicant = Applicant
  { applicantName :: String
  , applicantAge :: Int
  , applicantIncome :: Int
  , applicantDebt :: Int
  } deriving (Show, Eq)

data Approval = Approval
  { approvedFor :: Applicant
  , approvedAmount :: Int
  } deriving (Show, Eq)
```

Design and implement the following gates, each returning `Maybe`, then
chain them together with `do` notation:

- An age gate: rejects anyone under 18.
- An income gate: rejects anyone with an income of `0` or less.
- A debt-to-income gate: rejects anyone whose debt is greater than or
  equal to their income (i.e. requires `debt < income`).

### `processApplication :: Applicant -> Maybe Approval`

Runs the applicant through all three gates (in any order that makes
sense), and if every gate passes, approves them for an amount equal to
`income - debt`.

```
processApplication (Applicant "Ana" 30 5000 1000) == Just (Approval (Applicant "Ana" 30 5000 1000) 4000)
processApplication (Applicant "Kid" 15 5000 1000) == Nothing
processApplication (Applicant "Bo" 30 0 0) == Nothing
processApplication (Applicant "Deep" 30 1000 2000) == Nothing
```
