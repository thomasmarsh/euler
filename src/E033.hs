module E033 (e33) where

import Data.Bifunctor (bimap)

e33 = dp `div` gcd np dp
    where
        (np, dp) = bimap product product $ unzip xs
        xs = [ (n, d)
             | c <- [1..9]
             , d <- [1..c-1]
             , n <- [1..d-1]
             , (n*10+c)*d == (c*10+d)*n ]
