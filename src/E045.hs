module E045 (e45) where

import Util (isInt)

isPentagonal :: Integer -> Bool
isPentagonal n = isInt inverse
    where
        inverse :: Double
        inverse = (sqrt (1.0 + 24.0 * fromIntegral n) + 1.0) / 6.0

hexagonal :: Integral a => a -> a
hexagonal n = 2 * n * (2*n-1) `div` 2

e45 :: Integer
e45 = head
    . filter isPentagonal
    $ map hexagonal [144..]
