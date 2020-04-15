{-
    Alexander Shelton


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


--Building first Value
--Blasise Pascal. Famous mathematician
-- blaise :: Person
-- blaise = Person "Blaise" "Pascal" 1623

--Building new reccord out of others: Reccord u
-- traise = blaise { personFirstName = "Traise" }

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



  --Finding a person from the list
firstAfter1900 :: Maybe Person
firstAfter1900 = L.find(\person -> yearOfBirth person >= 1900) people


-- don't get confused, c is not the letter c here
-- it's a variable name, holding the Char value
-- we're matching on
firstLetterIs :: Char -> String -> Bool
firstLetterIs c ""    = False
firstLetterIs c (x:_) = c == x

firstNameBeginsWith :: Char -> Person -> Bool
firstNameBeginsWith c p =
    firstLetterIs c firstName
  where firstName = personFirstName p

peopleThatBeginWithL :: [Person]
peopleThatBeginWithL =
  filter (firstNameBeginsWith 'L') people


-- mapPeople :: (Person -> String) -> [Person] -> [String]
-- mapPeople f []     = []
-- mapPeople f (x:xs) =
--   f x : mapPeople f xs

-- map :: (a -> b) -> [a] -> [b]
lastNames :: [String]
lastNames = map personLastName people