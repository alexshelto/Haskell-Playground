--Alexander Shelton


--File gives examples on how to add 2 numbers with normal syntax and what it looks like behind the scenes



--Function 1. Simple syntax. taking 2 integers and producing the sum
-- NOTE: Function1 is a simpler/easier way of writing Function2.
add :: Int -> Int -> Int
add x y = x + y


--Function 2.
--What function 1 is actually doing
add' :: Int -> Int -> Int
add = \x -> (\y -> x + y)

-- substitute 2 in for x.
-- note that this is not Haskell code,
-- it's just to show you what happens:
-- add 2 is equal to \2 -> (\y -> 2 + y)
-- add 2 is equal to        \y -> 2 + y

--Function is really providing add with 1 argument: 2. (add 2) then immediatly providing the funcion
--that gets produced by that with the value 3.        (add 2) 3

