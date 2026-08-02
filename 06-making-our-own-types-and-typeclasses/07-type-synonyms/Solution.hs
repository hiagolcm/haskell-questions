module Solution where

-- New: type synonyms (type X = ...) -- another name for an existing type,
-- purely for documentation.
--
-- Define Name, PhoneNumber, and PhoneBook as described in description.md,
-- then implement inPhoneBook and numbersFor.

type Name = String
type PhoneNumber = String
type PhoneBook = [(Name, PhoneNumber)]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name number phoneBook = (name, number) `elem` phoneBook

numbersFor :: Name -> PhoneBook -> [PhoneNumber]
numbersFor name = map (\x -> snd x) . filter (\x -> fst x == name)