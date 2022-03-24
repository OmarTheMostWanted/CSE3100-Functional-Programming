{-# LANGUAGE TemplateHaskell #-}

module Week1A.P1Test where

import Test.QuickCheck
import Week1A.P1 ( add_and_double )

prop_add_and_double_example :: Property
prop_add_and_double_example = add_and_double 1 1 === 4

prop_add_and_double_test1 :: Property
prop_add_and_double_test1 = add_and_double 0 0 === 0

prop_add_and_double_test2 :: Property
prop_add_and_double_test2 = add_and_double 1 0 === 2

return []

runTestsW1P1 = $quickCheckAll
