import Test.QuickCheck
import Week1.P1Test
import Week1.P2Test

{- 
To Run Tests Either do quckCheck prop_{rest of the test name}
Or run all tests in the moduale below
-}

main :: IO Bool
main = do
    runTestsW1P1
    runTestsW1P2



