module E040 (e40) where

import Data.Digits (digits)

cs :: [Integer]
cs = concatMap (digits 10) [1..]

is :: [Int]
is = map (\x -> 10^x - 1) [1..6]

e40 :: Integer
e40 = product $ map (cs!!) is
