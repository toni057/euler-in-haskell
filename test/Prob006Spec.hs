module Prob006Spec where

import Test.Hspec ( describe, it, Spec, shouldBe )
import Prob006


spec :: Spec
spec = do
  describe "Prob006" $ do

    it "can calculate sum of squares of first 10 natural numbers" $ do
      shouldBe (sumSquares 10) 385

    it "can calculate the square of sum of first 10 natural numbers" $ do
      shouldBe (squareSum 10) 3025

    it "can calculate the difference between the sum of the squares of the first ten natural numbers and the square of the sum" $ do
      shouldBe (sol006 10) 2640

