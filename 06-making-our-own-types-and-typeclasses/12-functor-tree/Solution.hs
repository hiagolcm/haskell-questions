module Solution where

-- New: Functor over a recursive data type -- fmap must recurse into both
-- subtrees to reach every value.
--
-- Define Tree as described in description.md (deriving Show and Eq), write
-- instance Functor Tree, then implement sumTree.
