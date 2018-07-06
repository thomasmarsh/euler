module E002 where

fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

f n = sum $ filter even (takeWhile (< n) fibs)

e2 = f 4000000
