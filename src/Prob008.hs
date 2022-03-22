{-# LANGUAGE ScopedTypeVariables #-}
module Prob008 where


import Data.Vector as V
import Data.Char(digitToInt)


data Ev = Ev
    { nonZeroSum    :: Integer,
      numZeros      :: Int,
      maxSoFar      :: Integer }

instance Eq Ev where
    (==) (Ev x1 y1 z1) (Ev x2 y2 z2) = x1 == x2 && y1 == y2 && z1 == z2

instance Show Ev where
    show (Ev x y z) = show [x, toInteger y, z]

sol008 :: Integer -> Integer
sol008 n_ = x
    where
        n :: Int = fromInteger n_
        sl :: V.Vector Integer = V.slice 0 n s
        initialNonZeroSum :: Integer = V.product $ V.filter (/= 0) sl
        initialNumZeros :: Int = V.length $ V.filter (== 0) sl
        initialMaxSoFar :: Integer = V.product sl
        initEv :: Ev = Ev initialNonZeroSum initialNumZeros initialMaxSoFar

        x = extractMax $ Prelude.foldl (\ev i -> rollForward ev (s ! (i-n)) (s ! i)) initEv [n..(V.length s - 1)]
            where
                extractMax :: Ev -> Integer
                extractMax (Ev nonZeroSum numZeros maxSoFar) = maxSoFar


rollForward :: Ev -> Integer -> Integer -> Ev
rollForward (Ev nonZeroSum numZeros maxSoFar) 0 0 = Ev nonZeroSum numZeros maxSoFar
rollForward (Ev nonZeroSum numZeros maxSoFar) x 0 = Ev newNonZeroSum (numZeros + 1) maxSoFar
    where
        newNonZeroSum = div nonZeroSum x
rollForward (Ev nonZeroSum numZeros maxSoFar) 0 y = Ev newNonZeroSum newZeros newMaxSoFar
    where
        newNonZeroSum = nonZeroSum * y
        newZeros = numZeros - 1
        newMaxSoFar = if newZeros == 0 then max maxSoFar newNonZeroSum else maxSoFar
rollForward (Ev nonZeroSum numZeros maxSoFar) x y = Ev newNonZeroSum numZeros newMaxSoFar
    where
        newNonZeroSum = div nonZeroSum x * y
        newMaxSoFar = if numZeros == 0 then max maxSoFar newNonZeroSum else maxSoFar


s :: V.Vector Integer
s = V.map (toInteger . digitToInt) $ fromList "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"


-- sol008 :: Integer -> Integer
-- sol008 n_ = toInteger $ Prelude.maximum prods
--     where
--         n :: Int = fromInteger n_
--         charSlices :: [V.Vector Char] = Prelude.map (\i -> V.slice i n s) [0..(V.length s - n)]
--         intSlices :: [V.Vector Int] = Prelude.map (V.map digitToInt) charSlices
--         prods :: [Int] = Prelude.map V.product intSlices


-- s :: V.Vector Char
-- s = V.fromList "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"