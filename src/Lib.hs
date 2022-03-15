module Lib
    ( someFunc, someFunc2, incNum
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


someFunc2 :: IO ()
someFunc2 = putStrLn "someFunc2"


incNum :: Integer -> Integer
incNum x = x + 1


incNumWithIO :: Show b => (a -> b) -> a -> IO ()
incNumWithIO f x = putStrLn $ show $ f(x)
