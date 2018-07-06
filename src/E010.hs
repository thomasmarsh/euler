module E010 (e10) where

import Data.Numbers.Primes

f n = sum $ takeWhile (< n) primes

e10 = f 2000000
