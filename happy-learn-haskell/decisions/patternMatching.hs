--Alexander Shelton

--Pattern matching is a simple function def with many definitions



message :: String -> String
message "Alex" = "Hello Alex"
message "Phi"  = "Hello Phi!"
message _      = "This isnt Phi or Alex"


main :: IO ()
main = putStrLn (message "Phi")