module E028 (e28) where

f :: Integral a => a -> a
f n | n == 0 = 1
    | otherwise = 4*(2*n+1)^2 - 12*n + f (n-1)

e28 :: Integer
e28 = f 500
