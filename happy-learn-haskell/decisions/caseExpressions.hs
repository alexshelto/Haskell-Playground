--Alexander Shelton
--Implementation of case expressions



--Function message takes in a string and returns a string
--Applies 3 cases to the name, 2 checks & 1 default '_'
message :: String -> String 
message name = 
    case name of
        "Alex" -> "Hello Alex "
        "Sam" -> "Play it again sam "
        _      -> "This is the default "


main :: IO ()
main = do
    putStrLn (message "Alex"
             ++ (message "Phi")
             ++ (message "Neither"))
    -- putStrLn (message "Sam")
    -- putStrLn (message "neither")