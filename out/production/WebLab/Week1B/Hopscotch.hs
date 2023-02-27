module Week1B.Hopscotch where

skips :: [a] -> [[a]]
skips [] = [[]]
skips (x:xs) = [ skip (x:xs) e | e <- [l,l-1..1]] where l = length (x:xs)


skip :: [a] -> Int -> [a]
skip [] n = []
skip (x:xs) n = [ s |  s <- (x:xs) , e <- [1..l] , n `mod` e == 0 ] where l = length (x:xs)

-- >>> skips [1,2,3,4,5,6]
-- [[1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6],[1,1,2,2,3,3,4,4,5,5,6,6],[1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6],[1,1,2,2,3,3,4,4,5,5,6,6],[1,1,2,2,3,3,4,4,5,5,6,6],[1,2,3,4,5,6]