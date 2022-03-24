module Week1A.P3 where

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) =
  qsort smaller ++ [x] ++ qsort larger
    where
      smaller = [ y | y <- xs , y > x ]
      larger  = [ y | y <- xs , y <= x  ]