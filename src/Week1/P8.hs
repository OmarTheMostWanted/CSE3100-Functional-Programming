module Week1.P8 where

halve :: [a] -> ([a], [a])
halve [] = ([], [])
halve [x] = ([x], [])
-- halve xs = (take h xs, drop h xs)
--   where
--     h = length xs `div` 2

halve xs = splitAt h xs
  where
    h = length xs `div` 2
