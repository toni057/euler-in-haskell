module Prob005 (primeFactors, sol005, comb) where

import Data.IntMap (IntMap)
import qualified Data.IntMap as IntMap


sol005 :: Int -> Int
sol005 n = 1

comb :: [Int] -> [Int] -> [Int]
comb l1 l2 | length l1 > length l2 = l1
comb l1 l2                         = l2


primeFactors :: Int -> [Int]
primeFactors 1 = [1]
primeFactors n = pf n 2
  where
    pf :: Int -> Int -> [Int]
    pf n k | n == 1       = []
    pf n k | k > n        = []
    pf n k | mod n k == 0 = k : pf (div n k) k
    pf n k                = pf n (k+1)
