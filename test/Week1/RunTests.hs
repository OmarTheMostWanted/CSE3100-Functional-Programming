module Week1.RunTests where

import Test.QuickCheck
import Week1.P1Test

{-
To Run Tests Either do quckCheck prop_{rest of the test name}
Or run all tests in the moduale below
-}

main :: IO Bool
main = runTestsW1P1
