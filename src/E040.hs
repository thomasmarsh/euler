module E040 (e40) where

import Data.Digits (digits)

cs = concatMap (digits 10) [1..]
is = map (\x -> 10^x - 1) [1..6]

e40 = product $ map (cs!!) is
