module Prob003Spec where

import Test.Hspec
import Prob003

spec :: Spec
spec = do
  describe "Prob003" $ do
    it "can calculate the the largest prime factor of the number 13195" $ do
      sol003 13195 == 29