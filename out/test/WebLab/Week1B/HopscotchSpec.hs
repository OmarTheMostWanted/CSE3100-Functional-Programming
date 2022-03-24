{-# LANGUAGE TemplateHaskell #-}

module Week1B.HopscotchSpec where

import Week1B.Hopscotch



import Test.QuickCheck

prop_test_1 :: Property
prop_test_1 = skips [1,2,3,4,5,6] === [[1,2,3,4,5,6],[2,4,6],[3,6],[4],[5],[6]]


prop_test_2 :: Property
prop_test_2 = skips [True,False] === [[True,False],[False]]

return []

runTestsW1BHopscotch = $quickCheckAll
