module Prob001 where

sol001 :: Integer -> Integer
sol001 n = sum [i | i <- [1..(n-1)], mod i 3 == 0 || mod i 5 == 0]
