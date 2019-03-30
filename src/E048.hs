module E048 (e48) where

import Util (onDigits)
import Data.List.Extra (takeEnd)

e48 :: Integer
e48 = onDigits (takeEnd 10)
    . sum
    . map (\x -> x^x)
    $ [1..1000]
