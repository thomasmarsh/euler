module E001 where

is3or5multiple x
  | x `mod` 3 == 0 = True
  | x `mod` 5 == 0 = True
  | otherwise = False

f n = sum $ filter is3or5multiple [1..n-1]

e1 = f 1000
