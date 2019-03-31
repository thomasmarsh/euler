module E003 (e3) where

f :: Integral p => p -> p -> p
f i n
  | i*i <= n = if n `mod` i /= 0 then f (i+1) n else f i (quot n i)
  | otherwise = n

e3 :: Integer
e3 = f 2 600851475143
