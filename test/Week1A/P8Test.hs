{-# LANGUAGE TemplateHaskell #-}

module Week1A.P8Test where

import Test.QuickCheck
import Week1A.P8

prop_halve :: Property
prop_halve = halve [1, 2] === ([1], [2])

return []

runTestsW1P8 = $quickCheckAll
