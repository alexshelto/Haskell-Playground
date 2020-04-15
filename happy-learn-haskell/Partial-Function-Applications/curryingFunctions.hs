--Alex Shelton
--Currying functions is the process of making a function that returns a function itself.
--Haskell functions can only take 1 parameter themselves




--example 1:
--Function plus takes an integer and returns  a function that take the 2nd int value
--and returns the first added to the seccond
plus :: Int -> Int -> Int
plus x y = x + y


--Example 2: using lambda syntax and nesting one lambda inside another
plus' :: Int -> Int -> Int
plus' = \x -> \y -> x + y


--Example 3 uses 1 lambda and takes x and y
plus'' :: Int -> Int -> Int
plus'' = \x y -> x + y

