import Test.QuickCheck
import Week1.P1Test
import Week1.P2Test
import Week1.P3Test
import Week1.P8Test
import Week1.P9Test

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
