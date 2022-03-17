module Prob007 where
import GHC.Num (integerToInt)


sol007 :: Integer -> Integer
sol007 n = last $ take (fromIntegral n) primes

primes :: [Integer]
primes = sieve [2..]

sieve :: Integral a => [a] -> [a]
sieve (x:xs) = x : sieve [y | y <- xs, y `mod` x > 0]
