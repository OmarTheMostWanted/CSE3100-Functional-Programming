module Week1.P4 where

bools :: [Bool]
bools = [True,False]

nums :: [[Int]]
nums = [[1]]

add :: Int -> Int -> Int -> Int
add x y z = x+y+z 

copy :: a -> (a,a)
copy x =  (x,x)
