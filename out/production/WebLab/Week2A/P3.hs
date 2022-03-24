module Week2A.P3 where

import Prelude hiding (reverse)

reverse :: [a] -> [a]
reverse [] = []
--reverse (x:xs) = (flip (:))  (reverse xs) x
reverse (x:xs) = (reverse xs) ++ [x]
