{-# LANGUAGE TemplateHaskell #-}

module Week1A.P13Test where

import Test.QuickCheck
import Week1A.P13

prop_quadradic_solutions :: Property
prop_quadradic_solutions = quadratic_solutions 1 0 (-9) === [3, -3]

return []

runTestsW1P13 = $quickCheckAll
