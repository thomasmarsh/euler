module E007 (e7) where

prime :: Int -> Bool
prime n
    | n == 2 || n == 3 = True
    | n `mod` 2 == 0 || n `mod` 3 == 0 = False
    | otherwise = prime' 5 2
    where prime' i w
            | i * i > n = True
            | n `mod` i == 0 = False
            | otherwise = prime' (i+w) (6-w)

f :: Int -> Int
f n = go 0 1 2
    where go i j p
            | i >= n = p
            | prime (j+1) = go (i+1) (j+1) (j+1)
            | otherwise = go i (j+1) p 

e7 :: Integer
e7 = fromIntegral $ f 10001
