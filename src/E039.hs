module E039 (e39) where

import Data.List (maximumBy)
import Data.Ord (comparing)

isRight :: Integral a => a -> a -> a -> Bool
isRight a b c = a*a + b*b == c*c

search :: Integral a => a -> Int
search p = length
    [ ()
    | a <- [1..p `div` 3]
    , b <- [a..p `div` 2]
    , isRight a b (p-(a+b))]

f :: Integral a => a -> a
f n = fst $ maximumBy (comparing snd) $ map (\x -> (x, search x)) [3..n]

e39 :: Integer
e39 = f 1000
