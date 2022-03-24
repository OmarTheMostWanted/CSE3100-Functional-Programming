{-# LANGUAGE TemplateHaskell #-}

module Week1A.P14Test where

import Test.QuickCheck
import Week1A.P14

prop_luhnDouble :: Property
prop_luhnDouble = luhnDouble 3 === 6

prop_luhn :: Property
prop_luhn = (luhn 1 7 8 4) === True

prop_luhnFinal :: Property
prop_luhnFinal = (luhnFinal 1 7 8) === 4


return []

runTestsW1P14 = $quickCheckAll
