module E001 (e1) where

import Control.Applicative (liftA2)

multipleOf :: Integral a => a -> a-> Bool
multipleOf n x = x `mod` n == 0

f :: Integer -> Integer
f n = sum
    . filter (liftA2 (||) (multipleOf 3)
                          (multipleOf 5))
    $ [1..n-1]

e1 :: Integer
e1 = f 1000
