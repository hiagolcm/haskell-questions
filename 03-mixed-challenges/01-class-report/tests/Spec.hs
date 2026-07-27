module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Class Report" checks
  where
    checks =
      [ check "classReport three students"
          (classReport [("Ann", ["90", "80", "100"]), ("Bob", ["50", "40"]), ("Cid", ["70", "75"])])
          ["Ann: 90.0 (pass)", "Bob: 45.0 (fail)", "Cid: 72.5 (pass)"]
      , check "classReport single score"
          (classReport [("Dan", ["60"])])
          ["Dan: 60.0 (pass)"]
      ]
