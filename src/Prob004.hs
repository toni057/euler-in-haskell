module Prob004 where


sol004 :: Integer -> Integer
sol004 upper = 
  let palindromes = filter isPalin ([i * j | i <- [1..upper], j <- [1..upper]]) in
    maximum palindromes

isPalin :: Integer -> Bool 
isPalin n = n == palin n

palin :: Integer -> Integer 
palin n = palin_ n 0
  where
    palin_ :: Integer -> Integer -> Integer 
    palin_ x y | x == 0    = y
               | otherwise = palin_ (div x 10) (y*10 + mod x 10)
