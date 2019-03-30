module Util
    ( onDigits
    ) where

import Data.Digits (digits, unDigits)
import Data.Profunctor (Profunctor(..), dimap)

onDigits :: (Profunctor p, Integral n, Integral d) => p [n] [d] -> p n d
onDigits = dimap (digits 10) (unDigits 10)
