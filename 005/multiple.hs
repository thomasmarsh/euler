f n = foldr1 lcm [1..n]

-- assert(f(10) == 2520)
main = do print $ f 20
