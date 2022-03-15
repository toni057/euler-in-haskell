module Prob002 where


sol002 :: Integer -> Integer
sol002 n = fib_ 1 2 0
  where
    fib_ :: Integer -> Integer -> Integer -> Integer
    fib_ x1 x2 total | x2 >= n = total
    fib_ x1 x2 total | (mod x2 2) == 0 = fib_ x2 (x1+x2) (total+x2)
    fib_ x1 x2 total                   = fib_ x2 (x1+x2) total