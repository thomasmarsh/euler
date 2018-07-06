module E003 where

f i n
  | i*i <= n = if n `mod` i /= 0 then f (i+1) n else f i (quot n i)
  | otherwise = n

e3 = f 2 600851475143
