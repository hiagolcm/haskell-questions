module Solution where

data Vector3 a = Vector3 a a a deriving (Eq, Show)

vplus :: (Num a) => Vector3 a -> Vector3 a -> Vector3 a
vplus (Vector3 x1 y1 z1) (Vector3 x2 y2 z2) = Vector3 (x1 + x2) (y1 + y2) (z1 + z2)

vectMult :: (Num a) => Vector3 a -> a -> Vector3 a
vectMult (Vector3 x y z) n = Vector3 (n*x) (n*y) (n*z)

dotProduct :: (Num a) => Vector3 a -> Vector3 a -> a
dotProduct (Vector3 x1 y1 z1) (Vector3 x2 y2 z2) =  (x1 * x2) + (y1 * y2) + (z1 * z2)

-- New: class constraints belong on functions that use a parameterized
-- type, not on the data declaration itself.
--
-- Define Vector3 as described in description.md (deriving Show and Eq, no
-- constraint on the declaration), then implement vplus, vectMult, and
-- dotProduct.
