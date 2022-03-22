module Prob010Spec where

import Test.Hspec ( describe, it, Spec, shouldBe )
import Prob010


spec :: Spec
spec = do
    describe "Prob010" $ do
        it "can calculate a pythagorean triplet" $ do
            shouldBe (sol010 10) 17
        