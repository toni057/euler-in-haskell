module Prob009Spec where

import Test.Hspec ( describe, it, Spec, shouldBe )
import Prob009


spec :: Spec
spec = do
    describe "Prob009" $ do
        
        it "can calculate a pythagorean triplet" $ do
            shouldBe (sol009 12) 60
        