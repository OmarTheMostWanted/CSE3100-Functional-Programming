{-# LANGUAGE TemplateHaskell #-}

module Week1.P10Test where

import Test.QuickCheck
import Week1.P10

prop_safetail :: Property
prop_safetail = safetail [1,2] === [2]


return []

runTestsW1P10 = $quickCheckAll
