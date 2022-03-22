{-# LANGUAGE TemplateHaskell #-}

module Week1A.P3Test where

import Week1A.P3
import Test.QuickCheck

prop_qsort :: Property
prop_qsort = qsort [1,2] === [2,1]


return []
runTestsW1P3 = $quickCheckAll
