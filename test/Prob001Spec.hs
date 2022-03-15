module Prob001Spec where

import Test.Hspec
import Prob001

spec :: Spec
spec = do
  describe "Prob001" $ do
    it "has the sum of natural numbers below 10 that are multiples of 3 or 5 of 23" $ do
      sol001 10 == 23

--    it "has the sum of natural numbers below 10 that are multiples of 3 or 5 of 23" $ do
--      sol001 1 == 0

--    it "has the sum of natural numbers below 10 that are multiples of 3 or 5 of 23" $ do
--      sol001 3 == 3
--
--    it "has the sum of natural numbers below 10 that are multiples of 3 or 5 of 23" $ do
--      sol001 6 == 14