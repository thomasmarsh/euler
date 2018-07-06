module E006 (e6) where

f n = b*b - a
    where
        a = sum [i*i | i <- [1..n]]
        b = sum [1..n]

-- assert(f(10) == 2640)
e6 = f 100
