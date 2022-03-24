module Week2A.P3 where

import Prelude hiding (power)

power :: Integer -> Integer -> Integer
power n 0  = 1
power n k 
          | even k = power (n*n) (k `div` 2)
          | otherwise = n * power n (k-1)





-- >>> power 2 2
-- 4

