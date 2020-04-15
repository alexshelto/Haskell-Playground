--Alexander Shelton



--Defining a function of type 'bool' that returns a function from bool to bool
--maigcBool :: Bool -> (Bool -> Bool)
--magicBool = \_ -> (\_ -> True)

--Same function using just 1 lambda:
magicBool' :: Bool -> (Bool -> Bool)
magicBool' = \_ _ -> True
