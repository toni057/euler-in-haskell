module Prob009 where


sol009 :: Integer -> Integer
sol009 n = head pr
    where
        pr = take 1 [i*j*k | k <- [3..], 
                             i <- [1..k-2], 
                             j <- [i+1..k-1], 
                             i*i + j*j == k*k,
                             i + j + k == n]
