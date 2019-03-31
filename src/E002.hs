module E002 (e2) where

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

f :: Integer -> Integer
f n = sum $ filter even (takeWhile (< n) fibs)

e2 :: Integer
e2 = f 4000000
