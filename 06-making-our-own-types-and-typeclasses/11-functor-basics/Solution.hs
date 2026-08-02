module Solution where

data Box a = Box a deriving (Eq, Show)
data Opt a = None | Some a deriving (Eq, Show)

instance Functor Box where
    fmap f (Box x) = Box (f x)

instance Functor Opt where
    fmap f None = None
    fmap f (Some x) = Some (f x)

-- New: Functor -- the typeclass for "things you can map over" (fmap).
--
-- Define Box and Opt as described in description.md (both deriving Show
-- and Eq), then write instance Functor Box and instance Functor Opt.
