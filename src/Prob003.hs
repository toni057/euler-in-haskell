module Prob003 where


sol003 :: Integer -> Integer 
sol003 n = solve n 1 2 
  where
    solve :: Integer -> Integer -> Integer -> Integer
    solve n best k | n <= 1 = best
    solve n best k | mod n k == 0 = solve (div n k) k k
    solve n best k = solve n best (k + 1)
