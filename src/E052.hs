module E052 (e52) where

import Data.Digits   (digits)
import Data.List     (sort)

e52 :: Integer
e52 = head
    [ x | x <- [1..]
    , let xs = map (sort . digits 10)
                   (map (*) [2..6] <*> [x])
    , all (== head xs) (tail xs) ]
