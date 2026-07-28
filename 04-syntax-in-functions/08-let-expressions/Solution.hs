module Solution
  ( heronArea
  , midpoint
  , discount
  , bmis
  ) where

-- New: let ... in ... (local names in an expression), including let inside
-- a list comprehension.
-- See description.md for the spec of each function.

heronArea :: Double -> Double -> Double -> Double
heronArea a b c = let s = (a + b + c) / 2 in sqrt (s * (s-a) * (s-b) * (s-c))

midpoint :: (Double, Double) -> (Double, Double) -> (Double, Double)
midpoint p q = let (x, y) = p
                   (x', y') = q
                   mid a b = (a + b) / 2 
               in  (mid x x', mid y y')

discount :: Double -> Double -> Double
discount price pct = let off = pct * price / 100 in price - off

bmis :: [(Double, Double)] -> [Double]
bmis xs = [bmi | (w, h) <- xs, let bmi = w / (h * h)]
