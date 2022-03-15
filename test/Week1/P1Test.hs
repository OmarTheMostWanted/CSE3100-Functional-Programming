{-# LANGUAGE TemplateHaskell #-}

module Week1.P1Test where

import Week1.P1
import Test.QuickCheck

prop_add_and_double_example :: Property
prop_add_and_double_example = add_and_double 1 1 === 4

prop_add_and_double_test1 :: Property
prop_add_and_double_test1 = add_and_double 0 0 === 0

prop_add_and_double_test2 :: Property
prop_add_and_double_test2 = add_and_double 1 0 === 2

return []
runTestsW1P1 = $quickCheckAll
