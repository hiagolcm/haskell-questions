# 11 — Library Catalog (Integrative Challenge)

**Type:** Integrative — define a record type and a type synonym for a
collection of it, then combine record access, aggregation (chapter 1/5),
and comparison (chapter 2) into a single report.

## The types you must define

```haskell
data Book = Book
  { title  :: String
  , author :: String
  , year   :: Int
  }

type Catalog = [Book]
```

Derive `Show` and `Eq` on `Book`.

## Function to implement

### `catalogReport :: Catalog -> String`

Produce a one-line summary of the form:

```
"<count> books, newest: <title>, avg year <year>"
```

where `<count>` is how many books there are, `<title>` is the title of the
book with the highest `year` (in every test the newest book is unique), and
`<year>` is the average publication year, rounded down to an `Int` (integer
division is fine here).

```
catalogReport
  [ Book "A" "X" 2001
  , Book "B" "Y" 2010
  , Book "C" "Z" 1998
  ] == "3 books, newest: B, avg year 2003"
```

(`(2001 + 2010 + 1998) \`div\` 3 = 6009 \`div\` 3 = 2003`.)

```
catalogReport [Book "Solo" "Q" 1999] == "1 books, newest: Solo, avg year 1999"
```

Assume the catalog is non-empty.

---

Open-ended challenge: the template is empty and only `catalogReport` is
checked. Break it into whatever helpers you like. Until the `Book` type and
`catalogReport` both exist, running the tests shows a compile error rather
than pass/fail lines.
