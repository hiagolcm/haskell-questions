module Solution (polyValue) where

polyValue :: Double -> [Double] -> Double
polyValue x coeffs = sum . zipWith (*) coeffs $ scanl (*) 1 (repeat x)

-- Implement the single function described in description.md (polyValue).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check polyValue, so make sure it is defined at the
-- top level with exactly the signature shown. [x, x, x]
