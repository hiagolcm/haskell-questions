module Solution
  ( Employee(..)
  , Report(..)
  , buildReport
  ) where

data Employee = Employee
  { empName :: String
  , empId :: Int
  } deriving (Show, Eq)

data Report = Report
  { reportEmployee :: Employee
  , reportSalary :: Int
  } deriving (Show, Eq)

buildReport :: Employee -> [(Int, Int)] -> Maybe Report
buildReport employee salaries = undefined
