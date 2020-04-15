--Alexander Shelton


--Function takes a list of type String and returns a string
firstOrEmpty :: [String] -> String
firstOrEmpty []   = "Empty"
firstOrEmpty (x:_) = x
-- ':' PULLS the first item from the list and PUTS it into the var x
-- the '_' throws the remainder of the list away


--Function takes a list of type String and returns a string
firstOnesOrEmpty :: [String] -> String
firstOnesOrEmpty []          = "" --If empty return empty string
firstOnesOrEmpty [x]         = x  --Matches only lists with exactly 1 item
firstOnesOrEmpty (x:y:_)     = x ++ " , " ++ y --Matches lists with 2 or more items 


main :: IO ()
main = do
    putStrLn (firstOrEmpty ["Hello", "World"])
    putStrLn (firstOnesOrEmpty ["Hello"])
    putStrLn (firstOnesOrEmpty ["Hello", "Word", "!"])
