{-
Alexander Shelton
Shopping list program

File takes a shopping list of goods
Outputs the number of items and the whole list comma-separated 
-}


--Defining The shopping list
shoppingList :: [String]
shoppingList =
    ["Motherboard"
    ,"Processor"
    ,"Monitor"
    ,"Space Shuttle"
    ,"Lvl 5 autonomy"
    ,"Quark"
    ,"Electron cannon"
    ]


--Function to put entire list into comma seperated string
--Function takes a list of strings and returns a list
commaList :: [String] -> String
commaList []          = "" --If the list is empty return an empty string
commaList [x]         = x  --If there is one element in the list return the element
commaList (x:remaining)      = x ++ " , " ++ commaList remaining
-- ^ If > 1 element.. add it to string with comma, pass remaining list to function



main :: IO ()
main = do
    putStrLn ("There are "
            ++ (show (length shoppingList))
            ++ " Items in the list")
    
    putStrLn (commaList shoppingList)
