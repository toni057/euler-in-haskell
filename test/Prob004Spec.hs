module Prob004Spec where

import Test.Hspec ( describe, it, Spec )
import Prob004

spec :: Spec
spec = do
  describe "Prob004" $ do
    it "can calculate palindromes of ints" $ do
      palin 123 == 321

    it "can detect palindromes" $ do
      isPalin 1001

    it "can detect if not palindrome" $ do
      not (isPalin 123)

    it "can find the largest palindrome made from the product of two 2-digit numbers" $ do
      sol004 99 == 9009
