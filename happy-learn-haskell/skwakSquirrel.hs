{-
Alexander Shelton
Simple game example from "Learn you a Haskell ch.19
-}


--Defining game object. all objects are either a player or an acorn
data GameObject = Player
                | Acorn
    deriving(eq,show)

--Product type: room
data Room = Room Description [GameObject]
    deriving(show)

type Description = String
type Inventory = [GameObject]
type GameMap = [Room]
type GameState = (GameMap, Inventory)


initialState :: GameState
initialState = 
    ([Room "You are inside of a tree! " [Player]
    , Room "You are outside of a tree! " [Acorn]]
    ,[])


main :: IO()
main = do
    putStrLn "Welcome to Skwak the Squirrel. "
    putStrLn "You are a squirrel"
    
    gameloop initialState