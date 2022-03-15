module Prob005Spec where

import Test.Hspec ( describe, it, Spec )
import Prob005 

spec :: Spec
spec = do
  describe "Prob005" $ do
    it "can calculate palindromes of ints" $ do
      sol005 1 == 1
