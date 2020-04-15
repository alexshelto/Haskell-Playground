--Alexander Shelton
--Another example on how haskell currying works



--Take the function:
addNums :: Int -> Int -> Int -> Int -> Int
addNums a b c d = a + b + c + d
--It is simple to see that the function takes 4 ints and adds them together


--What is really happening is that haskell builds a multi level function.
--1st Function: Uses a and returns a seccond function
--2nd function takes a variable b and returns a third function and so on
--      //Lambda Notation\\

addNums' :: Int -> Int -> Int -> Int -> Int
addNums' = \a -> (\b -> (\c -> (\d -> a + b + c + d)))
-------1st fn, 2nd fn, 3rd fn, 4th fn -> a + b + c + d

