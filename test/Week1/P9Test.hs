{-# LANGUAGE TemplateHaskell #-}

module Week1.P9Test where

import Test.QuickCheck
import Week1.P9

import Prelude hiding (init)

prop_init :: Property
prop_init = init [1,2] === [1]

return []

runTestsW1P9 = $quickCheckAll
