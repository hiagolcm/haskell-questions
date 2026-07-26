module Main where

import Solution
import TestHarness

main :: IO ()
main = runSuite "Comprehension Craft" checks
  where
    checks =
      [ check "rightTriangles 10" (rightTriangles 10) [(3, 4, 5), (6, 8, 10)]
      , check "rightTriangles 5" (rightTriangles 5) [(3, 4, 5)]
      , check "countVowels \"Haskell\"" (countVowels "Haskell") 2
      , check "countVowels \"xyz\"" (countVowels "xyz") 0
      , check "countVowels \"AEIOU\"" (countVowels "AEIOU") 5
      , check "keepEvensInEach"
          (keepEvensInEach [[1, 2, 3], [4, 5, 6], [7]])
          [[2], [4, 6], []]
      , check "removeForbidden [13,15,19] [10..20]"
          (removeForbidden [13, 15, 19] [10 .. 20])
          [10, 11, 12, 14, 16, 17, 18, 20]
      , check "removeForbidden [] [1,2,3]" (removeForbidden [] [1, 2, 3]) [1, 2, 3]
      , check "cartesianProducts [2,5,10] [8,10,11]"
          (cartesianProducts [2, 5, 10] [8, 10, 11])
          [16, 20, 22, 40, 50, 55, 80, 100, 110]
      ]
