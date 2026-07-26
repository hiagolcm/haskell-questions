module Solution (receipt) where

totalItems :: [(String, Int, Int)] -> Int
totalItems cart = sum[q | (_, _, q) <- cart]

subTotal :: [(String, Int, Int)] -> Int
subTotal cart = sum[p * q | (_, p, q) <- cart]

sellingPrice :: Int -> [(String, Int, Int)] -> Int
sellingPrice percentOff cart = subTotal cart * (100 - percentOff) `div` 100

receipt :: Int -> [(String, Int, Int)] -> String
receipt percentOff cart = 
    show (totalItems cart) ++ 
    " items, subtotal " ++
    show (subTotal cart) ++
    ", you pay " ++
    show (sellingPrice percentOff cart)


-- An item is (name, unitPrice, quantity) :: (String, Int, Int).
--
-- Implement the single function described in description.md (receipt).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check receipt, so make sure it is defined at the top
-- level with exactly the signature shown.
