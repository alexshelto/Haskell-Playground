--Alexander Shelton

-- File shows an implementation of typeVars and typeClasses
-- Typeclass is a way of tagging many types so that functions work w dif var types


--Creating a typeclass show:
--will take var of type a, lowercase type is interchangable and turn it to string
--When show is called in another function it will take what ever is passes in (type a) and turn it to a string
--Could use this for Ints, Integers, Floats, Doubles, etc
show :: (Show a) => a -> String


--Creating an float called "number"
number :: Float
number = 23.45


