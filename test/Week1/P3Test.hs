{-# LANGUAGE TemplateHaskell #-}

module Week1.P3Test where

import Week1.P3
import Test.QuickCheck

prop_qsort :: Property
prop_qsort = qsort [1,2] === [2,1]


return []
runTestsW1P3 = $quickCheckAll
