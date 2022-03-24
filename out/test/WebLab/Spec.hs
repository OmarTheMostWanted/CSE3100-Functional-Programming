import Test.QuickCheck
import Week1A.P1Test
import Week1A.P2Test
import Week1A.P3Test
import Week1A.P8Test
import Week1A.P9Test
import Week1A.P10Test
import Week1A.P13Test
import Week1A.P14Test
import Week1B.HopscotchSpec
import Week2A.P3Spec

import Data.Type.Equality (apply)


{-
To Run Tests Either do quckCheck prop_{rest of the test name}
Or run all tests in the moduale below
-}



prop_reversable :: [Int] -> Bool
prop_reversable [a] = (reverse ( reverse [a] )) == [a] -- bad to use a here if the values of a matter cause they will all be ()


main :: IO Bool
main = do
--  runTestsW1P1
--  runTestsW1P2
--  runTestsW1P3
--  runTestsW1P8
--  runTestsW1P9
--  runTestsW1P10
--  runTestsW1P13
--  runTestsW1P14
--  runTestsW1BHopscotch
  runTestsW2AP3




-- main = quickCheck prop_reversable