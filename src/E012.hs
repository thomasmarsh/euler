module E012 (e12) where

import Data.List (group)
import Data.Numbers.Primes (primeFactors)

tri :: [Integer]
tri = scanl1 (+) [1..]

nDivisors :: Integer -> Int
nDivisors
    = product
    . map ((1 +) . length)
    . group
    . primeFactors

e12 :: Integer
e12 = head
    . filter ((> 500) . nDivisors)
    $ tri
