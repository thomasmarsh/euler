module E029 (e29) where

import qualified Data.Set as S

f :: Int -> Int
f n = length $ S.fromList
    [ a ^ b
    | a <- [2..n]
    , b <- [2..n] ]

e29 :: Integer
e29 = fromIntegral $ f 100
