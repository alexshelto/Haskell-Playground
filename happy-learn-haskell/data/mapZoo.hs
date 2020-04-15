{-
    Alexander Shelton
    Creating custom data types from keyword data
    Solves zoo problem using maps
-}


import qualified Data.List as L
--Making it qualified means all the imports actually sit underneath a special name
--(we’re calling it L here), and so as you can see, when we want to use the



--Creating a new type called Animal
--Also sayubg Animal can be of any type listed. no other!
data Animal = Giraffe   --Each option is a value constructor
            | Elephant  --Value contructor
            | Tiger
            | Flea

--Creating a type for a list of animals. we will call this Zoo
type Zoo = [Animal]


localZoo :: Zoo 
localZoo = [Tiger
            ,Tiger
            ,Elephant
            ,Flea
            ,Giraffe
            ,Elephant
            ]



--Patern Matching on Zoo animals
animalAdvice :: Animal -> String 
animalAdvice animal =
    case animal of
        Giraffe   -> "Look up"
        Elephant  -> "Play music"
        Flea      -> "Look close"
        Tiger     -> "Run"


adviceOnZooEscape :: Zoo -> [String]
adviceOnZooEscape xs = map animalAdvice xs

--The hard coded version of what "L.intercalculate is doing"
joinedWithCommasBetween :: [String] -> String
joinedWithCommasBetween []     = ""
joinedWithCommasBetween [x]    = x
joinedWithCommasBetween (x:xs) =
  x ++ ", " ++ joinedWithCommasBetween xs

main :: IO ()
main = putStrLn stringToPrint
    where
        stringToPrint = L.intercalculate ", " advice
        advice = adviceOnZooEscape localZoo