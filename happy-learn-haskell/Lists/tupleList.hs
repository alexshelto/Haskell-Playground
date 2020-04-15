{-Alexander Shelton
  Shopping List tuple program
  Create a tuple of items and prices
  Calculate the total price that all the items will sum up to
-}


--Creating the pieces to build the list
type Item = String
type PriceCents = Int
type ShoppingItem = (Item, PriceCents)
type ShoppingList = [ShoppingItem]

shoppingList :: ShoppingList
shoppingList = [ ("Motherboard", 400)
                ,("Speakers", 300)
                ,("Keyboard", 200)
                ,("Monitor", 500)
                ]

--Function totalList. Takes the shopping list and returns type PriceCents (int)
--Function calls 'getPriceOfItem()' for each item in list: ShoppingList
totalList :: ShoppingList -> PriceCents
totalList [] = 0                                   --Empty list
totalList (x:xs) = getPriceOfItem x + totalList xs --1 or More



--Function getPriceOfItem, takes ShoppingItem (tuple) returns int
--function is called inside of the function totalList
getPriceOfItem :: ShoppingItem -> PriceCents
getPriceOfItem (_,price) = price  --Throw Away first value. '_'. keep 2nd 




main :: IO ()
main = putStrLn ("The total price of the shopping list is... " ++ show (totalList shoppingList) ++ " Cents")