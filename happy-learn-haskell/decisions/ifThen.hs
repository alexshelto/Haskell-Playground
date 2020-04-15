-- Alexander Shelton
--
--

message :: String -> String
message name = if name == "Dave"
    then "Hello Dave"
    else "This is not dave"




main :: IO ()
main = putStrLn (message "Paul")