module Solution where

data Book = Book {
    title :: String,
    author :: String,
    year :: Int
} deriving (Show, Eq)

type Catalog = [Book]

newest :: Catalog -> Book
newest = foldl1 (\bmax b -> if year b > year bmax then b else bmax)

average :: Catalog -> Int
average xs = (`div` length xs) . sum . map (\b -> year b) $ xs

catalogReport :: Catalog -> String
catalogReport catalog = show (length catalog) ++ " books, newest: " ++ title (newest catalog) ++ ", avg year " ++ show (average catalog)

-- catalogReport :: Catalog -> String
-- catalogReport  

-- Define Book and Catalog as described in description.md, then implement
-- the single function catalogReport. How you break the work into smaller
-- helper functions is entirely up to you. The tests only check
-- catalogReport, so make sure it -- and the Book type it needs -- are
-- defined at the top level exactly as described.
