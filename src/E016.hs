module E016 (e16) where

import Data.Digits (digits)

f :: Integral a => a -> a
f = sum . digits 10 . (2^)

e16 :: Integer
e16 = f 1000
