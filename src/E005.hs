module E005 where

f n = foldr1 lcm [1..n]

-- assert(f(10) == 2520)
e5 = f 20
