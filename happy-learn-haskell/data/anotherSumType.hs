{-
    Alexander Shelton

-}

import qualified Data.List as L --Used for "find"




--Creating a data type for dog breeds
data DogBreed = 
      Huskie | GermanShepphard | Wolf
    | GoldenRetriever | Pitbull | Lab
    | Poodle | Chihuahua


--Defining a product type: Dog. Notice it is not a tuple
type Name = String
type Age  = Int
data Dog = Dog Name DogBreed Age --Dog is the name of the value constructor
--A way of saying Dog :: Name -> DogBreed -> Age -> Dog


--Creating a product type for house
type HouseNumber = Int
data House = House HouseNumber Dog 


--Function to work out how old a dog is in human years
humanAge :: Dog -> Age 
humanAge (Dog _ _ age) --add value constructor, discard (name & breed) capture age
    | age <= 0 = 0
    | age == 1 = 15
    | age == 2 = 15 + 9
    | otherwise = 24 + (age - 2) * 5


--Creating a street that holds houses
street :: [House]
street = 
     [House 1 (Dog "Paul" Huskie 9)
    ,House 2 (Dog "Sammy" GoldenRetriever 3)
    ,House 3 (Dog "Sophia" Wolf 2)
    ,House 4 (Dog "Andrew" Chihuahua 11)
    ,House 5 (Dog "Kyle" Poodle 19)
    ,House 6 (Dog "Mr Tinkles" Pitbull 6)
    ,House 7 (Dog "Ninja" Lab 1)
    ] --Format [Constructor Housenumber (dog)]

--Function to return the dog from the house
--Takes the house var and throws away all values but dog & returns
getDogFromHouse :: House -> Dog
getDogFromHouse (House _ dog) = dog

--Function to get the human age of a dog from the house
--Get the dog from the house and pass into human age function
getHumanAgeOfDogFromHouse :: House -> Age
getHumanAgeOfDogFromHouse = humanAge . getDogFromHouse


--Function to get the oldest dog in the house
--Calls the find oldes dog house
--Calls findOldestDogHouse, and calls getDogFromHouse on that dog
findOldestDog :: [House] -> Maybe Dog
findOldestDog []     = Nothing
findOldestDog houses = maybeOldestDog
  where
    maybeOldestDog
      = case findOldestDogHouse houses of
          Just house ->
            Just (getDogFromHouse house)
          Nothing ->
            Nothing


--Finding and sorting:
--Takes list of houses returns house oldest dog lives at
findOldestDogHouse :: [House] -> Maybe House 
findOldestDogHouse []       = Nothing 
findOldestDogHouse houses = 
    if length housesSortedByDogAge > 0
    then Just (head housesSortedByDogAge)
    else Nothing
  where housesSortedByDogAge
          = L.sortBy dogAgeComparer houses
        dogAgeComparer (House _ (Dog _ _ age1))
                       (House _ (Dog _ _ age2))
          = compare age2 age1

--Function to get the house number from the dog passed
getHouseNumberFromDog :: House -> Int
getHouseNumberFromDog (House num _ ) = num

--Function to get dog name
getDogName :: Dog -> String
getDogName (Dog name _ _ ) = name

main :: IO ()
main = putStrLn oldestDog
    where 
        oldestDog = 
            case findOldestDogHouse street of
                Nothing ->
                    "There Are no Dogs"
                Just house ->
                    "The oldest dog is "
                    ++ getDogName (getDogFromHouse house)
                    ++ " , its age is equivalent to "
                    ++ show (getHumanAgeOfDogFromHouse house)
                    ++ " years old and lives in house # "
                    ++ show (getHouseNumberFromDog house)
