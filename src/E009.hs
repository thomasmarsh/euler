module E009 (e9) where

isInt x = x == fromInteger (round x)

triplets :: Int -> [[Int]]
triplets n = [[a,b,c] | a <- [0..(n-1)],
                        b <- [a+1..n],
                        let x = sqrt $ fromIntegral (a*a+b*b),
                        let c = truncate x,
                        let a' = fromIntegral a,
                        let b' = fromIntegral b,
                        a'+b'+x == fromIntegral n,
                        x > b']

f n = product . head $ triplets n

e9 = fromIntegral $ f 1000
