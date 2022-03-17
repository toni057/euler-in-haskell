module Prob005 where

import Data.HashMap.Internal.Strict (HashMap, empty, fromList, toList)

import Data.List (group, sort)
import Control.Arrow ((&&&))
import qualified Control.Applicative as Hashmap
import Data.HashMap.Lazy (unionWith)
import GHC.Real (reduce)


sol005 :: Integer -> Integer
sol005 n = product (mult (f n))


mult :: HashMap Integer Integer -> [Integer]
mult m = map (\(x,y) -> x^y) (toList m)


f :: Integer -> HashMap  Integer Integer
f n = foldl (unionWith max) empty (map (groupByToMap . primeFactors) [1..n])


groupByToMap :: [Integer] -> HashMap Integer Integer
groupByToMap [] = empty
groupByToMap l = fromList ( map (head &&& (toInteger . length)) ( group  (sort l)))


comb :: [Integer] -> [Integer] -> [Integer]
comb l1 l2 | length l1 > length l2 = l1
comb l1 l2                         = l2


primeFactors :: Integer -> [Integer]
primeFactors 1 = [1]
primeFactors n = pf n 2
  where
    pf :: Integer -> Integer -> [Integer]
    pf n k | n == 1       = []
    pf n k | k > n        = []
    pf n k | mod n k == 0 = k : pf (div n k) k
    pf n k                = pf n (k+1)
