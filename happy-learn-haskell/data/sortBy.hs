
{-
Covers topics:...
    min, max, sortBy, map, flip(reverse sort)

-}


import qualified Data.List as L


--creating product type:
--Person uses "record Syntax"
type Name = String
type Year = Int
data Person = Person
    { personFirstName :: Name
    , personLastName :: Name
    , yearOfBirth :: Year }
    deriving (Show)--Allows Person to easilly be printed out to screen


people :: [Person]
people =
  [ Person "Isaac" "Newton" 1643
  , Person "Leonard" "Euler" 1707
  , Person "Blaise" "Pascal" 1623
  , Person "Ada" "Lovelace" 1815
  , Person "Alan" "Turing" 1912
  , Person "Haskell" "Curry" 1900
  , Person "John" "von Neumann" 1903
  , Person "Lipot" "Fejer" 1880
  , Person "Grace" "Hopper" 1906
  , Person "Anita" "Borg" 1949
  , Person "Karen" "Sparck Jones" 1935
  , Person "Henriette" "Avram" 1919 ]




-- map :: (a -> b) -> [a] -> [b]
lastNames :: [String]
lastNames = map personLastName people

firstNames :: [String]
firstNames = map personFirstName people





--sort from data module whose type is :|:  Ord a => [a] -> [a]
sortedLastNames :: [String]
sortedLastNames = L.sort lastNames

--sort using compare:
sortedLastNames' :: [String]
sortedLastNames' = L.sortBy (\x y -> compare x y) lastNames

--sortBy has a type of (a -> a -> Ordering) -> [a] -> [a]
--compare has a type of  Ord a => a -> a -> Ordering
--Reverse sorted by 'Flipping' the order of compares. y x
reverseSortBy :: [String]
reverseSortBy = L.sortBy(\x y -> compare y x) lastNames

--Alternative way to do reverse sort is to use 
--'FLIP' which can flip vars in compare
reverseSortBy' :: [String]
reverseSortBy' = L.sortBy flipCompare lastNames
    where flipCompare = flip compare


--Data.List has a sortOn function whose type is Ord b => (a -> b) -> [a] -> [a].
--It orders the new list by the result of some function a -> b applied to each element.

--Create list of people sorted by first name
sortedPeopleByFirstName :: [Person]
sortedPeopleByFirstName = L.sortOn personFirstName people

--Now let’s see a function that takes a year, and a person, and works out 
--how many years ago from that year that person was born.
yearsSinceBirthAtYear :: Year -> Person -> Int
yearsSinceBirthAtYear y p = y - yearOfBirth p

allYearsSinceBirthAt2020 :: [Int]
allYearsSinceBirthAt2020 = map (yearsSinceBirthAtYear 2020) people


--minimum :: (Ord a, Foldable t) => t a -> a
--maximum :: (Ord a, Foldable t) => t a -> a


earliestYearOfBirth :: [Person] -> Year
earliestYearOfBirth people = minimum $ L.map yearOfBirth people


--Data.List’s minimumBy :: Foldable t => (a -> a -> Ordering) -> t a -> a
bornFirst :: [Person] -> Person
bornFirst people =
    L.minimumBy compareBirthYears people
  where compareBirthYears x y =
          compare (yearOfBirth x) (yearOfBirth y)

bornLast :: [Person] -> Person
bornLast people = 
    L.minimumBy compareBirthYears people
  where compareBirthYears x y =
          compare (yearOfBirth y) (yearOfBirth x)