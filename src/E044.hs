module E044 (e44) where

import Control.Monad (guard)
import Util (isInt)

pentagonals :: Integral a => [a]
pentagonals = [(n * (3*n-1)) `div` 2 | n <- [1..]]

isPentagonal :: Integer -> Bool
isPentagonal n = isInt inverse
    where
        inverse :: Double
        inverse = (sqrt (1 + 24 * fromIntegral n) + 1) / 6

e44 :: Integer
e44 = minimum $ do
        let n = 5000
        j <- take n pentagonals
        k <- takeWhile (<j) (take n pentagonals)
        guard $ isPentagonal (j+k) && isPentagonal (j-k)
        pure $ j-k
