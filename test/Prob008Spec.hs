module Prob008Spec where

import Test.Hspec ( describe, it, Spec, shouldBe )
import Prob008


spec :: Spec
spec = do
    describe "Prob008" $ do
        -- it "can roll forward" $ do
        --     let x1 = Ev 18 1 0
        --     let x2 = Ev 126 0 126
        --     shouldBe (rollForward x1 0 7) x2
            
        it "can calculate the greatest product of four adjacent digits in the 1000-digit number" $ do
            shouldBe (sol008 4) 5832