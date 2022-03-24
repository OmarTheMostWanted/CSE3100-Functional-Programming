module Week1A.P13 where

quadratic_solutions :: Double -> Double -> Double -> [Double]

quadratic_solutions a b c = do
  let d = sqrt (b^2 - 4*a*c)
  if d > 0 
  then [(-b + d)/(2*a) , (-b - d)/(2*a)] 
  else if d == 0
       then [-b/2*a]
       else []

quadratic_solutions_1 a b c = 
  if d > 0 
  then [(-b+d)/(2*a), (-b-d)/(2*a)] 
  else if d == 0 
       then [-b/(2*a)] 
       else []
  where
    discr = b^2 - 4*a*c
    d = sqrt discr