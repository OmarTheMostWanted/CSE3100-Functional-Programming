module Week1A.P14 where

--luhnDouble :: Int -> Int
--luhnDouble x = 
--  if x*2 > 9 then x*2 - 9 else x*2 
--
--luhn :: Int -> Int -> Int -> Int -> Bool
--luhn a b c d = ( (luhnDouble c) + b  + (luhnDouble a) ) `mod` 10 == d
--
--luhnFinal :: Int -> Int -> Int -> Int
--luhnFinal a b c = ( (luhnDouble c) + b  + (luhnDouble a) ) `mod` 10


luhnDouble x = if double_x > 9 then double_x - 9 else double_x
  where double_x = 2*x

luhn x y z w = (luhnDouble x + y + luhnDouble z + w) `mod` 10 == 0

luhnFinal x y z = 10 - (luhnDouble x + y + luhnDouble z) `mod` 10