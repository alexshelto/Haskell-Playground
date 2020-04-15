{-
Alexander Shelton
Predictates practice
-}

movies :: [String]
movies =
  [ "Aeon Flux"
  , "The Black Cat"
  , "Superman"
  , "Stick It"
  , "The Matrix Revolutions"
  , "The Raven"
  , "Inception"
  , "Looper"
  , "Hoodwinked"
  , "Tell-Tale"
  ]

--Creating a function that returns a boolean depending on another value
--If the first letter is in the 1st half of alphabet-> return true

isGood :: String -> Bool
isGood (x:_) = x <= 'M'--Takes 1st word throws rest away. matches to x.
isGood _     = False   --Else assign false


--Transforming titles. Take a movie title and give a new name
--depending on the bool
assess :: String -> String
assess movieTitle = movieTitle ++ " - " ++ assessment
    where assessment = if isGood movieTitle
        then "Good"
        else "Bad"

--
--
renameMovie :: [String] -> [String]
renameMoive [] = []
renameMovie (x:y:[]) = assess : x renameMoive y