module TestSpec(spec) where

import Test.Hspec
import Lib


spec :: Spec
spec = do
  describe "Lib" $ do
    it "can increase x" $ do
      incNum 2 == 3

    it "can increase x 2" $ do
      incNum 2 /= 2