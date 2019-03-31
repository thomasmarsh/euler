module E006 (e6) where

f :: Integer -> Integer
f n = b*b - a
    where
        a = sum [i*i | i <- [1..n]]
        b = sum [1..n]

e6 :: Integer
e6 = f 100
