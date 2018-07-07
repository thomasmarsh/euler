module E015 (e15) where

ncr :: Integer -> Integer -> Integer
ncr n r
    | q == 0 = 1
    | otherwise = a `div` b
    where
        q = min r (n-r)
        a = product [n,n-1..n-q+1]
        b = product [1..q]

f :: Integer -> Integer
f n = ncr (2*n) n

e15 :: Integer
e15 = f 20
