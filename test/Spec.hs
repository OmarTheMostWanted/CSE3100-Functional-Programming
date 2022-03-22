import Test.QuickCheck
import Week1.P1Test
import Week1.P2Test
import Week1.P3Test
import Week1.P8Test
import Week1.P9Test
import Week1.P10Test
import Week1.P13Test
import Week1.P14Test
import Data.Type.Equality (apply)


{-
To Run Tests Either do quckCheck prop_{rest of the test name}
Or run all tests in the moduale below
-}

main :: IO Bool
main = do
  runTestsW1P1
  runTestsW1P2
  runTestsW1P3
  runTestsW1P8
  runTestsW1P9
  runTestsW1P10
  runTestsW1P13
  runTestsW1P14


isort :: [Int] -> [Int]
isort [] = []
isort (x:xs) = insert x (isort xs)
  where
    insert :: Int -> [Int] -> [Int]
    insert x [] = [x]
    insert x (y:ys)
      | x <= y = x:y:ys
      | otherwise = y: insert x ys

-- >>> isort [2,2,1]
-- [1,2,2]

twice :: Num a => (a -> a) -> a -> a
twice f x = f (f x)

-- >>> twice (*2) 3
-- 12

-- >>> :t map
-- map :: (a -> b) -> [a] -> [b]
--

add :: Num a => a -> a -> a
add x y = x + y

add' :: Num a => a -> a -> a
add' x = \y -> x + y

add'' :: Integer -> Integer -> Integer
add'' = \x -> (\y -> x + y)

add''' :: Integer -> Integer -> Integer
add''' = \x y -> x + y

-- >>> :t const


-- >>> let f x = x*2+1 in map f [1..5]
-- [3,5,7,9,11]

-- >>> map (\x -> x*2+1) [1..5]
-- [3,5,7,9,11]

-- >>> let p x = x `mod` 3 == 0 in filter p [1..10]
-- [3,6,9]

-- >>> filter (\x -> x `mod` 3 == 0) [1..10]
-- [3,6,9]


-- (+1) == (\x -> x+1)

-- >>> :t all
-- all :: Foldable t => (a -> Bool) -> t a -> Bool

-- >>> let p x = x `mod` 2 == 0 in all p [2,4..10]
-- True

-- >>> let p x = x `mod` 2 == 0 in any p [1,3..10]
-- False

-- >>> let p x = x < 5 in takeWhile p [1..10]
-- [1,2,3,4]

-- >>> let p x = x < 5 in dropWhile p [1..10]
-- [5,6,7,8,9,10]


-- >>> :t curry 
-- curry :: ((a, b) -> c) -> a -> b -> c


carryed :: Int -> Int -> Int
carryed x y = x + y

-- >>> :t carryed
-- >>> :t (uncurry carryed)
-- >>> :t curry (uncurry carryed)
-- carryed :: Int -> Int -> Int
-- (uncurry carryed) :: (Int, Int) -> Int
-- curry (uncurry carryed) :: Int -> Int -> Int

nocarry :: (Int , Int) -> Int
nocarry (x , y) = x+y

-- >>> :t nocarry
-- >>> :t curry nocarry
-- >>> :t uncurry (curry nocarry ) 
-- nocarry :: (Int, Int) -> Int
-- curry nocarry :: Int -> Int -> Int
-- uncurry (curry nocarry ) :: (Int, Int) -> Int

fliped :: a -> b -> (a, b)
fliped x y = (x , y)

-- >>> :t flip fliped
-- flip fliped :: b -> a -> (a, b)


-- the (.) funtion applies the right side first
-- >>> :t (.)
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- >>> :t map (*2) . filter (< 10)
-- map (*2) . filter (< 10) :: (Num b, Ord b) => [b] -> [b]


-- >>> (map (*2) . filter (< 10)) [3,6,9,12,15]
-- [6,12,18]


-- >>> :t ($)
-- >>> ($) (+1) 2
-- ($) :: (a -> b) -> a -> b
-- 3

applyFuns :: [a -> b] -> [a] -> [b]
applyFuns [] [] = []
applyFuns (f:fs) (x:xs) =  ($) f x : applyFuns fs xs
applyFuns [] _ = error "length mismatch"
applyFuns _ [] = error "length mismatch"

-- >>> applyFuns [(+1), (+2) , (+3)] [1 , 1 , 1] 
-- [2,3,4]

applyFuns' :: [a -> b] -> [a] -> [b]
applyFuns' fs xs = [f x | f <- fs , x <- xs]
-- >>> applyFuns' [(+1), (+2) , (+3)] [1 , 1 , 1] 
-- [2,2,2,3,3,3,4,4,4]


intersect :: Eq a => [a] -> [a] -> [a]
intersect [] [] = []
intersect as bs = [ a |  a <- as , b <- bs , a == b ]

-- >>> intersect [1 , 2 ,3] [2 , 3, 4 , 1]
-- [1,2,3]
