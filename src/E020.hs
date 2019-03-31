module E020 (e20) where

import Data.Digits (digits)

factorial :: Integral a => a -> a
factorial n
    | n < 0     = 0
    | otherwise = product [1..n]

e20 :: Integer
e20 = sum $ digits 10 $ factorial 100
