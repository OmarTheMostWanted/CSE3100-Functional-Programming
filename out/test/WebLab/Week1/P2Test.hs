{-# LANGUAGE TemplateHaskell #-}

module Week1.P2Test where

import Week1.P2
import Test.QuickCheck

prop_n :: Property
prop_n = n === 2


return []
runTestsW1P2 = $quickCheckAll
