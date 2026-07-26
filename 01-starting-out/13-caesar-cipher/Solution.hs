module Solution (encode) where

idxChar = zip [0..] ['a'.. 'z']

charToIdx :: Char -> Int
charToIdx c = head [idx | (idx, x) <- idxChar, x == c]

idxToChar :: Int -> Char
idxToChar i = head [c | (j, c) <- idxChar, i == j]

encodeChar :: Int -> Char -> Char
encodeChar n c = 
    if c `elem` ['a'.. 'z'] then idxToChar ((charToIdx c + n) `mod` 26 )
    else c

encode :: Int -> String -> String
encode n text = [encodeChar n c | c <- text]

-- Implement the single function described in description.md (encode).
-- How you break the work into smaller helper functions is entirely up to
-- you. The tests only check encode, so make sure it is defined at the top
-- level with exactly the signature shown.
