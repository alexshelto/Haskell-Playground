{-
    Alexander Shelton
    99 Haskell Problems Problem #3
    
    Find the K'th element of a list. The first element in the list is number 1.
-}


--Defining some test lists
t_list0 = ['a','b','c','d']
t_list1 = ["Hello", "World", " ! "]
t_list2 = [1,2,3,4]


--First Solution : Trivial
--list at index - 1. NOTE: 1st element = index 1
elementAt :: [a] -> Int -> a
elementAt list index = list !! (index - 1)


--
--
elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1  = x                         --Base case: When 1 is passed into function. return index
elementAt' (_:xs) i = elementAt' xs (i - 1)    --recursive pass remaining list with index-1
elementAt' _ _      = error "Index out of bounds"


main :: IO ()
main = do
    putStrLn (show (elementAt t_list0 2))
    putStrLn (show (elementAt t_list1 2))
    putStrLn (show (elementAt t_list2 2))

    putStrLn ("TESTING FUNCTION 2")

    putStrLn (show (elementAt' t_list0 2))
    putStrLn (show (elementAt' t_list1 2))
    putStrLn (show (elementAt' t_list2 2))

