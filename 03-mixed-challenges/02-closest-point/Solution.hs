module Solution (closestToOrigin) where

calculateDistance :: (Int, Int) -> Double
calculateDistance (x,y) = sqrt (fromIntegral (x*x + y*y))

-- head [ (x,y) | (x,y) <- ps, calculateDistace (x,y) == minimum [calculateDistance (a,b) | (a,b) <- ]]

closestToOrigin :: [(Int, Int)] -> String
closestToOrigin ps = head 
  [ show (x, y) ++ 
  " at distance " ++ 
  show (calculateDistance (x,y)) | 
  (x, y) <- ps, calculateDistance (x,y) == minimum [calculateDistance (a,b) | (a,b) <- ps]]

-- Implement the single function described in description.md (closestToOrigin).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check closestToOrigin, so make sure it is defined at
-- the top level with exactly the signature shown.
