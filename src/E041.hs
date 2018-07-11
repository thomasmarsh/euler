module E041 (e41) where

import Data.Digits (unDigits)
import Data.List (permutations)
import Data.Numbers.Primes (isPrime)

e41 = fromIntegral $ maximum
    [ n
    | i <- [1..9]
    , p <- permutations [1..i]
    , let n = unDigits 10 p
    , isPrime n ]
