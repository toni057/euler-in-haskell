module Prob007Spec where

import Test.Hspec ( describe, it, Spec, shouldBe )
import Prob007


spec :: Spec
spec = do
  describe "Prob007" $ do

    it "can calculate the 6th prime" $ do
      shouldBe (sol007 6) 13
