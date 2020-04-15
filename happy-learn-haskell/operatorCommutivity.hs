--Alexander Shelton

--infix operator (+)
--communitivity: (+6)number == (6+)number == (6+) == (+6)


--'normal' syntax
plus6 :: Int -> Int
plus6 number = number + 6


--Infix operator with prefix function
plus6' :: Int -> Int
plus6' number = (+) number 6

--Section, patially applied opperator
plus6'' :: Int -> Int
plus6'' number = (+6) number

--
plus6''' :: Int -> Int
plus6''' = (6+)
