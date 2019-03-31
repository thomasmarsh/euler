module E009 (e9) where

import Control.Monad (guard)

tripletProduct :: Integral a => a -> a
tripletProduct n
    = head $ do
        a <- [1..n `div` 3]
        b <- [a..n `div` 2]
        let c = n-a-b
        guard $ a*a + b*b == c*c
        pure $ a*b*c

e9 :: Integer
e9 = tripletProduct 1000
