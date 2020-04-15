--Alexander Shelton
--Problem1 Solution
--"Find the last element in the list"


--Test Lists:
t_list0 = [1,2,3,4]
t_list1 = ['a','b','c','d']

--Function takes a list of type a and returns var of type a
myLast :: [a] -> a
myLast []     = error "Empty list"
myLast [x]    = x
myLast (_:xs) = myLast xs --throw away first val, call on remain


myLast' :: [a] -> a
myLast' list = last list


main :: IO ()
main = do
    putStrLn (show $ myLast t_list0)
    putStrLn (show $ myLast t_list1)

    putStrLn("CHECKING 2nd FUNCTION")

    putStrLn (show $ myLast' t_list0)
    putStrLn (show $ myLast' t_list1)
