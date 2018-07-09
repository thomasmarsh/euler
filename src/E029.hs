module E029 (e29) where

import qualified Data.Set as S

f n = length $ S.fromList
    [ a ^ b
    | a <- [2..100]
    , b <- [2..100] ]

e29 = fromIntegral $ f 100
