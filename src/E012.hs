module E012 (e12) where

import Data.List (group)
import Data.Numbers.Primes (primeFactors)

tri = scanl1 (+) [1..]
nDivisors = product . map ((1 +) . length) . group . primeFactors

e12 = head $ filter ((> 500) . nDivisors) tri
