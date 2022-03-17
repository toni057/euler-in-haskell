module Prob005Spec where


import Test.Hspec ( describe, it, Spec, shouldBe )
import Prob005
import Control.Applicative (Alternative)
import Data.HashMap.Lazy (empty, fromList)

spec :: Spec
spec = do
  describe "Prob005" $ do

    it "can calculate prime factors of 1" $ do
      shouldBe (primeFactors 1) [1]

    it "can calculate prime factors of 5" $ do
      shouldBe (primeFactors 5) [5]

    it "can calculate prime factors of 10" $ do
      shouldBe (primeFactors 10) [2,5]

    it "can calculate prime factors of 8" $ do
      shouldBe (primeFactors 8) [2,2,2]

    it "can combine lists of different lengths" $ do
      shouldBe (comb [1] [1, 1]) [1, 1]

    it "can combine lists of same lengths" $ do
      shouldBe (comb [1, 1] [1, 1]) [1, 1]

    it "can combine list with empty list" $ do
      shouldBe (comb [] [1, 1]) [1, 1]
    
    it "can combine two empty lists" $ do
      shouldBe (comb [] []) []

    it "can groupby" $ do
      shouldBe (groupByToMap [1,1,2,3,3,1,2]) $ fromList [(1,3), (2,2), (3,2)]

    it "can convert an int to hashmap" $ do 
      shouldBe (f 5) (fromList [(1,1),(2,1),(3,1),(2,2),(5,1)])

    it "can lift map to powers" $ do
      shouldBe (mult (fromList [(2,2), (3,3)])) [4,27]

    it "can calculate the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder" $ do
      shouldBe (sol005 10) 2520

