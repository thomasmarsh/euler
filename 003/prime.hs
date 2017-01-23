f i n
  | i*i <= n = if n `mod` i /= 0 then (f (i+1) n) else (f i (quot n i))
  | otherwise = n

--assert(f(13195) == 29)
main = do print $ (f 2 600851475143)
