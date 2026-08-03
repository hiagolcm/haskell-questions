# 12 — Department Report

Bring together record syntax, `lookup`, and `Maybe`-monad chaining to
build a small report that only succeeds if every piece of data it needs
is actually available.

```haskell
data Employee = Employee
  { empName :: String
  , empId :: Int
  } deriving (Show, Eq)

data Report = Report
  { reportEmployee :: Employee
  , reportSalary :: Int
  } deriving (Show, Eq)
```

## Function to implement

### `buildReport :: Employee -> [(Int, Int)] -> Maybe Report`

`salaries` is an association list mapping an employee's `empId` to their
salary. Using `do` notation, look up the given employee's salary in
`salaries` (with `lookup`); if it's found, produce a `Report` pairing the
employee with that salary. If the salary isn't in the list, the whole
result is `Nothing`.

```
buildReport (Employee "Ana" 1) [(1, 5000), (2, 6000)] == Just (Report (Employee "Ana" 1) 5000)
buildReport (Employee "Ana" 1) [(2, 6000)] == Nothing
```
