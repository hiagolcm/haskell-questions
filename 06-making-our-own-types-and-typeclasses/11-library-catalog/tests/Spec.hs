module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Library Catalog" checks
  where
    checks =
      [ check "catalogReport three books"
          (catalogReport [Book "A" "X" 2001, Book "B" "Y" 2010, Book "C" "Z" 1998])
          "3 books, newest: B, avg year 2003"
      , check "catalogReport single book"
          (catalogReport [Book "Solo" "Q" 1999])
          "1 books, newest: Solo, avg year 1999"
      ]
