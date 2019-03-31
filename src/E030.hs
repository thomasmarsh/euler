module E030 (e30) where

p :: Int -> Bool
p n | n < 10 = False
    | otherwise = go 0 n
    where
        go s m | m > 0 = go (s + (b ^ 5)) a
               | otherwise = n == s
            where (a, b) = m `divMod` 10

e30 :: Integer
e30 = fromIntegral $ sum $ filter p [10..199999]
