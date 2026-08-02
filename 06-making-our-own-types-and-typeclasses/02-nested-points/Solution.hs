module Solution where

data Point = Point Float Float deriving (Show, Eq)

data Shape = Circle Point Float | Rectangle Point Point deriving (Show, Eq)

surfaceArea :: Shape -> Float
surfaceArea (Circle _ r) = pi * r ^ 2
surfaceArea (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

moveShape :: Float -> Float -> Shape -> Shape
moveShape x' y' (Circle (Point x y) r) = Circle (Point (x + x') (y + y')) r
moveShape x' y' (Rectangle (Point x1 y1) (Point x2 y2)) =
    Rectangle (Point (x1 + x') (y1 + y')) (Point (x2 + x') (y2 + y'))

-- New: nested data types (a Shape built out of Points), pattern matching
-- through the nesting.
--
-- Define Point and Shape as described in description.md (both deriving
-- Show and Eq), then implement surfaceArea and moveShape.
