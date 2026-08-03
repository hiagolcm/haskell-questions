module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Checks as Gates" checks
  where
    ana = Applicant "Ana" 30 5000 1000
    kid = Applicant "Kid" 15 5000 1000
    zeroIncome = Applicant "Bo" 30 0 0
    deepInDebt = Applicant "Deep" 30 1000 2000
    checks =
      [ check "approved" (processApplication ana) (Just (Approval ana 4000))
      , check "underage rejected" (processApplication kid) Nothing
      , check "zero income rejected" (processApplication zeroIncome) Nothing
      , check "debt exceeds income rejected" (processApplication deepInDebt) Nothing
      ]
