module Solution (Shape (..), area, isCircle) where

data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show, Eq)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

isCircle :: Shape -> Bool
isCircle (Circle _ _ _) = True
isCircle shape = False


-- New: data declarations and value constructors.
--
-- Define the Shape type described in description.md (deriving Show and Eq),
-- then implement area and isCircle. There is no stub for the data
-- declaration itself -- you write it from scratch, matching the required
-- constructor names, field counts, and field types exactly, since the
-- tests construct Shape values directly.
