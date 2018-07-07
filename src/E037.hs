module E037 (e37) where

-- The number 3797 has an interesting property. Being prime itself, it is
-- possible to continuously remove digits from left to right, and remain
-- prime at each stage: 3797, 797, 97, and 7. Similarly we can work from
-- right to left: 3797, 379, 37, and 3.
--
-- Find the sum of the only eleven primes that are both truncatable from
-- left to right and right to left.
--
-- NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

import Data.Numbers.Primes (primes, isPrime)
import Data.Digits (digits, unDigits)
import Data.Profunctor (dimap)
import Data.List (nub)

nlen = (+1) . floor . logBase 10 . fromIntegral

asDigits = dimap (digits 10) (unDigits 10)

truncL = asDigits init
truncR = asDigits tail

overLen n m f = take m $ iterate f n

truncations n =
    let m = nlen n
        f = overLen n m
    in  nub $ f truncL ++ f truncR

nonPrime = filter (not . isPrime)

isTruncPrime n = (n > 7) && null (nonPrime $ truncations n)

e37 = sum $ take 11 $ filter isTruncPrime [8..]
