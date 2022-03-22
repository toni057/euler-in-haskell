module Prob010 where


sol010 :: Integer -> Integer
sol010 n = sum $ takeWhile (<= n) sieve


sieve = 2:([3..] `minus` composites)
    where
        composites = union_ [multiples p | p <- sieve]

multiples n = map (n*) [n..]

(x:xs) `minus` (y:ys) | x < y = x:(xs `minus` (y:ys))
                      | x == y = xs `minus` ys
                      | x > y = (x:xs) `minus` ys

union_ = foldr merge [ ]
    where
        merge (x:xs) ys = x:merge' xs ys
        merge' (x:xs) (y:ys) | x < y = x:merge' xs (y:ys)
                             | x == y = x:merge' xs ys
                             | x > y = y:merge' (x:xs) ys
