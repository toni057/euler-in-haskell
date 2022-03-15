module Prob002Spec where

import Test.Hspec
import Prob002

spec :: Spec
spec = do
  describe "Prob002" $ do
    it "can calculate the sum of event Fibonacci numbers smaller than 100" $ do
      sol002 100 == 44