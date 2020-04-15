--Magic coin is the problem of having coins labeled as true or false
--The goal is to reassign the value from false to true 


--Magic coin function type turns a boolean into a boolean
--Takes inputted boolean and reassigns it to True
magicCoin :: Bool -> Bool
magicCoin = \_ -> True


--Function 'newCoin' is of type bool.
--Function calls magic coin with input False. 
--New coin calls magicCoin(False)
newCoin :: Bool
newCoin = magicCoin False


--Function 'newCoinAgain' is of type bool
--Function calls magicCoin with input of newCoin with input false
--Function: magicCoin(newCoin(False)) || magicCoin(False)
newCoinAgain :: Bool
newCoinAgain = magicCoin newCoin



