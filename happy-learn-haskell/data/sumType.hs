{-
    Alexander Shelton
    Creating custom data types from keyword data
    Sum types
    Program will use pattern matching on each type and print a string
-}


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


adviceOnZooEscape :: Zoo -> [String]
adviceOnZooEscape []     = [""]
adviceOnZooEscape (x:xs) = animalAdvice x : adviceOnZooEscape xs --Must use ':' to build list


--Patern Matching on Zoo animals
animalAdvice :: Animal -> String 
animalAdvice animal =
    case animal of
        Giraffe   -> "Look up"
        Elephant  -> "Play music"
        Flea      -> "Look close"
        Tiger     -> "Run"


main :: IO ()
main = putStrLn ("Animals from the zoo have escaped Here is the list of advice on the animals "
                ++ show (adviceOnZooEscape localZoo) )