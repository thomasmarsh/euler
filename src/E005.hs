module E005 (e5) where

f :: Integer -> Integer
f n = foldr1 lcm [1..n]

e5 :: Integer
e5 = f 20
