{-# LANGUAGE TemplateHaskell #-}

module Week2A.P3Spec where
    
import Week2A.P3 (reverse)

import Prelude hiding (reverse)
import Test.QuickCheck


prop_reverse_example :: Property 
prop_reverse_example = reverse [1,2,3] === [3,2,1]


return []

runTestsW2AP3 = $quickCheckAll