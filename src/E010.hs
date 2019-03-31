module E010 (e10) where

import Data.Numbers.Primes (primes)

e10 :: Integer
e10 = sum . takeWhile (< 2000000) $ primes
