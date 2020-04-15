-- Alexander Shelton
-- Implementaion of guard patterns
--


--Creating a funciton message that checks the string inputted and returns
--A string depending on what is inserted,

--Tests for truth, returns expressions on the right of the =
--'Otherwise' is defined simply as True, can replace 'otherwise' with True
message :: String -> String 
message name
    | name == "Alex" = "Hello Alex"
    | name == "Phi"  = "Hello Phi"
    | otherwise      = "This isn't Phi or Alex" --Otherwise is the defualt


main :: IO ()
main = do
    putStrLn (message "Phi")
    putStrLn (message "Alex")
    putStrLn (message "Sammy")
