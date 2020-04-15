{-
    Alexander Shelton
    99 Haskell Problems Problem #2
    
    "Find the last but 1 element of a list"
-}


--Defining some test lists
t_list0 = ['a','b','c','d']
t_list1 = ["Hello", "World", " ! "]
t_list2 = [1,2,3,4]


--Recursive function myButLast
--Sets a base case if two elements in list to choose the first one
--recursive call in function to discard next item and pass remaining list
--If list size > 2.. eventually remaining list will have 2 elements and meet the case
myButLast :: [a] -> a
myButLast []     = error "Empty List!"
myButLast [x,y]  = x --Will get answer from recursive call below if > 2 in list
myButLast (_:xs) = myButLast xs


--Trivial reverses list then indexes the list at the first index
-- [1,2,3] -> [3,2,1] !! 1 = 2
myButLast' list = reverse list !! 1 



main :: IO ()
main = do
    putStrLn (show $ myButLast t_list0)
    putStrLn (show $ myButLast t_list1)
    putStrLn (show $ myButLast t_list2)

    putStrLn("TESTING FUNCTION 2")

    putStrLn (show $ myButLast' t_list0)
    putStrLn (show $ myButLast' t_list1)
    putStrLn (show $ myButLast' t_list2)