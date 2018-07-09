module E026 (e26) where

import Data.Ord (comparing)
import Data.List (maximumBy)

ncycle d
    | null cs = 0
    | otherwise = head cs
    where cs = [ i
               | i <- [1..d-1]
               , 1 == 10^i `mod` d
               ]

f n = snd $ maximumBy (comparing fst) [(ncycle i, i) | i <- [2..n-1]]

e26 = fromIntegral $ f 1000
