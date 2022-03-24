{-# LANGUAGE TemplateHaskell #-}

module Week1A.P10Test where

import Test.QuickCheck
import Week1A.P10

prop_safetail :: Property
prop_safetail = safetail [1,2] === [2]


return []

runTestsW1P10 = $quickCheckAll
