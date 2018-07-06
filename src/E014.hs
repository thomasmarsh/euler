module E014 (e14) where

import Data.Array
import Data.List
import Data.Ord (comparing)

syrs n =
    a
    where
    a = listArray (1,n) $ 0 : map syr [2..n]
    syr x =
        if y <= n then 1 + a ! y else 1 + syr y
        where
        y = if even x then x `div` 2 else 3 * x + 1

e14 = fst $ maximumBy (comparing snd) . assocs . syrs $ 1000000
