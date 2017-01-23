f n = b*b - a
    where
        a = sum [i*i | i <- [1..n]]
        b = sum [1..n]

-- assert(f(10) == 2640)
main = do print $ f 100
