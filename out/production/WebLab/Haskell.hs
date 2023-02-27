--import Data.Text.Lazy.Read (double)
--- Haskell basics ---

-- First steps
addAndDouble :: Num a => a -> a -> a
addAndDouble x y = z * 2 where z = x + y
-- >>> addAndDouble 1 1
-- 4


--Fix the syntax
n = a `div` length xs
    where 
        a = 10
        xs = [1,2,3,4,5]
-- >>> n * 1
-- 2

-- Any definition will do
bools :: [Bool]
bools = [True, False]

add :: Int -> Int -> Int -> Int
add a b c  = a + b + c

copy :: a -> (a,a)
copy a = (a,a) 

choose :: Bool -> a -> a -> a
choose t a b = if t then a else b

--  Reverse quicksort
qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) =
  qsort larger ++ [x] ++ qsort smaller
    where
      smaller = [ y | y <- xs , y <= x ]
      larger  = [ y | y <- xs , y > x  ]

-- >>> qsort [2, 6 , 2 , 0 ,5]

-- Quadratic equations
solveQuadratic :: Double -> Double -> Double -> [Double]
solveQuadratic a b c = let delta = b^2 - 4*a*c in
    if delta > 0 then [ (-b + sqrt delta)/(2*a) , (-b - sqrt delta)/(2*a) ] else if delta == 0 then [-b/(2*a)] else []

-- Luhn Algorithm
luhnDouble :: Int -> Int
luhnDouble a = if double > 9 then double - 9 else double
    where
        double = 2*a

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = ((luhnDouble a) + b + (luhnDouble c)  + d) `mod` 10 == 0

luhnFinal :: Int -> Int -> Int -> Int
luhnFinal a b c = 10 - ((luhnDouble a) + b + (luhnDouble c)) `mod` 10

-- >>> luhn 1 7 8 4
-- >>> luhn 4 7 8 3
-- >>> luhnFinal 1 7 8
-- >>> luhnFinal 4 7 8
-- True
-- False
-- 4
-- 8




--- Working with lists ---

-- Half the list it used to be
halve :: [a] -> ([a], [a])
halve xs = (take (length xs `div` 2) xs , drop (length xs `div` 2) xs)
--halve xs = splitAt (length xs `div` 2) xs


-- >>> halve [1,2,3,4,5,6]
-- [2,3,4,5,6]

-- -- Initial fragment
-- init' :: [a] -> [a]
-- init' [] = []   
-- init' [x] = []
-- init' (x:xs) = x : init' xs


-- Tail, but safer
-- safeTail :: [a] -> [a]
-- safeTail [] = []
-- safeTail [x] = []
-- safeTail (x:xs) =  xs

-- >>> safeTail [1,2,3,4,5,6]
-- Variable not in scope: safeTail :: [a0_aqyR[tau:1]] -> t_aqyP[sk:1]


-- Counting down fast
countDownBy5 :: Int -> [Int]
countDownBy5 x = if x >= 5 then x : countDownBy5 (x - 5) else [x]

-- >>> countDownBy5 12
-- [12,7,2]

-- Removal
-- remove :: Int -> [a] -> [a]
-- remove n []  = []
-- remove 0 [x] = []
-- remove 0 (x:xs) = xs
-- remove n (x:xs) = x : remove (n-1) xs


-- >>> remove 1 [1,2,3,4]


-- Triplets
-- triplets :: [a] -> [(a,a,a)]
-- triplets [] = []
-- triplets [x] = []
-- triplets [x,y] = []
-- triplets (x:y:z:xs) = (x , y , z) : (triplets (y:z:xs))

-- >>> triplets [1,2,7,4,5]
-- [(1,2,7)]



--- List comprehensions ---
    