module Prob006 where


sol006 :: Integer -> Integer
sol006 n = squareSum n - sumSquares n

sumSquares :: Integer -> Integer
sumSquares n = sum $ map (\x -> x * x) [1..n]

squareSum :: Integer -> Integer
squareSum n = let sq = sum [1..n]
    in sq * sq
