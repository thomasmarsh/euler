module Util
    ( isInt
    , onDigits
    ) where

import Data.Digits (digits, unDigits)
import Data.Profunctor (Profunctor(..), dimap)

onDigits
    :: (Profunctor p, Integral n, Integral d)
    => p [n] [d]
    -> p n d
onDigits = dimap (digits 10) (unDigits 10)

--Returns if x is an int to n decimal places
isInt :: (RealFrac a) => a -> Bool
isInt x = x == fromInteger (round x)
